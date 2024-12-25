-- Active: 1735154969910@@127.0.0.1@5432@postgres
CREATE SCHEMA Hospital;
CREATE TABLE Patient_table(
    Patient_id INT PRIMARY KEY,
    Patient_Name VARCHAR(100),
    Age INT,
    Gender VARCHAR(10),
    Allergies VARCHAR(100),
    Contact_info VARCHAR(20),
    Medical_history VARCHAR(1000)
);


drop TABLE doctor;
DROP Table patient_table;


CREATE TABLE hospital.Patient_table(
    Patient_id INT PRIMARY KEY,
    Patient_Name VARCHAR(100),
    Age INT,
    Gender VARCHAR(10),
    Allergies VARCHAR(100),
    Contact_info VARCHAR(20),
    Medical_history VARCHAR(1000)
);

select * from hospital.patient_table;
