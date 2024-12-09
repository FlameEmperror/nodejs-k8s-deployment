# Node.js Application with CI/CD Pipeline

This project demonstrates the implementation of a CI/CD pipeline for a simple Node.js application. The pipeline is built using GitHub Actions and automates testing, containerization, deployment, and notification processes.

---

## Features

1. **Automated Testing:** Runs unit tests on every pull request to the main branch.
2. **Dockerization:** Builds and pushes Docker images to Docker Hub.
3. **Kubernetes Deployment:** Deploys the application to a Kubernetes cluster using declarative manifests.
4. **Notification System:** Sends deployment status updates (success/failure) to Slack.

---

## Technology Stack

- **Programming Language:** Node.js
- **CI/CD Tool:** GitHub Actions
- **Containerization:** Docker
- **Orchestration:** Kubernetes
- **Notification Service:** Slack (via Incoming Webhooks)