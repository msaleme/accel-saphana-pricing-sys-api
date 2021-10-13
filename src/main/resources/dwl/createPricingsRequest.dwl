%dw 2.0
output application/json
---
/**
 * Maps CIM Pricing format to SapHana mapping
 * @table CIM,SAPHana,Description
 * @row ConditionTable,product table, ""
 * @row ConditionType,product type, ""
 * @row ConditionRateValue,unitListPrice, unit list price of product
 * @row ConditionRateValueUnit,unitListPrice,Default to "00"
 * @row to_SlsPrcgCndnRecdValidity.ConditionValidityEndDate,NA, SAP Hana Customer Id
 * @row to_SlsPrcgCndnRecdValidity.ConditionValidityStartDate,NA,Default to "Salesorder Simulation"
 * @row to_SlsPrcgCndnRecdValidity.Customer,id, Sales order Item Id
 * @row to_SlsPrcgCndnRecdValidity.Material,minRequiredOrderValue, SAP Hana Product code
 * @row to_SlsPrcgCndnRecdValidity.SalesOrganization,NA, Requested quantity of Product
 * @row to_SlsPrcgCndnRecdValidity.DistributionChannel,NA,Default to "1"
 
 */
{
	"ConditionTable": payload[0].product[0],
	"ConditionType": payload[0].product[1],
	"ConditionRateValue": payload[0].unitListPrice,
	"ConditionRateValueUnit": payload[0].unitListPrice,
	"to_SlsPrcgCndnRecdValidity": [
		{
          "ConditionValidityEndDate" : "9999-12-31T00:00:00",
         "ConditionValidityStartDate" : "2020-12-13T00:00:00",
          "Customer" : payload[0].id,
          "Material" : payload[0].minRequiredOrderValue,
          "SalesOrganization" : "",
          "DistributionChannel" : ""
        }
	]
}