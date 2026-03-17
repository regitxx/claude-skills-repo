---
name: Data Analysis
description: Statistical analysis, data visualization, and insight extraction
version: 1.0.0
tags: [analytics, statistics, data-science]
---

<when_to_use>
Use this skill when:
- Extracting insights from datasets
- Identifying trends and patterns
- Testing hypotheses with statistical rigor
- Creating data visualizations
- Building dashboards for stakeholders
- Debugging anomalies in data
</when_to_use>

<instructions>
1. **Understand the Data**
   - Source and collection method
   - Data quality issues and biases
   - Sample size and representativeness
   - Time period covered
   - Relevant context and metadata

2. **Exploratory Analysis**
   - Summary statistics (mean, median, std dev)
   - Distribution analysis (normal, skewed, etc.)
   - Correlation analysis
   - Outlier detection and assessment
   - Missing data patterns

3. **Hypothesis Testing**
   - State null and alternative hypotheses
   - Choose appropriate statistical test
   - Calculate p-values and confidence intervals
   - Interpret results with caution
   - Consider practical significance vs statistical significance

4. **Create Visualizations**
   - Choose appropriate chart types for data
   - Ensure clarity and accessibility
   - Highlight key insights
   - Provide context and labeling
   - Avoid misleading scales or truncation

5. **Generate Insights**
   - Answer the original business question
   - Identify actionable recommendations
   - Note limitations and assumptions
   - Suggest further investigation areas
   - Communicate uncertainty appropriately
</instructions>

<examples>
EXAMPLE 1: User Engagement Analysis
FINDING: 15% power users generate 80% of engagement
RECOMMENDATION: VIP program focused on retention

EXAMPLE 2: Hypothesis Testing
TEST: Dark mode improves retention by 2%
RESULT: Statistically significant at p < 0.05
DECISION: Worth deploying

EXAMPLE 3: Anomaly Detection
SPIKE: Saturday sales 2.1x average
CAUSE: Holiday effect (expected)
ACTION: Use separate forecasting model for holidays
</examples>

<guidelines>
**Do:**
- Start with exploratory data analysis
- Verify data quality before analysis
- Consider confounding variables
- Report confidence intervals, not just point estimates
- Use appropriate statistical tests for data type
- Show visualizations to stakeholders
- Document all assumptions
- Consider practical significance

**Don't:**
- Trust p-values alone
- Confuse correlation with causation
- Mine data looking for significant results (p-hacking)
- Use complex techniques when simple ones work
- Ignore missing data or outliers
- Truncate axes to exaggerate effects
- Extrapolate beyond data range
- Draw conclusions beyond sample scope

**Test Selection:**
- Continuous data: t-test, ANOVA, regression
- Categorical data: Chi-square, Fisher's exact test
- Time series: ARIMA, exponential smoothing
- Large datasets: Non-parametric tests (more robust)
</guidelines>