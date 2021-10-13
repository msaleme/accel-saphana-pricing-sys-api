%dw 2.0
output application/json
---
/**
 * Maps CIM Pricing format to SapHana mapping
 * @table CIM,SAPHana,Description
 * @row NA,SalesOrderType, Default to "OR"
 * @row NA,SalesOrganization, Default to "1710"
 * @row NA,DistributionChannel,Default to "10"
 * @row NA,OrganizationDivision,Default to "00"
 * @row customerId,SoldToParty, SAP Hana Customer Id
 * @row NA,PurchaseOrderByCustomer,Default to "Salesorder Simulation"
 * @row id,to_Item.SalesOrderItem, Sales order Item Id
 * @row productId,to_Item.Material, SAP Hana Product code
 * @row quantity,to_Item.RequestedQuantity, Requested quantity of Product
 * @row NA,to_PricingElement.PricingProcedureCounter,Default to "1"
 * @row NA,to_PricingElement.ConditionType, Condition Type for discount "DCM2"
 * @row additionalDiscount,to_PricingElement.ConditionRateValue, Additional Discount to be validated
 * @row NA,to_PricingElement.ConditionIsManuallyChanged, Default to "true"
 */
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
            "RequestedQuantity": payload.quantity,
            "to_PricingElement": [
            {
                "PricingProcedureCounter": "1",
                "ConditionType": "DCM2",
                "ConditionRateValue": payload.additionalDiscount,
                "ConditionIsManuallyChanged": true
            }]

        }
       ]
}