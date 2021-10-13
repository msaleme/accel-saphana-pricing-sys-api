%dw 2.0
import * from dw::test::Asserts
---
payload must equalTo([
  {
    "inboundAttachmentNames": [],
    "exceptionPayload": null,
    "inboundPropertyNames": [],
    "outboundAttachmentNames": [],
    "outboundPropertyNames": [],
    "payload": {
      "id": "10",
      "productId": "TG0011",
      "customerId": "17100001",
      "quoteId": "tempor",
      "quantity": 2,
      "netUnitPrice": "164",
      "NetAmount": 328.00,
      "currency": "USD",
      "additionalDiscount": "-18",
      "taxAmount": "13.12",
      "discountValidationResponse": "valid discount"
    },
    "attributes": {
      "headers": {
        "content-type": "application/json; charset=utf-8",
        "content-length": "2414",
        "location": "https://my304163.s4hana.ondemand.com:443/sap/opu/odata/sap/API_SALES_ORDER_SIMULATION_SRV/A_SalesOrderSimulation('')",
        "dataserviceversion": "2.0",
        "sap-message": "{\"code\":\"SLS_LORD/033\",\"message\":\"The document  cannot be saved.\",\"target\":\"\",\"severity\":\"warning\",\"transition\":false,\"details\":[{\"code\":\"V1/263\",\"message\":\"Item 000010 can not be invoiced according to the billing plan\",\"target\":\"\",\"severity\":\"info\",\"transition\":false},{\"code\":\"SLS_LORD/009\",\"message\":\"Document is incomplete\",\"target\":\"\",\"severity\":\"warning\",\"transition\":false},{\"code\":\"SLS_LORD/098\",\"message\":\"In simulation mode, the document must not be saved.\",\"target\":\"\",\"severity\":\"warning\",\"transition\":false}]}",
        "sap-processing-info": "ODataBEP=,crp=,RAL=,st=,MedCacheHub=SHM,codeployed=X,softstate=",
        "sap-server": "true",
        "sap-perf-fesrec": "597813.000000",
        "content-encoding": "gzip",
        "x-content-type-options": "nosniff",
        "strict-transport-security": "max-age=31536000; includeSubDomains",
        "x-xss-protection": "1; mode=block"
      },
      "statusCode": 201
    }
  },
  {
    "inboundAttachmentNames": [],
    "exceptionPayload": null,
    "inboundPropertyNames": [],
    "outboundAttachmentNames": [],
    "outboundPropertyNames": [],
    "payload": {
      "id": "11",
      "productId": "91",
      "customerId": "17100001",
      "quoteId": "tempor",
      "quantity": 2,
      "netUnitPrice": "2579.14",
      "NetAmount": 5158.28,
      "currency": "USD",
      "additionalDiscount": "-14",
      "taxAmount": "206.33",
      "discountValidationResponse": "valid discount"
    },
    "attributes": {
      "headers": {
        "content-type": "application/json; charset=utf-8",
        "content-length": "2398",
        "location": "https://my304163.s4hana.ondemand.com:443/sap/opu/odata/sap/API_SALES_ORDER_SIMULATION_SRV/A_SalesOrderSimulation('')",
        "dataserviceversion": "2.0",
        "sap-message": "{\"code\":\"SLS_LORD/033\",\"message\":\"The document  cannot be saved.\",\"target\":\"\",\"severity\":\"warning\",\"transition\":false,\"details\":[{\"code\":\"V1/263\",\"message\":\"Item 000011 can not be invoiced according to the billing plan\",\"target\":\"\",\"severity\":\"info\",\"transition\":false},{\"code\":\"SLS_LORD/009\",\"message\":\"Document is incomplete\",\"target\":\"\",\"severity\":\"warning\",\"transition\":false},{\"code\":\"SLS_LORD/098\",\"message\":\"In simulation mode, the document must not be saved.\",\"target\":\"\",\"severity\":\"warning\",\"transition\":false}]}",
        "sap-processing-info": "ODataBEP=,crp=,RAL=,st=,MedCacheHub=SHM,codeployed=X,softstate=",
        "sap-server": "true",
        "sap-perf-fesrec": "599941.000000",
        "content-encoding": "gzip",
        "x-content-type-options": "nosniff",
        "strict-transport-security": "max-age=31536000; includeSubDomains",
        "x-xss-protection": "1; mode=block"
      },
      "statusCode": 201
    }
  }
])