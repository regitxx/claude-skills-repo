---
name: Deployment
description: Release strategies and deployment best practices
version: 1.0.0
tags: [devops, deployment, release-management]
---

<when_to_use>
Use this skill when:
- Planning production deployments
- Implementing safe release strategies
- Managing rollbacks and incident response
- Coordinating multi-environment deployments
- Setting up blue-green or canary releases
- Creating deployment runbooks
</when_to_use>

<instructions>
1. **Plan Deployment Strategy**
   - Choose strategy: Big bang, rolling, blue-green, canary
   - Define rollback procedures
   - Plan communication and timing
   - Identify risk areas
   - Prepare monitoring dashboards

2. **Blue-Green Deployment**
   - Deploy new version to unused environment
   - Run smoke tests on new environment
   - Switch traffic (instant rollback possible)
   - Monitor for issues
   - Keep old environment for quick rollback

3. **Canary Deployment**
   - Send small percentage of traffic to new version
   - Monitor metrics and errors
   - Gradually increase percentage
   - Rollback if issues detected
   - Full deployment after validation

4. **Rolling Deployment**
   - Gradually replace old instances with new
   - Maintain service availability
   - Detect issues early
   - Longer deployment window
   - No duplicate infrastructure needed

5. **Post-Deployment**
   - Monitor error rates and performance
   - Watch for user-reported issues
   - Plan communication if problems occur
   - Keep rollback procedures ready
   - Document lessons learned
</instructions>

<examples>
EXAMPLE 1: Blue-Green Deployment
Deploy to alternate environment → Run tests → Switch traffic → Monitor

EXAMPLE 2: Canary with Kubernetes
Start with 1 replica → Monitor metrics → Scale up gradually

EXAMPLE 3: Rollback Procedure
Immediate: Switch load balancer → Verify recovery → Post-mortem
</examples>

<guidelines>
**Do:**
- Test deployments in staging first
- Use infrastructure-as-code (Terraform, Helm)
- Plan rollback procedures before deploying
- Monitor system metrics during deployment
- Have communication plan ready
- Document deployment steps
- Run smoke tests post-deployment
- Keep previous version running

**Don't:**
- Deploy directly to production
- Deploy during peak traffic hours
- Skip testing before deployment
- Deploy to all servers simultaneously
- Remove old version until stable
- Deploy late Friday/before holidays
- Assume success without monitoring
- Skip communication to team

**Monitoring Post-Deploy:**
- Error rates and exceptions
- Response times and latency
- CPU and memory usage
- Database connection pools
- Disk space and I/O
- External service availability

**Rollback Triggers:**
- Error rate > 2x baseline
- Response time > 2x baseline
- Database connection pool exhausted
- Critical feature broken
- Security vulnerability exposed
</guidelines>