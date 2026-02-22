CREATE TABLE patients (
    patient_id INT PRIMARY KEY,
    age INT,
    gender TEXT,
    ethnicity TEXT,
    marital_status TEXT,
    education_level TEXT,
    family_history_ocd TEXT
);

CREATE TABLE diagnosis (
	patient_id INT,
    ocd_diagnosis_date DATE,
    duration_months INT,
    previous_diagnoses TEXT,
    depression_diagnosis TEXT,
    anxiety_diagnosis TEXT,
    FOREIGN KEY (patient_id) REFERENCES patients(patient_id)
);

CREATE TABLE symptoms (
    patient_id INT,
    obsession_type TEXT,
    compulsion_type TEXT,
    ybocs_obsessions INT,
    ybocs_compulsions INT,
    FOREIGN KEY (patient_id) REFERENCES patients(patient_id)
);

CREATE TABLE treatment (
    patient_id INT,
    medication TEXT,
    FOREIGN KEY (patient_id) REFERENCES patients(patient_id)
);