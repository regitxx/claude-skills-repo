---
name: Monitoring
description: Observability, alerting, and incident response setup
version: 1.0.0
tags: [devops, monitoring, observability]
---

<when_to_use>
Use this skill when:
- Setting up system monitoring and observability
- Creating dashboards and alerts
- Implementing logging infrastructure
- Designing incident response workflows
- Optimizing system performance
- Debugging production issues
</when_to_use>

<instructions>
1. **Implement Metrics Collection**
   - Application metrics (requests, errors, latency)
   - System metrics (CPU, memory, disk)
   - Business metrics (revenue, signups, conversions)
   - Use consistent naming and tagging
   - Export to monitoring backend (Prometheus, etc.)

2. **Set Up Logging**
   - Structured logging (JSON format)
   - Include correlation IDs for tracing
   - Set appropriate log levels
   - Centralize logs (ELK, Datadog, etc.)
   - Index logs for searchability

3. **Create Observability**
   - Distributed tracing for request flow
   - Instrument code with trace spans
   - Connect logs, metrics, and traces
   - Visualize dependencies
   - Track request latency percentiles

4. **Design Alerting**
   - Alert on symptoms, not causes
   - Set appropriate thresholds
   - Avoid alert fatigue (tune false positives)
   - Include context in alert messages
   - Test alert delivery

5. **Build Dashboards**
   - Real-time system status
   - Key business metrics
   - Historical trends
   - Customizable by role
   - Automated incident context
</instructions>

<examples>
EXAMPLE 1: Prometheus + Grafana
Scrape metrics → Define alert rules → Visualize in Grafana

EXAMPLE 2: Structured Logging
JSON logs with correlation IDs for request tracing

EXAMPLE 3: Incident Response
Alert triggered → Triage → Mitigation → Post-incident review
</examples>

<guidelines>
**Do:**
- Monitor business metrics, not just system metrics
- Create actionable alerts (not just notifications)
- Use distributed tracing for complex systems
- Build dashboards for different audiences
- Regularly review and tune alerts
- Practice incident response procedures
- Document runbooks for common issues
- Archive and analyze incident data

**Don't:**
- Alert on every metric spike
- Use complex alert conditions
- Monitor only CPU and memory
- Skip logging of errors
- Leave alerts without action items
- Change thresholds without testing
- Ignore alert fatigue
- Assume metrics = real user impact

**Metrics to Track:**
- Request rate and errors
- Response latency (P50, P95, P99)
- Resource utilization
- Dependency health
- Business KPIs
- Deployment frequency
- Mean time to recovery (MTTR)

**Logging Best Practices:**
- Use consistent format (JSON)
- Include correlation IDs
- Set appropriate levels
- Include stack traces for errors
- Redact sensitive information
- Rotate and archive logs
- Maintain 30+ day retention
</guidelines>