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

RFC_PATH="$BASE_PATH"
APPOINTMENT_PATH="$BASE_PATH""Appointment/"
XSD_PATH="$BASE_PATH""xsd/STU2/fhir-all-xsd/"

# for STU3 profiles
XSD3_PATH="$BASE_PATH""xsd/STU3/fhir-all-xsd/"


# declare an associative array with mappings from xml to corresponding xsd file

declare -A xmap

xmap["$RFC_PATH""ODA-appointment.profile.xml"]="$XSD_PATH""appointment.xsd"
xmap["$RFC_PATH""ODA-careplan.profile.xml"]="$XSD_PATH""careplan.xsd"
xmap["$RFC_PATH""ODA-communication.profile.xml"]="$XSD_PATH""communication.xsd"
xmap["$RFC_PATH""ODA-device.profile.xml"]="$XSD_PATH""device.xsd"
xmap["$RFC_PATH""ODA-finnishpatient-patient.profile.xml"]="$XSD_PATH""patient.xsd"
xmap["$RFC_PATH""ODA-person.profile.xml"]="$XSD_PATH""person.xsd"
xmap["$RFC_PATH""ODA-temperature-observation.profile.xml"]="$XSD3_PATH""observation.xsd"


xmap["$APPOINTMENT_PATH""ODAAppointment.xml"]="$XSD_PATH""appointment.xsd"
xmap["$APPOINTMENT_PATH""ODAHealthcareService.xml"]="$XSD_PATH""healthcareservice.xsd"
xmap["$APPOINTMENT_PATH""ODAOrganization.xml"]="$XSD_PATH""organization.xsd"
xmap["$APPOINTMENT_PATH""ODAPatient.xml"]="$XSD_PATH""patient.xsd"
xmap["$APPOINTMENT_PATH""ODAPractitioner.xml"]="$XSD_PATH""practitioner.xsd"

RETVAL=0
for key in ${!xmap[@]}
do 
  xmllint --noout --schema "${xmap[$key]}" "$key" > /dev/null 2>&1 # STDIN to STDOUT
  OP=$?
  if [ $OP -ne 0 ] # did not pass validation
  then
    echo "${xmap[$key]}"" did not pass validation"
    RETVAL=1
  fi
done

exit $RETVAL
