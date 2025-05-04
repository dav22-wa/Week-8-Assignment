# 🩺 Clinic Booking System API (FastAPI + MySQL)

A FastAPI-based RESTful API for managing clinic appointments, doctors, patients, and specializations. The backend is powered by **MySQL** and **SQLAlchemy ORM**.

---

## 📦 Technologies Used

- 🐍 Python 3.10+
- ⚡ FastAPI
- 🗄️ MySQL
- 🔗 SQLAlchemy ORM
- 🔐 Pydantic
- 🧪 Uvicorn (development server)

---

## 🧱 API Features

- 🔹 Create, read, update, and delete **patients**
- 🔹 [Upcoming] CRUD for **doctors**, **appointments**, and **specializations**
- 🔐 Handles foreign key relationships with SQLAlchemy
- 🗂 Organized using modular architecture (`app/` folder)

---

## 🛠️ Setup Instructions

### 1. Clone this repo

```bash
git clone https://github.com/YOUR-USERNAME/clinic-api.git
cd clinic-api


## Create a virtual environment
python -m venv venv
source venv/bin/activate  # On Windows: venv\Scripts\activate


## Install dependencies

pip install -r requirements.txt

## Configure the database

Edit app/database.py and update this line with your MySQL credentials:

DATABASE_URL = "mysql+mysqlconnector://username:password@localhost/clinic_db"


## Run the API

uvicorn app.main:app --reload

Access the interactive docs:

Swagger UI: http://localhost:8000/docs

ReDoc: http://localhost:8000/redoc


## File Structure

clinic-api/
├── app/
│   ├── main.py          # API routes
│   ├── models.py        # SQLAlchemy models
│   ├── crud.py          # CRUD functions
│   └── database.py      # DB connection
├── clinic_booking.sql   # MySQL schema & sample data
├── requirements.txt
└── README.md


## 📌 Endpoints (Patients)
Method	Endpoint	Description
GET	/patients	List all patients
GET	/patients/{id}	Get patient by ID
POST	/patients	Add a new patient
PUT	/patients/{id}	Update patient info
DELETE	/patients/{id}	Delete a patient

## ✍️ Author
Name: David Waihenya

Email: davidwaihenya254@gmail.com


