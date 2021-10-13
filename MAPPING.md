# getPricingByIdResponse

## Mapping Tables

Maps CIM Pricing format to SapHana mapping 

> | CIM | SAPHana | Description | 
> | ---- |---- |---- |
> | maxRequiredOrderValue | MaximumConditionAmount |  "" | 
> | id | ConditionRecord |  "" | 
> | unitListPrice | ConditionScaleAmount |  unit list price of product | 


# createSalesPriceRequest

## Mapping Tables

Maps CIM Pricing format to SapHana mapping 

> | CIM | SAPHana | Description | 
> | ---- |---- |---- |
> | NA | SalesOrderType |  Default to "OR" | 
> | NA | SalesOrganization |  Default to "1710" | 
> | NA | DistributionChannel | Default to "10" | 
> | NA | OrganizationDivision | Default to "00" | 
> | customerId | SoldToParty |  SAP Hana Customer Id | 
> | NA | PurchaseOrderByCustomer | Default to "Salesorder Simulation" | 
> | id | to_Item.SalesOrderItem |  Sales order Item Id | 
> | productId | to_Item.Material |  SAP Hana Product code | 
> | quantity | to_Item.RequestedQuantity |  Requested quantity of Product | 
> | NA | to_PricingElement.PricingProcedureCounter | Default to "1" | 
> | NA | to_PricingElement.ConditionType |  Condition Type for discount "DCM2" | 
> | additionalDiscount | to_PricingElement.ConditionRateValue |  Additional Discount to be validated | 
> | NA | to_PricingElement.ConditionIsManuallyChanged |  Default to "true" | 


# createSalesPriceResponse

# createPricingsRequest

## Mapping Tables

Maps CIM Pricing format to SapHana mapping 

> | CIM | SAPHana | Description | 
> | ---- |---- |---- |
> | ConditionTable | product table |  "" | 
> | ConditionType | product type |  "" | 
> | ConditionRateValue | unitListPrice |  unit list price of product | 
> | ConditionRateValueUnit | unitListPrice | Default to "00" | 
> | to_SlsPrcgCndnRecdValidity.ConditionValidityEndDate | NA |  SAP Hana Customer Id | 
> | to_SlsPrcgCndnRecdValidity.ConditionValidityStartDate | NA | Default to "Salesorder Simulation" | 
> | to_SlsPrcgCndnRecdValidity.Customer | id |  Sales order Item Id | 
> | to_SlsPrcgCndnRecdValidity.Material | minRequiredOrderValue |  SAP Hana Product code | 
> | to_SlsPrcgCndnRecdValidity.SalesOrganization | NA |  Requested quantity of Product | 
> | to_SlsPrcgCndnRecdValidity.DistributionChannel | NA | Default to "1" | 


# getPricingListResponse

## Mapping Tables

Maps CIM Pricing format to SapHana mapping 

> | CIM | SAPHana | Description | 
> | ---- |---- |---- |
> | maxRequiredOrderValue | MaximumConditionAmount |  "" | 
> | id | ConditionRecord |  "" | 
> | unitListPrice | ConditionScaleAmount |  unit list price of product | 


# createSalesPriceErrorResponse

# createPricingsResponse

# createSalesPriceUnitPriceRequest

# getPricingByIdRequest

# createSalesPriceDiscountRequest

## Mapping Tables

Maps CIM Pricing format to SapHana mapping 

> | CIM | SAPHana | Description | 
> | ---- |---- |---- |
> | NA | SalesOrderType |  Default to "OR" | 
> | NA | SalesOrganization |  Default to "1710" | 
> | NA | DistributionChannel | Default to "10" | 
> | NA | OrganizationDivision | Default to "00" | 
> | customerId | SoldToParty |  SAP Hana Customer Id | 
> | NA | PurchaseOrderByCustomer | Default to "Salesorder Simulation" | 
> | id | to_Item.SalesOrderItem |  Sales order Item Id | 
> | productId | to_Item.Material |  SAP Hana Product code | 
> | quantity | to_Item.RequestedQuantity |  Requested quantity of Product | 
> | NA | to_PricingElement.PricingProcedureCounter | Default to "1" | 
> | NA | to_PricingElement.ConditionType |  Condition Type for discount "DCM2" | 
> | additionalDiscount | to_PricingElement.ConditionRateValue |  Additional Discount to be validated | 
> | NA | to_PricingElement.ConditionIsManuallyChanged |  Default to "true" | 


