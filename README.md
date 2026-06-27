# 🏥 Healthcare Management System Database

## Overview

The Healthcare Management System Database is a relational database developed using MySQL to support the management of healthcare services in clinics and hospitals. It provides a structured and centralized way to store, organize, and manage healthcare information such as patient records, appointments, diagnoses, treatments, health workers, inventory, payments, and receipts.

The database is designed using relational database principles, ensuring data integrity through the use of primary keys, foreign keys, and well-defined relationships between tables.

## Objectives

The objectives of this project are to:
	•	Design a centralized healthcare database.
	•	Store patient information securely.
	•	Manage appointments between patients and healthcare workers.
	•	Record diagnoses and treatments.
	•	Track medicine and medical inventory.
	•	Store payment and receipt information.
	•	Maintain accurate records for healthcare workers.
	•	Ensure data consistency and integrity through relational database design.

## Technologies Used
	•	Database Management System: MySQL
	•	Database Design: Relational Database Model
	•	Language: SQL (Structured Query Language)

## Database Tables

The system consists of the following tables:
	1.	Patients
	2.	Appointments
	3.	Diagnosis
	4.	Treatment
	5.	Health Workers
	6.	Inventory
	7.	Payments
	8.	Receipts

## Entity Relationships

The database includes the following relationships:
	•	One Patient can have many Appointments.
	•	One Patient can have many Diagnoses.
	•	One Patient can receive many Treatments.
	•	One Patient can make many Payments.
	•	One Payment generates one Receipt.
	•	One Health Worker can attend many Patients.
	•	One Health Worker can make many Diagnoses.
	•	One Health Worker can provide many Treatments.
	•	One Inventory item can be used in many Treatments.

These relationships are enforced using primary and foreign keys to maintain referential integrity.

## Features
	•	Patient record management
	•	Appointment management
	•	Diagnosis records
	•	Treatment records
	•	Health worker management
	•	Inventory management
	•	Payment tracking
	•	Receipt generation
	•	Secure relational database structure
	•	Data integrity using constraints

## Database Design

The database was designed following normalization principles to minimize data redundancy and improve efficiency. Each table contains a primary key for unique identification, while foreign keys establish relationships between related tables.

## Installation
	1.	Install MySQL Server.
	2.	Open MySQL Workbench (or any MySQL client).
	3.	Create a new database.
	4.	Import the provided SQL script.
	5.	Execute the SQL statements to create all tables and relationships.
	6.	Verify that all tables have been created successfully.

## Learning Outcomes

This project demonstrates practical knowledge of:
	•	Database design
	•	Relational database concepts
	•	SQL programming
	•	Entity-Relationship (ER) modeling
	•	Primary and foreign keys
	•	Data normalization
	•	Data integrity and consistency

### Author
  Developed By: Alhaji Mawiya T. Sow
  Developed By: Ibrahim JP Kai-Samba
  Developed By: Mohamed Alimu Jalloh

### License

  This project was developed for academic purposes only and is intended to demonstrate database design and SQL implementation skills.


## Conclusion

The Healthcare Management System Database provides a reliable and well-structured solution for storing and managing healthcare information. Through the use of relational database principles, SQL, and proper table relationships, the system ensures efficient data storage, minimizes redundancy, and maintains data integrity. It serves as a solid foundation for healthcare information management and demonstrates the practical application of database design concepts in solving real-world healthcare data management challenges.
