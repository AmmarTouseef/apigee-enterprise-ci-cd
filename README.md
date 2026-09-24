# apigee-enterprise-ci-cd

Enterprise CI/CD implementation for Apigee X using GitHub and Jenkins

Local repository connected successfully.

## CI/CD Pipeline



This repository manages Apigee X deployments through GitHub and Jenkins.



\### Environments



\- PREPROD: `eval`

\- PROD: `prod`



\### Deployment Flow



GitHub → Jenkins → Apigee X



\### Components



\- API Proxies

\- Shared Flows

\- Target Servers

\- KVMs

\- Validation Scripts

\- Deployment Scripts

\- PREPROD Jenkins Pipeline

\- PROD Jenkins Pipeline


## Release Process

The repository follows an approval-based release workflow.

### Release Flow

1. Development changes are made on a feature branch.
2. A Pull Request is created against `main`.
3. Required reviewers review and approve the Pull Request.
4. After approval, the Pull Request is merged into `main`.
5. An authorized release user creates an immutable release tag.
6. Jenkins uses the approved release tag for deployment.
7. PREPROD deployment is performed and validated.
8. Production deployment requires the appropriate approval.
9. Jenkins deploys the approved release tag to PROD.
10. Post-deployment smoke tests and audit activities are performed.

### Release Tag Example

```text
v1.0.0
```
