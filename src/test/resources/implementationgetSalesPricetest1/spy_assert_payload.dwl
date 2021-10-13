%dw 2.0
import * from dw::test::Asserts
---
payload must equalTo({
  "id": "10",
  "productId": "TG0011",
  "quoteId": "tempor",
  "customerId": "17100001",
  "quantity": 2,
  "additionalDiscount": "-18"
})