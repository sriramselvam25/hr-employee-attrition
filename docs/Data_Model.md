# Data Model — Project 4

## Analytical model
**FactWorkforce** contains one current synthetic employee record per EmployeeID.

Dimensions:
- **DimDepartment** → Department
- **DimRole** → Role
- **DimTenureBand** → derived tenure grouping
- **DimRiskBand** → Low / Medium / High

For timeline reporting, a separate synthetic **FactWorkforceMovement** is recommended at month-event grain for hires/exits.

## Filter behavior
Department and Role dimensions filter workforce facts one-way. Risk and tenure bands support diagnostic slicing without ambiguous relationships.
