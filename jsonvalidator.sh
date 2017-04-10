#!/bin/bash

# validation of FHIR resource with JSON Spec: https://json-spec.readthedocs.io/

unset jmap

declare -A jmap

JSD_PATH="json_schemas/"
APPOINTMENT_PATH="Appointment/"

jmap["ODA-activitydefinition.example.json"]="$JSD_PATH""fhir.schema.json"
jmap["ODA-appointment.example.json"]="$JSD_PATH""fhir.schema.json"
jmap["ODA-careplan.example.json"]="$JSD_PATH""fhir.schema.json"
jmap["ODA-careteam.example.json"]="$JSD_PATH""fhir.schema.json"
jmap["ODA-communication.example.json"]="$JSD_PATH""fhir.schema.json"
jmap["ODA-consent.example.json"]="$JSD_PATH""fhir.schema.json"
jmap["ODA-device.example.json"]="$JSD_PATH""fhir.schema.json"
jmap["ODA-finnishpatient-patient.example.json"]="$JSD_PATH""fhir.schema.json"
jmap["ODA-medicationstatement.example.json"]="$JSD_PATH""fhir.schema.json"
jmap["ODA-person.example.json"]="$JSD_PATH""fhir.schema.json"
jmap["ODA-practitioner.example.json"]="$JSD_PATH""fhir.schema.json"
jmap["ODA-questionnaire.example.json"]="$JSD_PATH""fhir.schema.json"
jmap["ODA-questionnaireresponse.example.json"]="$JSD_PATH""fhir.schema.json"
jmap["ODA-temperature-observation.example.json"]="$JSD_PATH""fhir.schema.json"
jmap["ODA-temperature-quantity.example.json"]="$JSD_PATH""fhir.schema.json"

jmap["$APPOINTMENT_PATH""ODAAppointment-example.json"]="$JSD_PATH""fhir.schema.json"
jmap["$APPOINTMENT_PATH""ODAHealthcareService-example.json"]="$JSD_PATH""fhir.schema.json"
jmap["$APPOINTMENT_PATH""ODAOrganization-example.json"]="$JSD_PATH""fhir.schema.json"
jmap["$APPOINTMENT_PATH""ODAPatient-example.json"]="$JSD_PATH""fhir.schema.json"
jmap["$APPOINTMENT_PATH""ODAPractitioner-example.json"]="$JSD_PATH""fhir.schema.json"

RETVAL=0
for key in ${!jmap[@]}
do
#  echo $key
  json validate --schema-file="${jmap[$key]}" --document-file="$key"
  OP=$?
  if [ $OP -ne 0 ]
  then
    echo "$key"" did not pass validation"
    RETVAL=1
  fi
done
