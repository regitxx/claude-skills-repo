---
name: Architecture Review
description: System design evaluation focusing on scalability, maintainability, and design patterns
version: 1.0.0
tags: [architecture, design, systems]
---

<when_to_use>
Use this skill for:
- Evaluating system architecture before implementation
- Assessing scalability and performance implications
- Reviewing design pattern application
- Identifying architectural debt and refactoring opportunities
- Advising on microservices vs monolithic tradeoffs
- Database and caching strategy evaluation
</when_to_use>

<instructions>
1. **Assess Current Design**
   - Document existing architecture (layers, components, dependencies)
   - Identify architectural patterns being used
   - Map data flows and communication paths
   - Evaluate separation of concerns
   - Check for circular dependencies

2. **Scalability Analysis**
   - Identify bottlenecks (CPU, memory, I/O, network)
   - Assess horizontal vs vertical scaling potential
   - Review caching strategy effectiveness
   - Evaluate database indexing and query performance
   - Consider load distribution mechanisms

3. **Design Pattern Evaluation**
   - Verify correct pattern application
   - Check for anti-patterns (tight coupling, god objects)
   - Assess dependency injection and inversion of control
   - Review error handling architecture
   - Validate state management patterns

4. **Technology Choices**
   - Assess appropriateness of tech stack
   - Evaluate database choice (SQL vs NoSQL)
   - Review messaging/queue technology fit
   - Consider infrastructure requirements
   - Assess long-term maintainability

5. **Recommendations**
   - Prioritize improvements (quick wins vs long-term)
   - Provide specific implementation guidance
   - Suggest refactoring strategies
   - Document architectural decision records (ADRs)
</instructions>

<examples>
EXAMPLE 1: Monolith to Microservices
[HIGH] Extract payment service to reduce coupling
Benefit: Independent scaling, isolated failure domains

EXAMPLE 2: Database Design
[HIGH] Implement time-range partitioning for scalability
Current: Single table with 100M rows/day growth
Fix: Monthly partitions with automatic archival

EXAMPLE 3: Dependency Coupling
[HIGH] Use event bus instead of direct service dependencies
Benefit: Services deployable independently
</examples>

<guidelines>
**Do:**
- Draw diagrams (ASCII or references) to clarify designs
- Prioritize recommendations by business impact
- Consider team size and capability
- Account for migration costs vs benefits
- Reference established patterns (12-factor app, SOLID, etc.)

**Don't:**
- Recommend solutions without understanding constraints
- Suggest "use microservices everywhere"
- Ignore operational complexity (deployment, monitoring)
- Dismiss current architecture without justification
- Make premature optimization recommendations

**Key Considerations:**
- Team size: 1-3 people (keep simple), 10+ people (enable modularity)
- Growth trajectory: 1K→1M users requires different approaches
- Compliance needs: Regulated industries need different patterns
</guidelines>