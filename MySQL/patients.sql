CREATE TABLE patients (
    patient_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    date_of_birth DATE
);

CREATE TABLE demographics (
    demographic_id INT PRIMARY KEY AUTO_INCREMENT,
    patient_id INT UNIQUE,
    preferred_pronouns VARCHAR(15),
    languages_spoken TEXT,
    address TEXT,
    phone_number VARCHAR(15),
    email VARCHAR(100),
    FOREIGN KEY (patient_id) REFERENCES patients(patient_id)
);

CREATE TABLE patient_preferences (
    patient_preferences_id INT PRIMARY KEY AUTO_INCREMENT,
    demographic_id INT UNIQUE, 
    patient_id INT UNIQUE,
    favorite_food VARCHAR(100),
    favorite_shows VARCHAR(100),
    hobbies VARCHAR(100),
    FOREIGN KEY (patient_id) REFERENCES patients(patient_id),
    FOREIGN KEY (demographic_id) REFERENCES demographics(demographic_id)
);
