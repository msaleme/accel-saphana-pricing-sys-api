%dw 2.0
output application/json
---
{
    "SalesOrderType": "OR",
    "SalesOrganization": "1710",
    "DistributionChannel": "10",
    "OrganizationDivision": "00",
    "SoldToParty": payload.customerId,
    "PurchaseOrderByCustomer": "SalesOrder Simulation",
    "to_Pricing": {},
    "to_PricingElement": [],
    "to_Item": 
       [
        {
            "SalesOrderItem": payload.id,
            "Material": payload.productId,
            "RequestedQuantity": payload.quantity

        }
       ]
}