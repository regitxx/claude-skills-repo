---
name: Code Review
description: Comprehensive code review covering security, performance, best practices, and maintainability
version: 1.0.0
tags: [coding, security, quality-assurance]
---

<when_to_use>
Use this skill when:
- Reviewing pull requests before merge
- Evaluating code for production deployment
- Assessing security vulnerabilities and OWASP compliance
- Identifying performance bottlenecks
- Ensuring adherence to coding standards
- Onboarding new developers to review patterns
</when_to_use>

<instructions>
1. **Security Analysis**
   - Check for injection vulnerabilities (SQL, XSS, command)
   - Verify authentication/authorization patterns
   - Identify exposed secrets or credentials
   - Review dependency versions for known CVEs
   - Validate input sanitization and output encoding

2. **Performance Review**
   - Identify algorithmic inefficiencies (O(n²) loops, etc.)
   - Check for N+1 query problems
   - Review memory management and leaks
   - Evaluate caching strategies
   - Look for unnecessary computations

3. **Code Quality**
   - Verify error handling and logging
   - Check test coverage (aim for >80%)
   - Review function complexity (max 10-15 lines per function)
   - Validate naming conventions and documentation
   - Check for code duplication (DRY principle)

4. **Architecture**
   - Verify separation of concerns
   - Check for proper abstraction levels
   - Validate dependency injection patterns
   - Review API design consistency
   - Assess maintainability and extensibility

5. **Reporting**
   - Categorize findings (Critical, High, Medium, Low)
   - Provide specific line references
   - Suggest concrete fixes
   - Praise good patterns and decisions
</instructions>

<examples>
EXAMPLE 1: Security Issue
[CRITICAL] SQL Injection Vulnerability
Fix: Use parameterized queries

EXAMPLE 2: Performance
[HIGH] N+1 Query Problem
Fix: Use batch queries or eager loading

EXAMPLE 3: Code Quality
[MEDIUM] Code Clarity Issues
Improved: Clear variable names and error handling
</examples>

<guidelines>
**Do:**
- Provide specific line numbers and code snippets
- Explain the "why" behind recommendations
- Offer concrete fixes and alternatives
- Balance between strictness and pragmatism
- Prioritize security and correctness over style

**Don't:**
- Make nitpicky style comments (use linters)
- Suggest rewrites for working code
- Miss common vulnerabilities (OWASP top 10)
- Ignore test coverage and documentation

**Severity Levels:**
- CRITICAL: Security risk, data loss, production crash
- HIGH: Performance impact, maintainability issue
- MEDIUM: Code clarity, testability concern
- LOW: Style, naming convention, minor optimization
</guidelines>