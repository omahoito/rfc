Subfolders contain the following FHIR profiles in json or xml format

Appointment ([json](/profiles/FHIR/json/Appointment.json), [xml](/profiles/FHIR/xml/Appointment.xml))
* A booking of a healthcare event among patient(s), practitioner(s), related person(s) and/or device(s) for a specific date/time. This may result in one or more [Encounter(s)](http://hl7.org/fhir/encounter.html).
* [hl7](http://hl7.org/fhir/appointment.html), [simplifier](https://www.simplifier.net/core-base-resources/Appointment/)

CarePlan ([json](/profiles/FHIR/json/CarePlan.json), [xml](/profiles/FHIR/xml/CarePlan.xml)) 
* Healthcare plan for patient or group
* [hl7](http://hl7.org/fhir/careplan.html), [simplifier](https://www.simplifier.net/core-base-resources/CarePlan/)

Condition ([json](/profiles/FHIR/json/Condition.json), [xml](/profiles/FHIR/xml/Condition.xml))
* Detailed information about conditions, problems or diagnoses
* [hl7](http://hl7.org/fhir/condition.html), [simplifier](https://www.simplifier.net/core-base-resources/Condition/)

Device ([json](/profiles/FHIR/json/Device.json), [xml](/profiles/FHIR/xml/Device.xml))
* An instance of a manufactured item that is used in the provision of healthcare
* [hl7](http://hl7.org/fhir/device.html), [simplifier](https://www.simplifier.net/core-base-resources/Device/)

FinnishPatient ([json](/profiles/FHIR/json/FinnishPatient.json), [xml](/profiles/FHIR/xml/FinnishPatient.xml))
* Information about an individual or animal receiving health care services
* [simplifier](https://www.simplifier.net/FinnishPHR/FinnishPatient/)

Goal ([json](/profiles/FHIR/json/Goal.json), [xml](/profiles/FHIR/xml/Goal.xml))
* Describes the intended objective(s) for a patient, group or organization
* [hl7](http://hl7.org/fhir/goal.html), [simplifier](https://www.simplifier.net/core-base-resources/Goal/)

Patient ([json](/profiles/FHIR/json/Patient.json), [xml](/profiles/FHIR/xml/Patient.xml))
* Information about an individual or animal receiving health care services
* [hl7](http://hl7.org/fhir/patient.html), [simplifier](https://www.simplifier.net/core-base-resources/Patient/)

Person ([json](/profiles/FHIR/json/Person.json), [xml](/profiles/FHIR/xml/Person.xml))
* A generic person record
* [hl7](http://hl7.org/fhir/person.html), [simplifier](https://www.simplifier.net/core-base-resources/Person/)

Questionnaire ([json](/profiles/FHIR/json/Questionnaire.json), [xml](/profiles/FHIR/xml/Questionnaire.xml))
* A structured set of questions
* [hl7](http://hl7.org/fhir/questionnaire.html), [simplifier](https://www.simplifier.net/core-base-resources/Questionnaire/)

QuestionnaireResponse ([json](/profiles/FHIR/json/QuestionnaireResponse.json), [xml](/profiles/FHIR/xml/QuestionnaireResponse.xml))
* A structured set of questions and their answers
* [hl7](http://hl7.org/fhir/questionnaireresponse.html), [simplifier](https://www.simplifier.net/core-base-resources/QuestionnaireResponse/)

## Some datamodels

![](http://www.plantuml.com/plantuml/proxy?src=https://raw.githubusercontent.com/omahoito/rfc/master/profiles/FHIR/PersonPatientFinnishpatientDatamodel.md?2)

![](http://www.plantuml.com/plantuml/proxy?src=https://raw.githubusercontent.com/omahoito/rfc/master/datamodel.md?2) <!--- This generates a picture based on datamodel.md. To change the counter in the url above, i.e. deployment.md?13 -> deployment.md?14 --->


