-- write a SQL query to fi nd the average per-pupil expenditure. 
-- Name the column “Average District Per-Pupil Expenditure”.


SELECT AVG("per_pupil_expenditure") 
AS "Average District Per-Pupil Expenditure" 
FROM "expenditures";