# rfc
Request for Comments and Change process for ODA Application Interfaces

We are conforming with a classic RFC process to continuously maintain a dialogue with stakeholders and the developer community. https://en.wikipedia.org/wiki/Request_for_Comments

Please see https://github.com/omahoito/rfc/projects/1 for the progress of requests.

Current schemas are in https://simplifier.net/FinnishPHR

## Data model


(Finnish) Tietomalleja on seuraavista resursseista:
* [Communication / Viesti](https://github.com/omahoito/rfc/wiki/Communication), käytetään potilaan ja ammatinharjoittajan välisessä viestinnässä. Json-muodossa [tässä](https://github.com/omahoito/rfc/blob/master/Communication.pseudojson)
* [Device / Laite](https://github.com/omahoito/rfc/wiki/Device), laite jota käytetään oirearviokyselyn täyttämiseen
* [Person - Patient - FinnishPatient / Henkilö - Potilas - SuomalainenPotilas](https://github.com/omahoito/rfc/wiki/Person---Patient---FinnishPatient), henkilö- ja potilastiedot.


![](http://www.plantuml.com/plantuml/proxy?src=https://raw.githubusercontent.com/omahoito/rfc/master/datamodel.md?2) <!--- This generates a picture based on datamodel.md. To change the counter in the url above, i.e. deployment.md?13 -> deployment.md?14 --->


![](http://www.plantuml.com/plantuml/proxy?src=https://raw.githubusercontent.com/omahoito/rfc/master/PLANTUML_Diagrams/datamodel.plantuml?1) <!--- This generates a picture based on datamodel.md. To change the counter in the url above, i.e. deployment.md?13 -> deployment.md?14 --->


*Initial version from an old architecture document, to be updated*

<!---

![Data model](http://g.gravizo.com/source?https%3A%2F%2Fraw.githubusercontent.com%2Fomahoito%2Frfc%2FPLANTUML_Diagrams%2Fmaster%2Fmodel.dot%3F2)
--->
<!-- Increment the last number (after %3F) to invalidate gravizo and browser cache -->
