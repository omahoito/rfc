#!/bin/bash

# validation of FHIR resource with JSON Spec: https://json-spec.readthedocs.io/

unset jmap

declare -A jmap

JSD_PATH="json_schemas/"
APPOINTMENT_PATH="Appointment/"
FHIR_SCHEMA_FILE="$JSD_PATH""fhir.schema.json"

jmap["ODA-activitydefinition.example.json"]=$FHIR_SCHEMA_FILE
jmap["ODA-appointment.example.json"]=$FHIR_SCHEMA_FILE
jmap["ODA-careplan.example.json"]=$FHIR_SCHEMA_FILE
jmap["ODA-careteam.example.json"]=$FHIR_SCHEMA_FILE
jmap["ODA-communication.example.json"]=$FHIR_SCHEMA_FILE
jmap["ODA-consent.example.json"]=$FHIR_SCHEMA_FILE
jmap["ODA-device.example.json"]=$FHIR_SCHEMA_FILE
jmap["ODA-finnishpatient-patient.example.json"]=$FHIR_SCHEMA_FILE
jmap["ODA-medicationstatement.example.json"]=$FHIR_SCHEMA_FILE
jmap["ODA-person.example.json"]=$FHIR_SCHEMA_FILE
jmap["ODA-practitioner.example.json"]=$FHIR_SCHEMA_FILE
jmap["ODA-questionnaire.example.json"]=$FHIR_SCHEMA_FILE
jmap["ODA-questionnaireresponse.example.json"]=$FHIR_SCHEMA_FILE
jmap["ODA-temperature-observation.example.json"]=$FHIR_SCHEMA_FILE
jmap["ODA-temperature-quantity.example.json"]=$FHIR_SCHEMA_FILE

jmap["$APPOINTMENT_PATH""ODAAppointment-example.json"]=$FHIR_SCHEMA_FILE
jmap["$APPOINTMENT_PATH""ODAHealthcareService-example.json"]=$FHIR_SCHEMA_FILE
jmap["$APPOINTMENT_PATH""ODAOrganization-example.json"]=$FHIR_SCHEMA_FILE
jmap["$APPOINTMENT_PATH""ODAPatient-example.json"]=$FHIR_SCHEMA_FILE
jmap["$APPOINTMENT_PATH""ODAPractitioner-example.json"]=$FHIR_SCHEMA_FILE

RETVAL=0
for key in ${!jmap[@]}
do
  json validate --schema-file="${jmap[$key]}" --document-file="$key"
  OP=$?
  if [ $OP -ne 0 ]
  then
    echo "$key"" did not pass validation"
    RETVAL=1
  fi
done
