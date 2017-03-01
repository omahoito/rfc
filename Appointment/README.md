
# ODA ajanvaraus

Luonnoksia ajanvaraus-profiilin resursseiksi.

Sisältää xml-muotoisia tiedostoja seuraavista resursseista:

* ODAAppointment ([xml](Appointment/ODAAppointment.xml) )
* ODAHealthcareService  ([xml](Appointment/ODAHealthcareService.xml) )
* ODAPatient  ([xml](Appointment/ODAPatient.xml) )
* ODAOrganization  ([xml](Appointment/ODAOrganization.xml) )
* ODAPractitioner  ([xml](Appointment/ODAPractitioner.xml) )

Alkuperäiset tiedostot täällä:
https://simplifier.net/ODAajanvaraus

Ajanvaraukseen osallistuu potilas ja ammatinharjoittaja, ja tapahtuma sijoittuu terveysasemalle. Terveysasema on osa organisaatiota, ja terveysasemalla työskentelee ammatinharjoittajia. Ammatinharjoittajat voivat kuulua useampaa organisaatioon, ja myös työskennellä useammalla terveysasemalla.

Visualisointi resurssien välisistä suhteista:

![](http://www.plantuml.com/plantuml/proxy?src=https://raw.githubusercontent.com/omahoito/rfc/master/ODA_ajanvaraus.plantuml?3) <!--- This generates a picture based on Resource.pantuml. To change the counter in the url above, i.e. deployment.md?13 -> deployment.md?14 --->
