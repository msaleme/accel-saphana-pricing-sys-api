%dw 2.0
import * from dw::test::Asserts
---
(payload - "timeStamp") must equalTo({
  "errorCode": "404",
  "errorMessage": "Product not found",
  "transactionId": "95cde590-48c8-11eb-88ef-0a002700000a",
  "timeStamp": "2020-12-27T23:53:12.84-05:00"
} - "timeStamp")