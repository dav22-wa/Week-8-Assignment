# 🏥 Clinic Booking System

## 📌 Project Description

A MySQL-based relational database designed to manage a clinic's booking system. It includes information about patients, doctors, specializations, and appointments, allowing staff to efficiently manage patient scheduling and records.

## 🗃️ Database Entities

- **Patients**: Stores patient information.
- **Doctors**: Contains doctor profiles and specializations.
- **Specializations**: Medical specialties like Cardiologist, Dermatologist, etc.
- **Appointments**: Links patients to doctors with date, reason, and status.

## 🔗 Relationships

- Each doctor belongs to a specialization.
- Each appointment links a doctor and a patient.
- One-to-Many and Many-to-One constraints modeled through foreign keys.

## 🛠️ How to Use

1. Clone the repository
2. Open your MySQL client (e.g., phpMyAdmin, MySQL Workbench)
3. Run the `clinic_booking.sql` file to create and populate the database

```bash
mysql -u your_user -p < clinic_booking.sql
