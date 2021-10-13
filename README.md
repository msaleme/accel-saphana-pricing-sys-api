# accel-saphana-pricing-sys-api

The Pricing  HANA System API is used to query or create Pricing in S/4HANA. The target system can be replaced with a system of choice.

## Available Operations

### Query Pricing 

The `get:/pricing` endpoint is used to retrieve multiple pricing from the S/4 HANA system. The response format is JSON.

### Query Pricing  By Id

The `get:/pricing/{priceId}` endpoint is used to retrive a pricing from SAP S/4 HANA by its ID. The response format is JSON.

### Validate Additional Discount

The `post:\prices\salesPrice` endpoint is used to validate aditional discount and retrieve net unit price. The response format is JSON.



## Installation instructions For Studio

The following instructions assume you have already configured your Maven 
`settings.xml` file according to the Setup Guide.

- Clone the project using any Github client or Anypoint Studio Git plugin
- Import the project into your workspace
- Modify the `config-local.yaml` properties appropriately
- To run the project, right-click the project and select Run As --> Mule Application

## Deployment instructions For CloudHub

Ensure the Maven profile `CloudHub-DEV` has been properly configured in your 
`settings.xml` file. In particular, make sure the Anypoint MQ client ID and secret 
are provided.

Update the `config-dev.yaml` properties appropriately and then use one of the following 
scripts to deploy application to Cloud Hub:
   
- packageDeploy.sh or deployOnly.sh (Mac/Linux)
- packageDeploy.cmd or deployOnly.cmd (Windows)
