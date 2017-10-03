## ODA2 Questionnaire validation

### CURL VALIDATION (recommended way)

1. Download and install curl https://curl.haxx.se/

2. Execute command (replace "Questionnaire resource as text goes here" with real content):
``` 
curl -X POST https://oda.medidemo.fi/phr/baseDstu3/Questionnaire/$validate -H "content-type: application/json" -d "Questionnaire resource as text goes here"
```

OR 

Execute command (replace "QuestionnaireJsonFile.json" with real file name):

``` 
curl -X POST https://oda.medidemo.fi/phr/baseDstu3/Questionnaire/$validate -H "content-type: application/json" -d @QuestionnaireJsonFile.json
```

### VALIDATION WEB PAGE (alternative way, not so accurate)

1. Go to https://oda.medidemo.fi/phr/resource?serverId=home&pretty=true&resource=Questionnaire#tab-otheractions

2. Click "CRUD Operation" tab

3. Paste Questionnaire resource as a text in "Validate" operation's "Contents*" text area

4. Click "Validate" button. Result will appear in "Result Narrative" block (you may have to scroll down a bit)

