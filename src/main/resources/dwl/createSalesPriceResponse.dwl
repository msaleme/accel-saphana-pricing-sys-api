%dw 2.0
output application/json
---
 {
    id:payload.to_Item[0].SalesOrderItem,
    productId: payload.to_Item[0].Material,
    customerId: payload.SoldToParty,
    quoteId:"tempor",
    quantity: payload.to_Item[0].RequestedQuantity,
    //netUnitPrice: ((payload.to_Item[0].NetAmount)/payload.to_Item[0].RequestedQuantity) as String,
	netUnitPrice:  (payload.to_Item[0].NetAmount/payload.to_Item[0].RequestedQuantity) as String,
    currency:payload.TransactionCurrency,
    additionalDiscount: ((payload.to_Item[0].to_PricingElement filter ($.ConditionIsManuallyChanged == true and $.ConditionType == "DCM2")).ConditionRateValue[0] default 0) as String,
    taxAmount: payload.to_Item[0].TaxAmount as String,
    discountValidationResponse: "valid discount"
     
}