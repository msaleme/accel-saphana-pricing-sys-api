%dw 2.0
import * from dw::test::Asserts
---
payload must equalTo({
    "minRequiredQuantity": 0.000,
    "maxRequiredOrderValue": 0.00,
    "id": "0000007214",
    "unitListPrice": 0.00,
    "servicePeriodCount": null,
    "minRequiredOrderValue": 0.00
})