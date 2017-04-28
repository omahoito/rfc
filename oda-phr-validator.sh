!#/bin/bash

unset jmap

declare -A jmap

JSD_PATH="json_schemas/"
APPOINTMENT_PATH="Appointment/"

jmap["ODA-activitydefinition.example.json"]="ActivityDefinition"
jmap["ODA-appointment.example.json"]="Appointment"
jmap["ODA-careplan.example.json"]="CarePlan"
jmap["ODA-careteam.example.json"]="CareTeam"
jmap["ODA-communication.example.json"]="Communication"
jmap["ODA-consent.example.json"]="Consent"
jmap["ODA-device.example.json"]="Device"
jmap["ODA-finnishpatient-patient.example.json"]="Patient"
jmap["ODA-medicationstatement.example.json"]="MedicationStatement"
jmap["ODA-person.example.json"]="Person"
jmap["ODA-practitioner.example.json"]="Practitioner"
jmap["ODA-questionnaire.example.json"]="Questionnaire"
jmap["ODA-questionnaireresponse.example.json"]="QuestionnaireResponse"
jmap["ODA-temperature-observation.example.json"]="Observation"

jmap["$APPOINTMENT_PATH""ODAAppointment-example.json"]="Appointment"
jmap["$APPOINTMENT_PATH""ODAHealthcareService-example.json"]="HealthcareService"
jmap["$APPOINTMENT_PATH""ODAOrganization-example.json"]="Organization"
jmap["$APPOINTMENT_PATH""ODAPatient-example.json"]="Patient"
jmap["$APPOINTMENT_PATH""ODAPractitioner-example.json"]="Practitioner"

for key in ${!jmap[@]}
do
  echo "${jmap[$key]}""  ""$key"
  curl -X POST https://oda.medidemo.fi/phr/baseDstu3/"${jmap[$key]}"/\$validate --data @"$key" --header "Content-Type:application/fhir+json"
done
