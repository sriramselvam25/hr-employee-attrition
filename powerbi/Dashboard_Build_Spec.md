# Workforce & Attrition Analytics — Power BI Dashboard Build Specification

## Visual direction
Theme: **People & Talent**

Palette: Purple #8B5CF6 · Blue #3B82F6 · Rose #F43F5E · Orange #F97316 · Green #22C55E

Typography: Segoe UI / Aptos. Use 28–32 px page titles, 22–28 px KPI values, 12–14 px chart titles and 10–12 px labels. Maintain consistent spacing and alignment across all pages.

## Canvas system
- 16:9 report canvas
- Header: page title, context subtitle, last-refresh indicator
- Filter rail: date + project-specific dimensions
- KPI row: six primary cards with variance/status badges
- Main analytical zone: 2–4 high-value visuals per page
- Insight strip: concise interpretation / recommended action
- Footer: synthetic-data disclosure

## KPIs
- Headcount
- Attrition Rate
- Average Tenure
- Engagement Score
- New Hires
- High-Risk Employees

## Pages
### 1. Workforce Overview
Executive KPI row plus primary trend, contribution and exception visuals.

### 2. Attrition Intelligence
Diagnostic views with selectable categories, comparison states and contextual tooltips.

### 3. Employee & Department Insights
Detailed performance views with drill-down, ranking and contribution analysis.

### 4. Talent Risk & Actions
Forward/action-oriented views combining trends, drivers, risks and recommendations.

## Visual inventory
- Headcount and exits timeline
- Department attrition lollipop chart
- Tenure-band distribution
- Role × satisfaction heatmap
- Hiring vs exits area/line chart
- Risk-factor decomposition / key influencers

## Interaction requirements
1. Selecting a visual category cross-filters relevant visuals on the page.
2. Hover/tap tooltips show current value, comparison value, variance and context.
3. Drill-through retains filter context.
4. Date slicers synchronize across report pages where appropriate.
5. KPI cards show directional icons plus text status; do not rely on color alone.
6. Timeline charts use a consistent time grain and expose month/quarter/year hierarchy.
7. Reset Filters returns the page to the designed default state.

## Visual consistency rules
- Use the theme palette consistently but give each series a stable semantic role.
- Limit chart clutter; prioritize direct labels where readable.
- Use playful shapes/accents in headers and section separators, not behind dense data.
- Preserve whitespace around KPI cards and charts.
- Keep decimal precision consistent by metric type.
- Use the same font family, corner radius and tooltip layout across the report.
- Negative finance/attrition/risk states receive explicit warning labels as well as color.

## Report narrative
Expose where attrition risk concentrates and translate workforce signals into practical retention priorities.
