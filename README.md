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
