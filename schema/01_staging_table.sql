CREATE TABLE staging_ocd (
    patient_id INT,
    age INT,
    gender TEXT,
    ethnicity TEXT,
    marital_status TEXT,
    education_level TEXT,
	ocd_diagnosis_date DATE,
    duration_months INT,
    previous_diagnoses TEXT,
	family_history_ocd TEXT,
    obsession_type TEXT,
    compulsion_type TEXT,
    ybocs_obsessions INT,
    ybocs_compulsions INT,
	depression_diagnosis TEXT,
    anxiety_diagnosis TEXT,
    medication TEXT
);

\copy staging_ocd
FROM 'C:\Users\path to\ocd_patients_data.csv'
DELIMITER ','
CSV HEADER;

