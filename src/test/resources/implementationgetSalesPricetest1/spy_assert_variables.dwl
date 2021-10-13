%dw 2.0
import * from dw::test::Asserts
---
vars must [
  haveKey('createSalesPriceRequest'),
  haveKey('discountValidationReq'),
  $['createSalesPriceRequest'] must equalTo({
    "id": "10",
    "productId": "TG0011",
    "quoteId": "tempor",
    "customerId": "17100001",
    "quantity": 2,
    "additionalDiscount": "-18"
  }),
  $['discountValidationReq'] must equalTo({
    "SalesOrderType": "OR",
    "SalesOrganization": "1710",
    "DistributionChannel": "10",
    "OrganizationDivision": "00",
    "SoldToParty": "17100001",
    "PurchaseOrderByCustomer": "SalesOrder Simulation",
    "to_Pricing": {},
    "to_PricingElement": [],
    "to_Item": [
      {
        "SalesOrderItem": "10",
        "Material": "TG0011",
        "RequestedQuantity": 2,
        "to_PricingElement": [
          {
            "PricingProcedureCounter": "1",
            "ConditionType": "DCM2",
            "ConditionRateValue": "-18",
            "ConditionIsManuallyChanged": true
          }
        ]
      }
    ]
  })
]