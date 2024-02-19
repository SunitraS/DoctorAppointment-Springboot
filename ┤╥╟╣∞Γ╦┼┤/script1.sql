;             
CREATE USER IF NOT EXISTS "ROOT" SALT '89b9dbc2c4da8fc9' HASH '7359c8b7f32c4c891aecd80fae0196abe15a0b1d037259f8a521ef5f5e041e75' ADMIN;       
CREATE MEMORY TABLE "PUBLIC"."APPOINTMENT"(
    "APP_ID" VARCHAR(255) NOT NULL,
    "DATE" VARCHAR(255),
    "DOC_ID" VARCHAR(255),
    "DOC_NAME" VARCHAR(255),
    "DOC_SPECIAL" VARCHAR(255),
    "EMAIL" VARCHAR(255),
    "STATUS" VARCHAR(255)
);               
ALTER TABLE "PUBLIC"."APPOINTMENT" ADD CONSTRAINT "PUBLIC"."CONSTRAINT_2" PRIMARY KEY("APP_ID");              
-- 0 +/- SELECT COUNT(*) FROM PUBLIC.APPOINTMENT;             
CREATE MEMORY TABLE "PUBLIC"."DOCTOR"(
    "EMAIL" VARCHAR(255) NOT NULL,
    "CITY" VARCHAR(255),
    "DEGREE" VARCHAR(255),
    "NAME" VARCHAR(255),
    "PASSWORD" VARCHAR(255),
    "SPECIALIZATION" VARCHAR(255),
    "STATE" VARCHAR(255)
);    
ALTER TABLE "PUBLIC"."DOCTOR" ADD CONSTRAINT "PUBLIC"."CONSTRAINT_7" PRIMARY KEY("EMAIL");    
-- 5 +/- SELECT COUNT(*) FROM PUBLIC.DOCTOR;  
INSERT INTO "PUBLIC"."DOCTOR" VALUES
('doc1@example.com', 'Bangkok', 'MD', 'Dr. Smith', 'password1', 'Cardiology', 'Bangkok'),
('doc2@example.com', 'Chiang Mai', 'MD', 'Dr. Johnson', 'password2', 'Dermatology', 'Chiang Mai'),
('doc3@example.com', 'Phuket', 'MD', 'Dr. Williams', 'password3', 'Orthopedics', 'Phuket'),
('doc4@example.com', 'Pattaya', 'MD', 'Dr. Taylor', 'password4', 'Neurology', 'Chonburi'),
('doc5@example.com', 'Ayutthaya', 'MD', 'Dr. Brown', 'password5', 'Pediatrics', 'Ayutthaya');   
CREATE MEMORY TABLE "PUBLIC"."PERSON"(
    "EMAIL" VARCHAR(255) NOT NULL,
    "PASSWORD" VARCHAR(255)
);   
ALTER TABLE "PUBLIC"."PERSON" ADD CONSTRAINT "PUBLIC"."CONSTRAINT_8" PRIMARY KEY("EMAIL");    
-- 1 +/- SELECT COUNT(*) FROM PUBLIC.PERSON;  
INSERT INTO "PUBLIC"."PERSON" VALUES
('sunitraprivate@gmail.com', '1234');   
