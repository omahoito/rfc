
# ODA ajanvaraus

Luonnoksia ajanvaraus-profiilista.

Sisältää xml-muotoisia profiileja ja json-muotoisia esimerkkitiedostoja seuraavasti:

* ODAAppointment ([xml](ODAAppointment.xml), [json](ODAAppointment-example.json) )
* ODAHealthcareService  ([xml](ODAHealthcareService.xml), [json](ODAHealthcareService-example.json) )
* ODAPatient  ([xml](ODAPatient.xml), [json](ODAPatient-example.json) )
* ODAOrganization  ([xml](ODAOrganization.xml), [json](ODAOrganization-example.json) )
* ODAPractitioner  ([xml](ODAPractitioner.xml), [json](ODAPractitioner-example.json) )

XML-tiedostot ovat STU2 ja json-tiedostot DSTU3.
Alkuperäiset profiilitiedostot täällä:
https://simplifier.net/ODAajanvaraus

Ajanvaraukseen osallistuu potilas ja ammatinharjoittaja, ja tapahtuma sijoittuu terveysasemalle. Terveysasema on osa organisaatiota, ja terveysasemalla työskentelee ammatinharjoittajia. Ammatinharjoittajat voivat kuulua useampaa organisaatioon, ja myös työskennellä useammalla terveysasemalla.

Visualisointi resurssien välisistä suhteista:

![](http://www.plantuml.com/plantuml/proxy?src=https://raw.githubusercontent.com/omahoito/rfc/master/ODA_ajanvaraus.plantuml?7)
<!--- This generates a picture based on Resource.pantuml. To change the counter in the url above, i.e. deployment.md?13 -> deployment.md?14 --->
