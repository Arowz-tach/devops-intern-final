# DevOps Intern Final Assessment

![CI](https://github.com/Arowz-tach/devops-intern-final/actions/workflows/ci.yml/badge.svg)

**Name:** Riliwan Arowolo
**Date:** July 2026
**Description:** A complete DevOps workflow demonstrating 
Git/GitHub, Linux scripting, Docker, CI/CD with GitHub 
Actions, Nomad job deployment, and monitoring with 
Grafana Loki.

## Project Structure
- scripts/ — Linux shell scripts
- Dockerfile — Containerizes hello.py
- .github/workflows/ci.yml — CI/CD pipeline
- nomad/hello.nomad — Nomad job deployment
- monitoring/loki_setup.txt — Loki monitoring setup

## How to Run
See individual sections below for each component.

## Docker Instructions

Build the image:
docker build -t devops-intern-final .

Run the container:
docker run devops-intern-final

## Nomad Job Deployment

Nomad is used to schedule and run the Docker container 
as a job.

Start the Nomad agent in dev mode (separate terminal):
nomad agent -dev

Run the job:
nomad job run nomad/hello.nomad

Check status:
nomad job status hello

View logs:
nomad alloc logs <allocation-id>

### Note
The job is defined as type "service" which expects a 
long-running process. Since hello.py prints once and 
exits, Nomad repeatedly restarts the allocation, showing 
"failed" status even though the container runs and prints 
"Hello, DevOps!" successfully each time — confirmed via 
nomad alloc logs. In production this would instead be 
defined as type "batch" for one-off tasks.
