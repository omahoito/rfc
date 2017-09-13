#!/usr/bin/env bash

# reset the dictionary before adding new elements
unset xmap

# paths to the folders. need absolute paths for xsd referencing to work

# Resolve local base dir
if [[ -z "$TRAVIS_BUILD_DIR" ]]; then
  if $(which realpath > /dev/null 2>&1); then
    SCRIPT_SELF=$(realpath "$0")
    TRAVIS_BUILD_DIR=$(dirname "$SCRIPT_SELF")
  else
    # replace this with your own path if run locally
    # and realpath command is not available
    TRAVIS_BUILD_DIR=.
  fi
fi

# TRAVIS_BUILD_DIR has no trailing slash, so adding a /
BASE_PATH="$TRAVIS_BUILD_DIR""/"

#RFC_PATH="$BASE_PATH"
RFC_PATH="./"

APPOINTMENT_PATH="$BASE_PATH""Appointment/"
XSD_PATH="$BASE_PATH""xsd/STU2/fhir-all-xsd/"

# for STU3 profiles
XSD3_PATH="$BASE_PATH""xsd/STU3/fhir-all-xsd/"


# declare an associative array with mappings from xml to corresponding xsd file

declare -A xmap


xmap["$RFC_PATH""ODA-ActivityDefinition.profile.xml"]="$XSD3_PATH""activitydefinition.xsd"
xmap["$RFC_PATH""ODA-CarePlan.profile.xml"]="$XSD3_PATH""careplan.xsd"
xmap["$RFC_PATH""ODA-CareTeam.profile.xml"]="$XSD3_PATH""careteam.xsd"
xmap["$RFC_PATH""ODA-Communication.profile.xml"]="$XSD3_PATH""communication.xsd"
xmap["$RFC_PATH""ODA-EpisodeOfCare.profile.xml"]="$XSD3_PATH""episodeofcare.xsd"
xmap["$RFC_PATH""ODA-Goal.profile.xml"]="$XSD3_PATH""goal.xsd"
xmap["$RFC_PATH""ODA-MedicationStatement.profile.xml"]="$XSD3_PATH""medicationstatement.xsd"
xmap["$RFC_PATH""ODA-Observation.profile.xml"]="$XSD3_PATH""observation.xsd"
xmap["$RFC_PATH""ODA-Organization.profile.xml"]="$XSD3_PATH""organization.xsd"
xmap["$RFC_PATH""ODA-Person.profile.xml"]="$XSD3_PATH""person.xsd"
xmap["$RFC_PATH""ODA-Practitioner.profile.xml"]="$XSD3_PATH""practitioner.xsd"
xmap["$RFC_PATH""ODA-Questionnaire.profile.xml"]="$XSD3_PATH""questionnaire.xsd"
xmap["$RFC_PATH""ODA-QuestionnaireResponse.profile.xml"]="$XSD3_PATH""questionnaireresponse.xsd"


xmap["$APPOINTMENT_PATH""ODA-Appointment.profile.xml"]="$XSD3_PATH""appointment.xsd"
xmap["$APPOINTMENT_PATH""ODA-HealthcareService.profile.xml"]="$XSD3_PATH""healthcareservice.xsd"
xmap["$APPOINTMENT_PATH""ODA-Organization.profile.xml"]="$XSD3_PATH""organization.xsd"
xmap["$APPOINTMENT_PATH""ODA-Patient.profile.xml"]="$XSD3_PATH""patient.xsd"
xmap["$APPOINTMENT_PATH""ODA-Practitioner.profile.xml"]="$XSD3_PATH""practitioner.xsd"

RETVAL=0
for key in ${!xmap[@]}
do
  xmllint --noout --schema "${xmap[$key]}" "$key" > /dev/null 2>&1 # STDIN to STDOUT
  OP=$?
  if [ $OP -ne 0 ] # did not pass validation
  then
    echo "$key"" ""${xmap[$key]}"" did not pass validation"
    RETVAL=1
  fi
done

exit $RETVAL
