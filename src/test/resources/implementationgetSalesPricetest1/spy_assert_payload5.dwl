%dw 2.0
import * from dw::test::Asserts
---
payload must equalTo({
  "id": "10",
  "productId": "TG0011",
  "customerId": "17100001",
  "quoteId": "tempor",
  "quantity": 2,
  "netUnitPrice": "328",
  "currency": "USD",
  "additionalDiscount": "-18",
  "taxAmount": "13.12",
  "discountValidationResponse": "valid discount"
})