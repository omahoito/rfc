# ODA2 Questionnaire API

BaseUrl: [base]/fhir/Questionnaire
Questionnaire profile: http://hl7.org/fhir/2017Jan/questionnaire.html

### Read questionnaire

request type: GET
url syntax: [BaseUrl]/[id]
example url: [BaseUrl]/245
body content: None
header content: Authorization header needed
response: Questionnaire resource (content profile for questionnaire: [Questionnaire profile])
curl example:
```
curl --request GET \
  --url [BaseUrl]/QUESTIONNAIRE1 \
  --header 'authorization: Bearer [Authorization token]' \
  --header 'cache-control: no-cache' \
  --header 'content-type: application/json'
```
  
### Create questionnaire

request type: POST
url syntax: [BaseUrl]
example url: [BaseUrl]
body content: Questionnaire resource to create (content profile for questionnaire: [Questionnaire profile])
header content: Authorization header needed
response: 201 Created, questionnaire id can be parsed from Location header
example location header: (real id part is '247')
``` 
Location: [BaseUrl]/247/_history/1
```

curl example:
```
curl --request POST \
  --url [BaseUrl] \
  --header 'authorization: Bearer [Authorization token]' \
  --header 'cache-control: no-cache' \
  --header 'content-type: application/json'
  --data '[Questionnaire]'
```

### Update questionnaire

request type: PUT
url syntax: [BaseUrl]/[id]
example url: [BaseUrl]/247
body content: Questionnaire resource to update (content profile for questionnaire: [Questionnaire profile])
header content: Authorization header needed
response: 201 Created, questionnaire id can be parsed from location header 
example location header: (real id part is '247')
``` 
Location: [BaseUrl]/247/_history/2
```
curl example:
```
curl --request PUT \
  --url [BaseUrl]/247 \
  --header 'authorization: Bearer [Authorization token]' \
  --header 'cache-control: no-cache' \
  --header 'content-type: application/json'
  --data '[Questionnaire]' 
```
  
### Delete questionnaire

request type: DELETE
url syntax: [BaseUrl]/[id]
example url: [BaseUrl]/247
body content: None
header content: Authorization header needed
response: 204 No content
curl example:
```
curl --request DELETE \
  --url [BaseUrl]/247 \
  --header 'authorization: Bearer [Authorization token]' \
  --header 'cache-control: no-cache' \
  --header 'content-type: application/json'
```

### Search questionnaires by publisher

TODO

### Search questionnaire by identifier

TODO

  