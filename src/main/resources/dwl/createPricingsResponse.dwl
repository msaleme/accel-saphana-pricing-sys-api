%dw 2.0
output application/json
---
{
  "responseStatus": "SUCCESS",
  "resultMessages": [ {
  	"severity": "INFO",
    "message": "Pricing Condition Record was upserted",
    "parameters":  [
        {
            "paramName": "ConditionRecordId",
            "paramValue": payload.ConditionRecord
        }
    ] 
  }]
}