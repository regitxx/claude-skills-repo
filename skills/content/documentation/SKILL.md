---
name: Documentation
description: Comprehensive API references, guides, and system documentation
version: 1.0.0
tags: [documentation, reference, guides]
---

<when_to_use>
Use this skill when:
- Building API reference documentation
- Creating user guides and manuals
- Writing architecture decision records
- Documenting system design
- Creating integration guides
- Building internal runbooks
</when_to_use>

<instructions>
1. **Information Architecture**
   - Organize by user journey (onboarding → advanced)
   - Group related concepts together
   - Create clear navigation hierarchy
   - Use consistent structure across docs
   - Link concepts to prevent duplication

2. **Document Types**
   - **Reference:** Complete specification of API/system
   - **Guide:** How-to for common tasks
   - **Tutorial:** Step-by-step learning path
   - **Troubleshooting:** Problem → solution
   - **Architecture:** System design decisions

3. **Structure Templates**
   - Overview: What and why
   - Prerequisites: What's needed first
   - Concepts: Key terminology and ideas
   - Usage: How to use the feature
   - Examples: Common use cases
   - Reference: Complete specification
   - Troubleshooting: Problems and solutions

4. **Ensure Completeness**
   - Define all terms and concepts
   - Cover both common and edge cases
   - Explain reasoning and constraints
   - Provide examples for each feature
   - Document limitations clearly

5. **Maintain Quality**
   - Keep docs in sync with code
   - Review and update regularly
   - Version documentation with releases
   - Track broken links
   - Test all examples
</instructions>

<examples>
EXAMPLE 1: API Reference Document
Include endpoint specifications, error responses, rate limits

EXAMPLE 2: Troubleshooting Guide
Organize by symptom, with causes and solutions

EXAMPLE 3: Architecture Decision Record (ADR)
Context, decision, rationale, consequences
</examples>

<guidelines>
**Do:**
- Start with overview before details
- Use clear, consistent structure
- Include examples for every feature
- Keep paragraphs short (3-5 sentences)
- Define all technical terms
- Test all code examples
- Link to related documentation
- Version docs with releases

**Don't:**
- Assume deep knowledge
- Write overly long sections
- Mix multiple topics
- Leave broken links
- Provide incomplete examples
- Ignore edge cases
- Forget troubleshooting section
- Allow stale information

**Navigation & Organization:**
- Clear section hierarchy
- Consistent link structure
- Breadcrumb navigation
- Search functionality if possible
- Table of contents for long docs
- Links between related topics
</guidelines>