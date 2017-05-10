#!/bin/bash
# -*- coding: utf-8 -*-

set -eu

unset EXCLUDE
unset HELP
unset INPUT
unset VALIDATOR

EXCLUDE_B=false
HELP_B=false
INPUT_B=false
VALIDATOR_B=false
JSONEXISTS=false

unset jmap
declare -A jmap
RETVAL=0



jsonexistsfunction(){
    command -v json >/dev/null 2>&1 || { echo >&2 "Json-spec needs to be installed for this script to work. Please get it here: https://json-spec.readthedocs.io/installation.html."; return 1; }
}

helpfunction(){
    HELPTEXT="Usage: -i <input file> -v <validation server>\n
Parameters:\n
    -i|--input\n
                Input file containing names of resource files and\n
                names of their types.\n
    -v|--validator\n
                Url for the validation server. Requires the address\n
                to be the complete url.\n
Options:\n
    -e|--exclude\n
                A file which contains names of the resource files\n
                to be excluded in the validation.\n
    -h|--help\n
                Usage instructions for this program."

    echo -e $HELPTEXT
}

validationfunction(){
    if [[ $1 =~ ^"http"[s]{0,1}"://" ]]; then
        echo "validatefile: " $1
        echo "validator: " $2

        for key in ${!jmap[@]}
        do
            json validate --document-file="$key" --schema-file="${jmap[$key]}"
        done

    else
        RETVAL=1
        echo "Please enter valid url with full address to validator."
    fi
}

filereadingfunction(){
    IFS=$'\n' read -d '' -r -a CONTENTS < $1
    unset IFS
    unset delimitercount

    for i in "${CONTENTS[@]}"
    do
        delimitercount=$(grep -o ":" <<< "$i" | wc -l)
        echo $delimitercount
        if [[ $delimitercount -ne 1 ]]; then
            RETVAL=1
            echo "Invalid formatting in file, please check."
            return 1
        else
            # works
            arr=($(echo "$i" | sed 's/:/ /g'))
            jmap["${arr[0]}"]="${arr[1]}"
            
            # no work
    #        arr=$(echo $i | tr ":" "\n")  # no work
    #        jmap["${arr[0]}"]="${arr[1]}"
        fi

# works
#        a=$(awk -F: '{print $1}' <<< "$i")
#        b=$(awk -F: '{print $2}' <<< "$i")
#        jmap["$a"]="$b"

# works
#        a="$(cut -d':' -f1 <<< "$i")"
#        b="$(cut -d':' -f2 <<< "$i")"
#        jmap[$a]=$b

# works
#        a=($(awk '{split($i,a,":"); print a[0]; print a[1]}' <<< "$i"))
#        b=($(awk '{split($i,a,":"); print a[0]; print a[1]}' <<< "$i"))
#        jmap["$a"]="$b"       # example[1] 0

# works
#        IFS=':' read -r -a arr <<< "$i"
#        jmap["${arr[0]}"]="${arr[1]}"

        unset IFS
    done
}

excludefunction(){
#    filereadingfunction $1
    IFS=$'\n' read -d '' -r -a EXCLUDECONTENTS < $1
    for key in ${!jmap[@]}
    do
      if [ $(contains $EXCLUDECONTENTS "$key") == "y" ]; then
        unset $jmap[$key]
      fi
    done
}

function contains() {
    local n=$#
    local value=${!n}
    for ((i=1;i < $#;i++)) {
        if [ "${!i}" == "${value}" ]; then
            echo "y"
            return 0
        fi
    }
    echo "n"
    return 1
}


jsonexistsfunction

while [[ $# -gt 0 ]]
do
  key="$1"

  case $key in
    -i|--input)
    INPUT=$2
    INPUT_B=true
    shift
    ;;
    -v|--validator)
    VALIDATOR=$2
    VALIDATOR_B=true
    shift
    ;;
    -e|--exclude)
    EXCLUDE=$2
    EXCLUDE_B=true
    echo "exclude"
    shift
    ;;
    *) # handles also help switches -h|--help)
    HELP=true
    ;;
  esac
  shift
done

if [[ $HELP = true ]]; then
  helpfunction
  return 1
  echo "1"
fi

if [[ $INPUT && $VALIDATOR ]]; then
  filereadingfunction $INPUT  # read into global jmap variable
  validationfunction $VALIDATOR
  return 1
  echo "2"
fi

if [[ ( !(-z $INPUT) && -z $VALIDATOR ) || ( -z $INPUT && !(-z $VALIDATOR) ) ]]; then
  echo "3"
  helpfunction
fi

if $EXCLUDE_B; then
  if ( !($INPUT_B) || !( $VALIDATOR_B) ); then
    echo "4"
    helpfunction
  else
    echo "5"
    filereadingfunction $INPUT     # read into global jmap variable
    excludefunction $EXCLUDE       # remove resources from jmap variable
    validationfunction $VALIDATOR  # perform validation
  fi
fi
