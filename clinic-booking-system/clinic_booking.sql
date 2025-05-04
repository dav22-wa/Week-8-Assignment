-- DROP TABLES IF THEY EXIST (for clean re-run)
DROP TABLE IF EXISTS appointments;
DROP TABLE IF EXISTS patients;
DROP TABLE IF EXISTS doctors;
DROP TABLE IF EXISTS specializations;

-- TABLE: specializations
-- Each doctor has one specialization (e.g., Dermatologist, Pediatrician)
CREATE TABLE specializations (
    specialization_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL UNIQUE
);

-- TABLE: doctors
-- Basic info about doctors
CREATE TABLE doctors (
    doctor_id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    phone_number VARCHAR(20),
    specialization_id INT,
    FOREIGN KEY (specialization_id) REFERENCES specializations(specialization_id)
);

-- TABLE: patients
-- Basic info about patients
CREATE TABLE patients (
    patient_id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    date_of_birth DATE,
    gender ENUM('Male', 'Female', 'Other'),
    phone_number VARCHAR(20)
);

-- TABLE: appointments
-- Records of appointments between patients and doctors
CREATE TABLE appointments (
    appointment_id INT AUTO_INCREMENT PRIMARY KEY,
    patient_id INT NOT NULL,
    doctor_id INT NOT NULL,
    appointment_date DATETIME NOT NULL,
    reason TEXT,
    status ENUM('Scheduled', 'Completed', 'Cancelled') DEFAULT 'Scheduled',
    FOREIGN KEY (patient_id) REFERENCES patients(patient_id),
    FOREIGN KEY (doctor_id) REFERENCES doctors(doctor_id)
);

-- --------------------------------------
-- SAMPLE DATA INSERTS
-- --------------------------------------

-- Specializations
INSERT INTO specializations (name) VALUES
('General Physician'),
('Cardiologist'),
('Dermatologist'),
('Pediatrician');

-- Doctors
INSERT INTO doctors (full_name, email, phone_number, specialization_id) VALUES
('Dr. Alice Maina', 'alice.maina@clinic.com', '+254701234567', 1),
('Dr. Brian Otieno', 'brian.otieno@clinic.com', '+254702345678', 2),
('Dr. Carol Wanjiku', 'carol.wanjiku@clinic.com', '+254703456789', 3);

-- Patients
INSERT INTO patients (full_name, email, date_of_birth, gender, phone_number) VALUES
('John Doe', 'john.doe@gmail.com', '1990-05-10', 'Male', '+254711112222'),
('Jane Mwangi', 'jane.mwangi@gmail.com', '1985-08-20', 'Female', '+254722223333'),
('Kelvin Kiptoo', 'kelvin.kiptoo@gmail.com', '2000-02-15', 'Male', '+254733334444');

-- Appointments
INSERT INTO appointments (patient_id, doctor_id, appointment_date, reason, status) VALUES
(1, 1, '2025-05-06 09:00:00', 'General Checkup', 'Scheduled'),
(2, 2, '2025-05-06 10:00:00', 'Heart Palpitations', 'Scheduled'),
(3, 3, '2025-05-07 11:00:00', 'Skin Rash', 'Scheduled');
