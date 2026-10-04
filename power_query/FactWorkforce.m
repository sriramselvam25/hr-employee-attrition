let
    Source = Csv.Document(File.Contents(ParameterDataPath & "FactWorkforce.csv"),[Delimiter=",", Encoding=65001, QuoteStyle=QuoteStyle.Csv]),
    Headers = Table.PromoteHeaders(Source,[PromoteAllScalars=true]),
    Types = Table.TransformColumnTypes(Headers,{{"EmployeeID", type text},{"Department", type text},{"Role", type text},{"Age", Int64.Type},{"TenureYears", type number},{"MonthlyIncome", Currency.Type},{"EngagementScore", Int64.Type},{"SatisfactionScore", Int64.Type},{"Overtime", type text},{"Attrition", type text},{"RiskScore", Int64.Type}}),
    TenureBand = Table.AddColumn(Types,"TenureBand", each if [TenureYears] < 2 then "<2 years" else if [TenureYears] < 5 then "2–4 years" else if [TenureYears] < 10 then "5–9 years" else "10+ years", type text),
    RiskBand = Table.AddColumn(TenureBand,"RiskBand", each if [RiskScore] >= 70 then "High" else if [RiskScore] >= 45 then "Medium" else "Low", type text)
in
    RiskBand
