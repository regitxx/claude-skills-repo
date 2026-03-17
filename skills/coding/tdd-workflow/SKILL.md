---
name: TDD Workflow
description: Test-Driven Development guidance for writing testable, maintainable code
version: 1.0.0
tags: [testing, tdd, quality]
---

<when_to_use>
Use this skill when:
- Starting new feature development
- Teaching TDD practices to team
- Improving test coverage of existing code
- Defining test strategy for project
- Reviewing test-first designs
- Debugging complex test scenarios
</when_to_use>

<instructions>
1. **Write the Test First**
   - Define expected behavior before implementation
   - Use clear test names describing the scenario
   - Keep tests focused (one assertion per test preferred)
   - Use AAA pattern (Arrange, Act, Assert)

2. **Red Phase**
   - Write test that fails (proves test is valid)
   - Validate test catches the bug it's designed to catch
   - Don't skip this phase - it's critical

3. **Green Phase**
   - Write minimal code to pass test
   - Prioritize passing over perfect implementation
   - Ignore performance optimization at this stage
   - Add only what's necessary for the test

4. **Refactor Phase**
   - Improve code without changing behavior
   - Extract reusable components
   - Simplify and clarify intent
   - Maintain test coverage

5. **Testing Best Practices**
   - Mock external dependencies
   - Test behavior, not implementation
   - Use fixtures and factories for setup
   - Keep tests fast (milliseconds)
   - Test error paths explicitly
</instructions>

<examples>
EXAMPLE 1: Simple Feature Test-First
RED Phase: Write failing test for discount code
GREEN Phase: Implement minimal code to pass
REFACTOR Phase: Improve design and error handling

EXAMPLE 2: Testing Error Scenarios
Test password validation with edge cases
Test empty password, missing uppercase, valid password

EXAMPLE 3: Mocking External Dependencies
Mock payment gateway to test payment logic
Test both success and retry scenarios
</examples>

<guidelines>
**Do:**
- Write tests that describe behavior (clear test names)
- Test public interfaces, not private implementation
- Use mocks for external dependencies
- Keep test suites fast (parallel execution friendly)
- Maintain test code quality equal to production code
- Test happy path, error cases, and edge cases

**Don't:**
- Write tests after code (you'll skip hard tests)
- Test internal implementation details
- Create overly complex tests
- Ignore test flakiness (investigate and fix)
- Mix multiple concerns in one test

**Test Coverage Guidelines:**
- Aim for 80%+ coverage
- Critical paths: 100%
- Utilities/helpers: 70%+
- UI layer: 50%+ (harder to test)
</guidelines>