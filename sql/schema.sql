CREATE TABLE FactWorkforce (EmployeeID varchar(10) PRIMARY KEY, Department varchar(50), Role varchar(50), Age int, TenureYears decimal(5,1), MonthlyIncome decimal(18,2), EngagementScore int, SatisfactionScore int, Overtime varchar(3), Attrition varchar(3), RiskScore int);
CREATE INDEX IX_Workforce_Department ON FactWorkforce(Department);
