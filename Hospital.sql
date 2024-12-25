
'''Creating schema called 'Hospital' '''
CREATE SCHEMA Hospital;

''' creating Patient_table name table in Hospital schema '''
CREATE TABLE hospital.Patient_table(
    Patient_id INT PRIMARY KEY,
    Patient_Name VARCHAR(100),
    Age INT,
    Gender VARCHAR(10),
    Allergies VARCHAR(100),
    Contact_info VARCHAR(20),
    Medical_history VARCHAR(1000)
);


''' Creating Doctor_table in Hospital schema '''
CREATE TABLE Hospital.Doctor_table(
    Doctor_id INT PRIMARY KEY,
    Doctor_Name VARCHAR(50),
    Specilization VARCHAR(50),
    Patients_managed INT
);



''' Creating Appointments_Table table in Hospital schema '''
CREATE TABLE hospital.Appointments_table(
    Appointment_id INT PRIMARY KEY,
    Patient_id INT NOT NULL,
    Doctor_id INT NOT NULL,
    Date_Time TIMESTAMP,
    Notes VARCHAR(100), 
	FOREIGN KEY (patient_id) REFERENCES patient_table(patient_id),
    FOREIGN KEY (doctor_id) REFERENCES doctor_table(doctor_id)
);


''' Creating Medications_table table in Hospital schema '''
CREATE TABLE hospital.medication_table(
    patient_id INT,
    doctor_id INT,
    medicines VARCHAR(20),
    FOREIGN KEY (patient_id) REFERENCES patient_table(patient_id),
    FOREIGN KEY (doctor_id) REFERENCES doctor_table(doctor_id)
);