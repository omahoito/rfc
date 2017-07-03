[![Build Status](https://travis-ci.org/omahoito/rfc.svg?branch=master)](https://travis-ci.org/omahoito/rfc)



# rfc
Request for Comments and Change process for ODA Application Interfaces

We are conforming with a classic RFC process to continuously maintain a dialogue with stakeholders and the developer community. https://en.wikipedia.org/wiki/Request_for_Comments

Please see https://github.com/omahoito/rfc/projects/1 for the progress of requests.

Current schemas are in https://simplifier.net/FinnishPHR

## <a name="profiling_guide"></a>Profiling guidelines

* Profiles define the structures of the resources, data types, extensions and constraints used in ODA FHIR API. Profile implementers are expected to be familiar with the HL7 guidelines: http://hl7.org/fhir/profiling.html
* Profile names start with project identifier "ODA" and the profile name must contain the resource and the special domain of the particular resource (if any). For example a care plan for customer's self care is named as "ODA self-CarePlan profile".
* Profiles must be in XML format and their filenames must contain the profile name, for example ODA-self-CarePlan.profile.xml
* Profile name should be in PascalCase, not camelCase, i.e. "ODA CarePlan" as well as filenames ie. ODA-CarePlan.profile.xml
* For each profile there must be also an example resource in JSON format. Example resource demonstrates how the data elements are used and its name must match to the profile name, for example: ODA-self-careplan.example.json.
* Profiles must be compatible with HL7 FHIR STU3 standard.
* A constraining profile can only allow what the base profile allows. Limitations are described more detailed in HL7 FHIR standard: http://hl7.org/fhir/profiling.html#5.1.0.7
* Each profile must contain both the snapshot and differential components. The snapshot component shows all resource elements in one description and the differential component describes the differencies compared to the base profile.
* Documenting the profile elements: Profile element definitions (http://hl7.org/fhir/elementdefinition.html) contain elements describing what the element is, why it exists and how it should or could be used. These include:
  * definition: A narrative text containing full formal definition of the element. This is required for all modified extensions or profile elements.
  * comments: Comments and other relevant information about the use of this element. This is optional.
  * requirements: Description why this element exists. This is optional.
  * example: Example value for the element. This is optional.
  * For example, the "category" element of the self-careplan profile could have following element definitions:
    * definition: "Identifies what kind of plan this is to support differentiation between multiple co-existing plans; e.g. "Self-care", "Diabetes" etc."
	* comments: "Only allowed value is 'Self-care'"
	* requirements: "This allows filtering different kinds of care-plans"



## Data model


Data models of the following profiles:

* ActivityDefinition
  * Profile documentation [STU3](http://hl7.org/fhir/activitydefinition.html)
  * Profile as [xml](https://github.com/omahoito/rfc/blob/master/ODA-ActivityDefinition.profile.xml)
  * Example resource as [json](https://github.com/omahoito/rfc/blob/master/ODA-activitydefinition.example.json)

* Appointment
  * Profile as [xml](https://github.com/omahoito/rfc/blob/master/ODA-appointment.profile.xml)
  * Example resource as [json](https://github.com/omahoito/rfc/blob/master/ODA-appointment.example.json)
  * Profile documentation ([STU3](https://www.hl7.org/fhir/appointment.html))
  * [Discussion](https://github.com/omahoito/rfc/issues/3)

* CarePlan
  * Profile as [xml](https://github.com/omahoito/rfc/blob/master/ODA-CarePlan.profile.xml)
  * Example resource as [json](https://github.com/omahoito/rfc/blob/master/ODA-careplan.example.json)
  * Profile documentation [STU3](http://hl7.org/fhir/careplan.html)
  * [Discussion](https://github.com/omahoito/rfc/issues/10)

* CareTeam
  * Profile as [xml](https://github.com/omahoito/rfc/blob/master/ODA-CareTeam.profile.xml)
  * Example resource as [json](https://github.com/omahoito/rfc/blob/master/CareTeam.json)
  * Profile documentation [STU3](http://hl7.org/fhir/careteam.html)
  * Introduced in STU3
  * [Discussion](https://github.com/omahoito/rfc/issues/11)

* Communication, used in communication between patient and practitioner
  * Profile as [xml](https://github.com/omahoito/rfc/blob/master/ODA-Communication.profile.xml)
  * Example resource as [json](https://github.com/omahoito/rfc/blob/master/ODA-communication.example.json)
  * Profile documentation [STU3](http://hl7.org/fhir/communication.html))
  * [Discussion](https://github.com/omahoito/rfc/issues/7)

* EpisodeOfCare, contains information about the association of a patient with a healthcare provider (e.g. practitioner)
  * Profile as [xml](https://github.com/omahoito/rfc/blob/master/ODA-EpisodeOfCare.profile.xml)
  * Example resource as [json](https://github.com/omahoito/rfc/blob/master/ODA-episodeofcare.example.json)
  * Documentation: [STU3](https://www.hl7.org/fhir/episodeofcare.html)

* Goal, setting a goal for the patient's recovery
  * Profile as [xml](https://github.com/omahoito/rfc/blob/master/ODA-Goal.profile.xml)
  * Example resource as [json](https://github.com/omahoito/rfc/blob/master/ODA-goal.example.json)
  * Documentation: [STU3](https://www.hl7.org/fhir/communication.html)

* MedicationStatement, information about medication the patient is using
  * Profile as [xml](https://github.com/omahoito/rfc/blob/master/ODA-MedicationStatement.profile.xml)
  * Example resource as [json](https://github.com/omahoito/rfc/blob/master/ODA-medicationstatement.example.json)
  * Documentation [STU3](http://hl7.org/fhir/medicationstatement.html)

* Observation about body temperature, contains patient's temperature measurements
  * Profile as [xml](https://github.com/omahoito/rfc/blob/master/ODA-Observation.profile.xml)
  * Example resource as [json](https://github.com/omahoito/rfc/blob/master/ODA-temperature-observation.example.json)
  * Profile documentation ([STU3](http://hl7.org/fhir/observation.html))

* Organization, an entity managing health resources
  * Profile as [xml](https://github.com/omahoito/rfc/blob/master/ODA-Organization.profile.xml)
  * Example resource as  [json](https://github.com/omahoito/rfc/blob/master/ODA-organization.example.json)
  * Documentation ([STU3](http://hl7.org/fhir/organization.html))

* Person - FinnishPatient. Person and patient information. Person-profile is based on the FHIR-standard's STU3-version, FinnishPatient on Kela's profile
  * Person: http://hl7.org/fhir/person.html
  * Kela's FinnishPatient-profile: https://simplifier.net/FinnishPHR/FinnishPatient/
  * Resources as json:
    * [Person](https://github.com/omahoito/rfc/blob/master/ODA-person.example.json)
    * [Patient](https://github.com/omahoito/rfc/blob/master/ODA-finnishpatient-patient.example.json)
  * [Discussion](https://github.com/omahoito/rfc/issues/6)

* Practitioner, professional who takes care of patient
  * Profile as [xml](https://github.com/omahoito/rfc/blob/master/ODA-Practitioner.profile.xml)
  * Example resource as [json](https://github.com/omahoito/rfc/blob/master/ODA-practitioner.example.json)
  * Documentation [STU3](http://hl7.org/fhir/practitioner.html)

* Questionnaire
  * Profile as [xml](https://github.com/omahoito/rfc/blob/master/Questionnaire.profile.xml)
  * Example resource as [json](https://github.com/omahoito/rfc/blob/master/ODA-questionnaire.example.json)
  * Documentation [STU3](http://hl7.org/fhir/questionnaire.html)

* QuestionnaireResponse
  * Profile as [xml](https://github.com/omahoito/rfc/blob/master/ODA-QuestionnaireResponse.profile.xml)
  * Example resource as [json](https://github.com/omahoito/rfc/blob/master/ODA-questionnaireresponse.example.json)
  * Documentation [STU3](http://hl7.org/fhir/questionnaireresponse.html)

## Data model explained

* <b>CarePlan</b> <b>Hoitosuunnitelma </b>is the central element in ODA data model as it gathers the care related information for the patient.
The CarePlan contains actions suggested by symptom check service. Patient may also attach his/her personal
health or activity data from Kela PHR and healthcare data from Kela Kanta to CarePlan. This supporting information
is referenced by <i>CarePlan.support</i> element
* <b>ActivityDefinition</b> <b>Toimintosuositus</b> Definition of the suggested action. These definitions are referenced by careplan activities.
* <b>CareTeam</b> models two objects:
  * <b>The service request list</b> <b>Työjono</b> containing professionals authorized to the list.
  * <b>The care team</b> <b>Hoitotiimi</b> participating to patient's ODA-care
* <b>Practitioner</b> <b>Ammattilainen</b> models the professional and contains the professional data shown in ODA.
* <b>Patient</b> <b>Potilas</b> Patient models a patient without any personal information. Conforms to Finnish PHR FinnishPatient
profile
* <b>Person</b> <b>Henkilö</b> Person contains personal information of a user.
* <b>Observation</b> <b>Havainto</b> references to <i>Patient</i>. When generated from the questionnaire answer, references also to
corresponding <i>QuestionnaireResponse</i> resource. For vital signs conforms to Finnish PHR Vital Signs profile and
the profiles derived from it.
* <b>EpisodeOfCare</b> <b>Hoitotapahtuma</b> is created when care-relationship starts between professional and patient. CareManager relates
to the responsible professional and the team contains other professionals participating to care.
* <b>Questionnaire</b> <b>Kyselylomake</b> Created by main user and saved to PHR as questionnaire templates.
* <b>QuestionnaireResponse</b> <b>Kyselyvastaus</b> Created when patient answers to a questionnaire and saves the answers.
* <b>Communication</b> <b>Kommentti</b> Patient's and professional's comments about the <i>CarePlan</i> or any other resource.
* <b>MedicationStatement</b> <b>Itsehoitolääkitys</b> Medication information added by patient. Authorized to care-team by linking <i>CarePlan</i>
to the <i>MedicationStatement</i> instance.
* <b>Immunization</b> <b>Rokotus</b> Added by patient and authorized to care-team via careplan.
* <b>AllergyIntolerance</b> <b>Allergia</b> Added by patient and authorized to care-team via careplan.
* <b>Flag</b> <b>Riskitieto</b> Risk-information added by patient and authorized to care-team via careplan.
* <b>Organization</b> <b>Organisaatio </b> Managing organization of the CareTeam representing the service request list.
* <b>Goal</b> <b>Tavoite</b> The "master" goal of the patient.



## Data model visualised

![](http://www.plantuml.com/plantuml/proxy?src=https://raw.githubusercontent.com/omahoito/rfc/master/ODA-PHR-Datamodel.plantuml?11)
<!--- This generates a picture based on Resource.pantuml. To change the counter in the url above, i.e. deployment.md?13 -> deployment.md?14 --->


## Data modelling in national databases

The following picture explains the data relations between ODA and national archives (KELA PHR and Kanta/Kansa). Archiving care related data such as
EpisodeOfCare and CareTeams are still under specification and not yet modelled in the picture. The green objects (marked as `<<Temporary>>`) are
deleted from the ODA when care is completed.

![](http://www.plantuml.com/plantuml/proxy?src=https://raw.githubusercontent.com/omahoito/rfc/master/ODA-Care-Related-Data.plantuml?2)


## <a name="profiling_tools"></a>Tools for editing profiles

[Notepad++](https://notepad-plus-plus.org/) has a plugin for FHIR.
http://www.healthintersections.com.au/?p=2386

Install files here:
http://www.healthintersections.com.au/FhirServer/fhirnpp.htm

-------------------------------------------

Forge is a FHIR profile editor for Windows.
http://fhir.furore.com/forge
https://simplifier.net/ui/Info/Forge

Connects to [Simplifier](https://www.simplifier.net/), a registry for FHIR profiles.

-------------------------------------------

Simple FHIR editor online at
http://docs.smarthealthit.org/fred/
source: https://github.com/smart-on-fhir/fred

FHIR Resource Editor (FRED) usage is simple and intuitive. The choice of elements is limited. No custom elements. If attempt with custom elements, they will be displayed as red. Null and undefined values give message about profile containing errors.

A separate instance of FRED can be set up and run on a server.

-------------------------------------------

There are currently no known FHIR editing tools for Linux or Mac.

## Commenting the data schemas

The profile data schemas are written in XML. [Forge](https://fhir.furore.com/forge/) is a tool with to create and comment FHIR profiles. It also shows the structure of the data schema.

Forge makes it possible to focus on the functional side of modelling without having to get involved in the complexity of XML files. Forge also automatically validates the profiles.

Forge can be downloaded [here](https://fhir.furore.com/forge/). The software only works in Windows. It is only possible to do profiles in XML format.

In Forge the profile elements and attributes can be commented in the "Comments" or "Reason for inclusion and constrainment" sections. The comments section can include explanatory comments and application information, and information on the correct way of using the element. The reason section can include information about why an element or attribute has been created, and also include references to support these decisions.


## Contributing

If you are interested in contributing new profiles, please feel free to do so. The profiles have been made with [Forge](https://fhir.furore.com/forge/), and the same tool can be used for further development or modification of existing profiles or creation of new ones. Please see the [Profiling section](#profiling_guide) for further information.

Contributions are done through pull requests. Profile files are checked with [xmllint](http://xmlsoft.org/xmllint.html) and [Travis](https://travis-ci.org/). Please add a validation test for the profile to the [validation script](https://github.com/omahoito/rfc/blob/master/xmlvalidation.sh) together with the schema file that the profile is based on. Passing the validation test is a precondition for new profiles to be accepted.

Schema validation files for DSTU2 profiles are located [here](https://github.com/omahoito/rfc/tree/master/xsd/STU2/fhir-all-xsd) and files for STU3 can be found [here](https://github.com/omahoito/rfc/tree/master/xsd/STU3/fhir-all-xsd). The schema files end with a xsd suffix.

Since May 2017, only STU3 based profiles are used in the profiling.

Example resources have been written by hand. Like the profiles, the resources are also automatically validated. The validation is done with [JSON Spec](https://json-spec.readthedocs.io/) and the validation routine automatically run on [Travis](https://travis-ci.org/). If you want to contribute an example, please do so through a pull request.
