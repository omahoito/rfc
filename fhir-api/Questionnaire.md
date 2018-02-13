# ODA FHIR Questionnaire API

## Meta-tags

Questionnaire resource Meta-element tags are used to categorize and control ODA internal processes.

### Decision support tags

Following codes are used to control how ODA uses decision support services when analyzing QuestionnaireResponse -resources. 

`CodeSystem: http://oda.fi/cds`

| Code          | Meaning     |
| ------------- |-------------|
| oda1      | ODA1 clinical decision support is used |
| oda-social| ODA2 cds-service is used|


### Questionnaire category tags

Following codes are used to categorize different types of ODA-Questionnaires

`CodeSystem: http://oda.fi/Questionnaire`

| Code          | Meaning     |
| ------------- |-------------|
| symptom      | Symptom-check questionnaire |
| social | Social questionnaire |
| anamnesis | Preliminary information of the patient |


### Example

```json 
        {
        "resourceType": "Questionnaire",
        "id": "129",
        "meta": {
          "versionId": "1",
          "lastUpdated": "2018-02-12T08:56:34.290+02:00",
          "profile": [
            "http://phr.kanta.fi/StructureDefinition/fiphr-questionnaire-stu3"
          ],
          "tag": [
            {
              "system": "http://oda.fi/Questionnaire",
              "code": "symptom"
            },
            {
              "system": "http://oda.fi/cds",
              "code": "oda1"
            }
          ]
        }
```
