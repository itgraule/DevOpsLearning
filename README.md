# DevOpsLearning
Practices, Toos &amp; Knowledge for DevOps &amp; SRE Developers

Alright, let's break down the DevOps lifecycle into its core stages and pinpoint the essential tools to master for each:

![alt text](https://devico.io/static/images/blog/devops-development-process/essence-of-devops.webp)


## 1. Planning:

### Project Management & Collaboration:

See [Engineering Manager Roadmap](https://roadmap.sh/engineering-manager)

For issue tracking, agile planning, and project management.
- [Jira](https://www.atlassian.com/software/jira/guides/getting-started/introduction)

For documentation, knowledge sharing, and collaboration.
- [Confluence](https://www.atlassian.com/software/confluence/resources/guides/get-started/overview#about-confluence) 

For code repository management, version control, and collaboration.
- [GitHub](https://docs.github.com/en/get-started/start-your-journey/hello-world) - [Git Comands](/Git%20Comands/GItComands.md)

 
For communication and team collaboration.
- [Slack](https://slack.com/help/categories/360000049043) 
- [Microsoft Teams](https://support.microsoft.com/en-us/office/get-started-with-microsoft-teams-b98d533f-118e-4bae-bf44-3df2470c2b12)

Requirements Gathering:
- ...

For diagramming and architecture design.
- [Draw.io](https://app.diagrams.net/) 
- [Lucidchart](https://www.lucidchart.com/pages)

Tools for API design
- [Swagger](https://swagger.io/)
- [OpenAPI](https://www.openapis.org/)
- [Postman](https://www.postman.com/api-design/)

## 2. Code:

Version Control:

- [Git](/Git%20Comands/GItComands.md): Essential for code versioning and collaboration.

Code Review:
- GitHub (pull requests/merge requests).

Static application security testing (SAST)
- [SonarQube](https://www.sonarsource.com/learn/getting-started-with-sonarqube-cloud/): For code quality analysis and security.

Integrated Development Environments (IDEs):
- [VS Code](https://code.visualstudio.com/docs/getstarted/getting-started)
- IntelliJ IDEA
- xCode

## 3. Build:

Extreme Development, Pear Programming, Working in Small Batches

### Build Automation:
- [NuGet](https://www.nuget.org/PACKAGES) for [.Net](https://learn.microsoft.com/en-us/aspnet/core/tutorials/first-mvc-app/start-mvc?view=aspnetcore-9.0&tabs=visual-studio)
- [Pip](https://pypi.org/) for [Python]( https://code.visualstudio.com/docs/python/python-tutorial).
- Go Modules (for Go).
- npm/Yarn (for JavaScript).
- Docker (Create Containers)

### Continuous Integration (CI): 
Continuous Integration is building, testing, and integrating every developer change into the master branch after tests have passed. 

- [Tekton Pipelines](https://tekton.dev/docs/getting-started/)
- [GitHub Actions](https://docs.github.com/en/actions/writing-workflows/quickstart): For automated workflows.
- [Azure Pipelines](https://learn.microsoft.com/en-us/azure/devops/pipelines/create-first-pipeline?view=azure-devops): for Azure based CI/CD
- [AWS Code Piplines](https://aws.amazon.com/es/codepipeline/)
- [Google Cloud Build](https://cloud.google.com/blog/topics/developers-practitioners/devops-and-cicd-google-cloud-explained)

### Artifact Repository:
- [Azure Artifacts](https://azure.microsoft.com/es-es/products/devops/artifacts)
- Nexus/Artifactory: For storing and managing build artifacts.

### Docker Container Registry:
- [Azure Container Registry ACR](https://learn.microsoft.com/en-us/azure/devops/pipelines/ecosystems/containers/publish-to-acr?view=azure-devops)
- [Google Cloud Registry GCR](https://cloud.google.com/artifact-registry/docs/overview)
- [Amazon Elastic Container Registry ECR](https://aws.amazon.com/ecr/)
- [Docker hub](https://hub.docker.com/)

## 4. Test:
Test Driven Development, with good code coverage, testing all API end point. 

### Unit Testing:
- xUnit (C#)
- JUnit (Java)
- pytest (Python),
- Jest (JavaScript), 
- Go testing package.

### Integration Testing:
Postman, SoapUI.

### Load Test / Performance Test

### Security Testing:
- SAST tools (SonarQube).
- DAST tools (OWASP ZAP, Burp Suite).

### Container security tools 
Trivy, Clair

### Test Automation:
Selenium, Cypress.

## 5. Release:

### Continuous Delivery (CD):

Continuous Delivery ensures that code can be rapidly and safely deployed to production by delivering every change to a production-like environment. 
- Jenkins Pipelines, 
- GitLab CI/CD
- ArgoCD (GitOps)

### Infrastructure as Code (IaC):
- Terraform: For infrastructure provisioning.
- AWS CloudFormation
- GCP Cloud Deployment Manager
- Azure ARM Templates 

### Configuration Management:
- Ansible: For server configuration.
- Chef/Puppet.

### Container Orchestration:
- Kubernetes: For container deployment and management.

## 6. Deploy:

### Deployment Strategies:
- Knowledge of blue/green deployments
- canary releases.
- Kubectl (Kubernetes command line tool)

### Cloud Platforms:
AWS:

    CloudFormation, EC2, S3, RDS, DynamoDB, Lambda, API Gateway, CloudWatch, CloudTrail, IAM, VPC, EKS, ECS, CodePipeline, CodeBuild, CodeDeploy.

GCP:

    Cloud Deployment Manager, Compute Engine, Cloud Storage, Cloud SQL, Spanner, Cloud Functions, Apigee, Cloud Monitoring, Cloud Logging, IAM, VPC, GKE, Cloud Build, Cloud Deploy.

Azure:

    Azure Resource Manager (ARM), Virtual Machines, Blob Storage, Azure SQL Database, Azure Functions, API Management, Azure Monitor, Azure Active Directory, Virtual Network, AKS, Azure DevOps.


### PAAS
- Firebase 
- SuperBase 
- StrAPI 
- Herocu

### Hosting VPS Providers
- Ionos
- Docker

## 7. Operate:

### Operating Systems:
Linux: Essential for server management.
- Bash and SH Scripting 
Windows Server
- PowerShell Scripting

### Networking:
Networking
TCP/IP
DNS
Load balancing
Firewalls.

### Databases:
SQL (MySQL, PostgreSQL), 
NoSQL (MongoDB, Cassandra).


## 8. Monitor:

Key Observability, Monitoring, and Alerting Considerations:
- Metrics: Focus on key performance indicators (KPIs) like latency, error rates, throughput, and resource utilization.
- Logs: Implement centralized logging for troubleshooting and analysis.
- Traces: Use distributed tracing to understand the flow of requests and identify performance bottlenecks.
- Alerting: Set up alerts for critical events and thresholds, and integrate with incident management tools.
- Dashboards: Create informative dashboards to visualize metrics and logs.

### Monitoring:
- ELK Stack (Elasticsearch, Logstash, Kibana).
- Prometheus: For metrics collection and monitoring.
- Datadog
- Grafana: For visualization and dashboards.
- AWS CloudWatch
- GCP Cloud Monitoring
- Azure Monitor.

### Logging:
- ELK Stack (Elasticsearch, Logstash, Kibana).
- Splunk.
- Fluentd, Fluent Bit.

### Alerting:
- Grafana
- Alertmanager (Prometheus).
- CheckMK

### Tracing:
- OpenTelemetry.
- [Crashlytics](https://firebase.google.com/docs/crashlytics)
- Jaeger, Zipkin

## 9. Feedback:

### Incident Management:
Jira Service Management, PagerDuty, Opsgenie.

### Analytics:
Cloud provider analytics tools.
Splunk.

### Customer Feedback:
Tools for gathering customer feedback.

## 10. Security 
- SAST: SonarQube, Checkmarx, Snyk.
- DAST: OWASP ZAP, Burp Suite.
- Container Security: Trivy, Clair, Aqua Security.
- IaC Security: Checkov, tfsec.
- Secrets Management: HashiCorp Vault, AWS Secrets Manager, GCP Secret Manager, Azure Key Vault.
- Network Security: Security Groups, Network ACLs, Web Application Firewalls (WAFs).