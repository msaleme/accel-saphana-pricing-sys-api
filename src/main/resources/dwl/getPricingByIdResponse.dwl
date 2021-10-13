%dw 2.0
output application/json
---
/**
 * Maps CIM Pricing format to SapHana mapping
 * @table CIM,SAPHana,Description
 * @row maxRequiredOrderValue,MaximumConditionAmount, ""
 * @row id,ConditionRecord, ""
 * @row unitListPrice,ConditionScaleAmount, unit list price of product
 */
{
	maxRequiredOrderValue: payload.MaximumConditionAmount,
	id: payload.ConditionRecord,
	unitListPrice: payload.ConditionScaleAmount
	
}