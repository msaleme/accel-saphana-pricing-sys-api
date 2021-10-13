%dw 2.0
output application/json
---

  {
    "id": vars.createSalesPriceRequest.id,
    "productId": vars.createSalesPriceRequest.productId,
    "customerId": vars.createSalesPriceRequest.customerId,
    "quoteId": vars.createSalesPriceRequest.quoteId,
    "quantity": vars.createSalesPriceRequest.quantity,
    "NetAmount": ((payload.to_PricingElement filter ($.ConditionType == "PPR0")).ConditionAmount[0]/vars.createSalesPriceRequest.quantity) as String,
    "additionalDiscount": null,
    discountValidationResponse: trim((read(error.description,"application/json")).error.message.value)

  }
