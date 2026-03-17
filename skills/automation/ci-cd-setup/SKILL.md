---
name: CI/CD Setup
description: Pipeline configuration and automated testing strategies
version: 1.0.0
tags: [devops, automation, ci-cd]
---

<when_to_use>
Use this skill when:
- Setting up CI/CD pipelines for new projects
- Implementing automated testing in workflows
- Configuring deployment automation
- Optimizing pipeline performance
- Adding new CI/CD stages (security scanning, etc.)
- Troubleshooting failed builds or deployments
</when_to_use>

<instructions>
1. **Design Pipeline Architecture**
   - Identify stages: Trigger → Build → Test → Security → Deploy
   - Define job dependencies and parallelization
   - Set failure conditions and recovery
   - Plan artifact storage and cleanup
   - Design for fast feedback (minutes, not hours)

2. **Implement Testing Stages**
   - Unit tests: Fast, isolated (< 5 minutes)
   - Integration tests: With services (5-15 minutes)
   - Security scanning: Dependencies, code analysis
   - E2E tests: Real user flows (optional, slower)
   - Coverage gates: Fail if below threshold

3. **Build and Artifact Management**
   - Containerize application (Docker)
   - Generate reproducible artifacts
   - Tag versions (semantic versioning)
   - Push to registry (Docker Hub, ECR, etc.)
   - Maintain artifact retention policy

4. **Deployment Automation**
   - Define environments (dev, staging, production)
   - Implement safe deployment practices
   - Add manual gates for production
   - Implement rollback capability
   - Monitor deployment health

5. **Monitoring and Optimization**
   - Track pipeline duration and trends
   - Identify and fix slow stages
   - Set up notifications for failures
   - Maintain comprehensive logs
   - Optimize for cost and speed
</instructions>

<examples>
EXAMPLE 1: GitHub Actions Pipeline
Test in parallel → Build → Security → Deploy

EXAMPLE 2: GitLab CI Pipeline
Multi-stage pipeline with Docker services

EXAMPLE 3: Pipeline Troubleshooting
Flaky tests: Isolate state, increase timeouts
Slow builds: Enable caching, parallelize
</examples>

<guidelines>
**Do:**
- Make pipelines fast (feedback in minutes)
- Fail fast (quick tests before slow ones)
- Parallelize stages when possible
- Cache dependencies aggressively
- Provide clear error messages
- Monitor pipeline metrics
- Test the CI configuration
- Keep secrets secure

**Don't:**
- Run all tests sequentially
- Skip tests on main branch
- Deploy without automated tests
- Ignore pipeline failures
- Store secrets in code
- Leave manual processes
- Allow flaky tests (fix them)
- Run expensive operations unnecessarily

**Pipeline Best Practices:**
- Unit tests: < 5 minutes
- Integration tests: < 15 minutes
- Full pipeline: < 30 minutes
- Always test before deploying
- Require manual approval for production
- Maintain audit trail of deployments
</guidelines>