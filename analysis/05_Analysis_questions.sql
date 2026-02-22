--1. Average Age by Gender
SELECT 
    p.gender,
    ROUND(AVG(p.age), 2) AS avg_age_at_diagnosis,
    COUNT(*) AS patient_count
FROM patients p
GROUP BY p.gender;



--2.Most Frequent Comorbid Conditions
SELECT 
    d.previous_diagnoses, COUNT(d.previous_diagnoses) AS occurrence_count
FROM diagnosis d
WHERE d.previous_diagnoses IS NOT NULL
GROUP BY d.previous_diagnoses
ORDER BY occurrence_count DESC;



--3.What is the average total Y-BOCS score?
SELECT 
    ROUND(AVG(ybocs_obsessions + ybocs_compulsions), 2) AS avg_total_score
FROM symptoms;


--4.What are the most common obsession types?
SELECT 
    obsession_type, COUNT(obsession_type) AS occurrence_count
FROM symptoms
GROUP BY obsession_type
ORDER BY occurrence_count DESC;




--5.What percentage of patients have depression?

SELECT 
    ROUND(100* COUNT(DISTINCT CASE 
	WHEN depression_diagnosis ='Yes'
	THEN patient_id
	END)/COUNT(DISTINCT patient_id),2
	) AS percentage_depression
	FROM diagnosis


--6.Which gender has higher average severity?
SELECT 
    p.gender,
    ROUND(AVG(s.ybocs_obsessions + s.ybocs_compulsions), 2) AS avg_severity
FROM patients p
JOIN symptoms s 
    ON p.patient_id = s.patient_id
GROUP BY p.gender;


--7.How many patients have both depression AND anxiety?
SELECT 
    COUNT(DISTINCT patient_id) AS both_conditions
FROM diagnosis
WHERE depression_diagnosis = 'Yes'
  AND anxiety_diagnosis = 'Yes';