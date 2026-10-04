"""Generate deterministic synthetic workforce data for Project 4."""
import csv, random
random.seed(404)
deps=["Technology","Sales","Operations","Finance","HR","Customer Success"]
roles=["Analyst","Senior Analyst","Lead","Manager","Specialist"]
with open("FactWorkforce.csv","w",newline="") as f:
 w=csv.writer(f); w.writerow(["EmployeeID","Department","Role","Age","TenureYears","MonthlyIncome","EngagementScore","SatisfactionScore","Overtime","Attrition","RiskScore"])
 for i in range(1,5001):
  tenure=round(random.uniform(.1,14),1); engage=random.randint(1,5); sat=random.randint(1,5); overtime=random.choice(["Yes","No"])
  risk=min(100,max(1,round(22+(6-engage)*8+(6-sat)*7+(15 if overtime=="Yes" else 0)+(12 if tenure<2 else 0)+random.gauss(0,8))))
  attr="Yes" if random.random()<(.04+risk/550) else "No"
  w.writerow([f"E{i:05d}",random.choice(deps),random.choice(roles),random.randint(21,60),tenure,random.randint(30000,180000),engage,sat,overtime,attr,risk])
print("Generated 5,000 synthetic employee records.")
