# rfc
Request for Comments and Change process for ODA Application Interfaces

We are conforming with a classic RFC process to continuously maintain a dialogue with stakeholders and the developer community. https://en.wikipedia.org/wiki/Request_for_Comments

Please see https://github.com/omahoito/rfc/projects/1 for the progress of requests.

Current schemas are in https://simplifier.net/FinnishPHR

## Data model


(Finnish) Tietomalleja on seuraavista resursseista:
* Communication / Viesti, käytetään potilaan ja ammatinharjoittajan välisessä viestinnässä.
  * Json-muodossa [tässä](https://github.com/omahoito/rfc/blob/master/Communication.json)
  * [Keskustelu resurssista](https://github.com/omahoito/rfc/issues/7)
* Device / Laite, laite jota käytetään oirearviokyselyn täyttämiseen.
  * Json-muodossa [tässä](https://github.com/omahoito/rfc/blob/master/Device.json)
  * [Keskustelu resurssista](https://github.com/omahoito/rfc/issues/1)
* Person - FinnishPatient / Henkilö - Potilas. Henkilö- ja potilastiedot. Person-malli perustuu FHIR-standardin STFU3-versioon, Potilas Kelan mallin
  * Person: http://hl7.org/fhir/2017Jan/person.html
  * Kelan FinnishPatient-resurssi: https://simplifier.net/FinnishPHR/FinnishPatient/
  * Resurssi [json-muodossa](https://github.com/omahoito/rfc/blob/master/PatientCitizen.json)
  * [Keskustelu resurssista](https://github.com/omahoito/rfc/issues/6)
* Appointment
  * [Keskustelu resurssista](https://github.com/omahoito/rfc/issues/3)
* CarePlan
  * [Keskustelu resurssista](https://github.com/omahoito/rfc/issues/10)



![](http://www.plantuml.com/plantuml/proxy?src=https://raw.githubusercontent.com/omahoito/rfc/master/PLANTUML_Diagrams/Resources.plantuml?2) <!--- This generates a picture based on Resource.pantuml. To change the counter in the url above, i.e. deployment.md?13 -> deployment.md?14 --->


![](http://www.plantuml.com/plantuml/proxy?src=https://raw.githubusercontent.com/omahoito/rfc/master/datamodel.md?2) <!--- This generates a picture based on datamodel.md. To change the counter in the url above, i.e. deployment.md?13 -> deployment.md?14 --->


*Initial version from an old architecture document, to be updated*

<!---

![Data model](http://g.gravizo.com/source?https%3A%2F%2Fraw.githubusercontent.com%2Fomahoito%2Frfc%2FPLANTUML_Diagrams%2Fmaster%2Fmodel.dot%3F2)
--->
<!-- Increment the last number (after %3F) to invalidate gravizo and browser cache -->
