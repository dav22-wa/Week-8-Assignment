from sqlalchemy.orm import Session
from app.models import Patient

def create_patient(db: Session, patient_data):
    patient = Patient(**patient_data)
    db.add(patient)
    db.commit()
    db.refresh(patient)
    return patient

def get_patients(db: Session):
    return db.query(Patient).all()

def get_patient(db: Session, patient_id: int):
    return db.query(Patient).filter(Patient.patient_id == patient_id).first()

def update_patient(db: Session, patient_id: int, data):
    patient = db.query(Patient).filter(Patient.patient_id == patient_id).first()
    for key, value in data.items():
        setattr(patient, key, value)
    db.commit()
    return patient

def delete_patient(db: Session, patient_id: int):
    patient = db.query(Patient).filter(Patient.patient_id == patient_id).first()
    db.delete(patient)
    db.commit()
    return True
