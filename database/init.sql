CREATE TABLE doctors (
  id SERIAL PRIMARY KEY,
  name VARCHAR(100),
  specialty VARCHAR(100),
  email VARCHAR(100) UNIQUE,
  password VARCHAR(100)
);

CREATE TABLE patients (
  id SERIAL PRIMARY KEY,
  name VARCHAR(100),
  email VARCHAR(100) UNIQUE,
  password VARCHAR(100)
);

CREATE TABLE appointments (
  id SERIAL PRIMARY KEY,
  patient_id INTEGER REFERENCES patients(id),
  doctor_id INTEGER REFERENCES doctors(id),
  appointment_date TIMESTAMP
);

CREATE TABLE prescriptions (
  id SERIAL PRIMARY KEY,
  patient_id INTEGER REFERENCES patients(id),
  doctor_id INTEGER REFERENCES doctors(id),
  details TEXT,
  issued_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);