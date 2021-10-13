%dw 2.0
import * from dw::test::Asserts
---
vars must [
  haveKey('unitPriceReq'),
  $['unitPriceReq'] must equalTo({
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
        "RequestedQuantity": 2
      }
    ]
  })
]