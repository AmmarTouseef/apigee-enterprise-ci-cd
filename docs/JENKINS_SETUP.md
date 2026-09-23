\# Jenkins Setup



\## Jenkins Jobs



\### APIM-PR-VALIDATE

Purpose:

\- Validate XML and JSON

\- Validate Apigee bundles

\- Perform security/secret checks

\- Validate pull requests



Deployment:

\- No deployment to PREPROD or PROD



\### APIM-PREPROD-DEPLOY

Purpose:

\- Manually deploy approved configuration to Apigee PREPROD



Environment:

\- Apigee environment: `eval`



Trigger:

\- Manual



\### APIM-PROD-DEPLOY

Purpose:

\- Manually deploy an approved release to Apigee PROD



Environment:

\- Apigee environment: `prod`



Trigger:

\- Manual



Production source:

\- Immutable release tag



Approval:

\- Authenticated production approval required



\### APIM-PROD-ROLLBACK

Purpose:

\- Roll back a production deployment to a previously known-good revision or release artifact



Trigger:

\- Manual



\## Deployment Principle



GitHub is the source of truth.



Jenkins is the deployment orchestrator.



Apigee X is the runtime platform.



Production deployment must not use a mutable feature branch.

