# Extension for recording resource updates

This extension contains information about the latest change of the resource. It contains the reference (optional) and display string (required)
of the editor and the date-time when last edited.

Profile: https://simplifier.net/ODA-PHR-Proposals/oda-editor-extension

Scope: 
  * CarePlan
  * CarePlan.activity
  
  
## Example

```json
 {
        "resourceType": "CarePlan",
        "id": "CAREPLAN1-PATIENT1",
        "meta": {
          "versionId": "1",
          "lastUpdated": "2018-03-18T21:02:04.547+02:00",
          "tag": [
            {
              "system": "https://oda.fi/instance-id",
              "code": "oda.medidemo.fi"
            }
          ]
        },
        "extension": [
          {
            "url": "https://oda.fi/StructureDefinition/oda-editor-extension",
            "extension": [
              {
                "url": "author",
                "valueReference": {
                  "reference": "Practitioner/12345",
                  "display": "Hellä Hoitaja"
                }
              },
              {
                "url": "dateTime",
                "valueDateTime": "2018-03-18T21:02:04.547+02:00"
              }
            ]
          }
        ] ,
        "identifier": [
          {
            "use": "temp",
            "value": "30001"
          }
        ],
        "status": "active",
        "intent": "plan",
        "category": [
          {
            "coding": [
              {
                "system": "http://phr.kanta.fi/CodeSystem/fiphr-cs-careplan-category",
                "code": "1",
                "display": "Hengitystietulehdusoireiden hoitosuunnitelma"
              }
            ]
          }
        ],
        "title": "Demo CarePlan 1",
        "description": "Nieluvaivasi on todennäköisesti lievä virustauti, jonka yhteydessä oloa voi helpottaa levolla ja tulehduskipulääkkeillä (ks. Nuhakuume),         eikä tarvita lääkärin tai hoitajan antamaa hoitoa. Töistä poissaolon tarve riippuu voinnista ja työn vaatimuksista. Tarpeellisen poissaolon järjestämiseksi menettele työnantajasi antamien ohjeiden mukaan.\n",
        "subject": {
          "reference": "Patient/PATIENT1"
        },
        "context": {
          "reference": "EpisodeOfCare/EPISODEOFCARE1-PATIENT1"
        },
        "period": {
          "start": "2017-03-01T00:00:00.000Z",
          "end": "2017-04-02T23:59:59.999Z"
        },
        "author": [
          {
            "reference": "Patient/PATIENT1"
          }
        ],
        "careTeam": [
          {
            "reference": "CareTeam/CARETEAM1-AUTHORIZATION"
          }
        ],
        "activity": [
          {
          "extension": [
          {
            "url": "https://oda.fi/StructureDefinition/oda-editor-extension",
            "extension": [
              {
                "url": "author",
                "valueReference": {
                  "reference": "Practitioner/12345",
                  "display": "Hellä Hoitaja"
                }
              },
              {
                "url": "dateTime",
                "valueDateTime": "2018-03-18T21:02:04.547+02:00"
              }
            ]
          }
        ],
            "detail": {
              "category": {
                "text": "observation"
              },
              "code": {
                "coding": [
                  {
                    "system": "urn:oid:1.2.246.537.6.96.2008",
                    "version": "1.2.246.537.6.96.2008",
                    "code": "8310-5"
                  }
                ]
              },
              "status": "not-started",
              "prohibited": false,
              "scheduledTiming": {
                "event": [
                  "2017-03-30T12:00:00.000Z"
                ]
              },
              "description": "Mittaa lämpö uudelleen"
            }
          }```
