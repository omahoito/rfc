# ODA1 - ODA2 FHIR Symptom Check Questionnaire API 

### ODA1 - ODA2 Questionnaire API Proposals

There is two different proposals to store and manage Questionnaires.

#### Proposal 1 - ODA1 acts as a client

Questionnaires are persisted on ODA2. ODA1 acts as a client and adds/updates/deletes questionnaires when ever needed to.

![](http://www.plantuml.com/plantuml/proxy?src=https://raw.githubusercontent.com/kainutom/rfc/master/ODA1-ODA2-questionnaire-api-proposal/oda1-oda2-questionnaire-api.puml?1) 

#### Proposal 2 - ODA2 acts as a client

Questionnaires are persisted on ODA1. ODA2 acts as a client and reads Questionnaires "on the fly" when ever needed to.

![](http://www.plantuml.com/plantuml/proxy?src=https://raw.githubusercontent.com/kainutom/rfc/master/ODA1-ODA2-questionnaire-api-proposal/oda2-oda1-questionnaire-api.puml?2) 

### Symptom Check API proposal
![](http://www.plantuml.com/plantuml/proxy?src=https://raw.githubusercontent.com/kainutom/rfc/master/ODA1-ODA2-questionnaire-api-proposal/oda2-oda1-check-symptoms.puml?3) 