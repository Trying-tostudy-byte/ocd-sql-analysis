# OCD Clinical Data Analysis (SQL Project)

## Overview
This project analyzes clinical and demographic patterns in OCD patients
using PostgreSQL. The dataset is event-level and was normalized into
relational tables.

## Database Design
- patients (1 row per patient)
- diagnosis (1-to-many)
- symptoms (1-to-many)
- treatment (1-to-many)

## ETL Process
1. Loaded CSV into staging table
2. Normalized into 4 relational tables
3. Added surrogate primary keys
4. Performed analytical queries

## Analysis Questions
- Average age by gender
- Most common comorbidities
- Average symptom severity
- Obsession type frequency
- Depression prevalence
- Gender-based severity differences
- Co-occurrence of depression and anxiety

## Skills Demonstrated
- Data normalization
- Foreign key relationships
- Aggregations
- Conditional counting
- Multi-table joins
- Event-level vs patient-level reasoning
