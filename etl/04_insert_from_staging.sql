--split data from staging_ocd table into patients, treatments,  diagnosis and symptoms table
INSERT INTO patients(
    patient_id,
	age, 
	gender, 
	ethnicity,
	marital_status,
	education_level,
	family_history_ocd
	)
SELECT
    patient_id::INT,
	age, 
	gender, 
	ethnicity,
	marital_status,
	education_level,
	family_history_ocd
FROM staging_ocd;

-- same for treatment table
INSERT INTO treatment (
    patient_id,
    medication
)
SELECT
    patient_id::INT,
    medication
FROM staging_ocd;



--same for diagnosis table
INSERT INTO diagnosis (
    patient_id,
	ocd_diagnosis_date,
	duration_months,
	previous_diagnoses,
	depression_diagnosis,
	anxiety_diagnosis
)
SELECT
    patient_id::INT,
    ocd_diagnosis_date,
	duration_months,
	previous_diagnoses,
	depression_diagnosis,
	anxiety_diagnosis
FROM staging_ocd;

--same for symptoms table
select * from patients
INSERT INTO symptoms (
    patient_id,
	obsession_type,
	compulsion_type,
	ybocs_obsessions,
	ybocs_compulsions
)
SELECT
    patient_id::INT,
	obsession_type,
	compulsion_type,
	ybocs_obsessions,
	ybocs_compulsions
FROM staging_ocd;

