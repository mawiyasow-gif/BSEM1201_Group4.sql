-- CREATING THE DATABASE
Create Database Physical_Health_Clinic_Record_System; 

-- CREATING THE TABLES
Create Table Patients ( 
    PatientID INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    FullName Varchar(100) NOT NULL,
    DateOFBirth DATE NOT NULL, 
    Gender Varchar(10) NOT NULL,
    PhoneNumber Varchar(25) NOT NULL, 
    Address Varchar(150)
 );

Create Table Health_Workers( 
    WorkerID INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    FullName Varchar(100) NOT NULL, 
    Gender Varchar(10) NOT NULL, 
    PhoneNumber Varchar(25) NOT NULL,
    Address Varchar(150), 
    Role Varchar(100)
);

Create Table Payment( 
    PaymentID INT PRIMARY KEY AUTO_INCREMENT NOT NULL, 
    PatientID INT, 
    FOREIGN KEY (PatientID) REFERENCES Patients (PatientID),
    AmountPaid INT NOT NULL,
    PaymentDate TIMESTAMP NOT NULL,
    PaymentMethod Varchar(70)
);

Create Table Diagnosis( 
    DiagnosisID INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    Description Text NOT NULL, 
    DiagnosisDate Timestamp,
    PatientID INT,
    FOREIGN KEY (PatientID) REFERENCES Patients (PatientID),
    WorkerID INT, 
    FOREIGN KEY (WorkerID) REFERENCES Health_Wokers (WorkerID)
);

Create Table Appointment(
    AppointmentID INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    AppointmentDate DATE NOT NULL,
    AppointmentTime Timestamp, 
    AppointmentStatus Varchar(30),
    PatientID INT, 
    FOREIGN KEY (PatientID) REFERENCES Patients (PatientID), 
    WorkerID INT,
    FOREIGN KEY (WorkerID) REFERENCES Health_Wokers (WorkerID)
);

Create Table Treatment( 
    TreatmentID INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    TreatmentName Varchar(100) NOT NULL, 
    Dosage Varchar(50) NOT NULL, 
    Duration Varchar(50) NOT NULL,
    PatientID INT,
    FOREIGN KEY (PatientID) REFERENCES Patients (PatientID), 
    WorkerID INT,
    FOREIGN KEY (WorkerID) REFERENCES Health_Wokers (WorkerID)
);

Create Table Inventory( 
    IventoryID INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    ItemName Varchar(100) NOT NULL, 
    Quantity INT NOT NULL, 
    UnitPrice INT NOT NULL, 
    ExpiryDate DATE,
    TreatmentID Int,
    FOREIGN KEY (TreatmentID) REFERENCES Treatment(TreatmentID)
);

Create Table Receipt( 
    ReceiptID INT PRIMARY KEY AUTO_INCREMENT NOT NULL, 
    PaymentID INT,
    FOREIGN KEY (PaymentID) REFERENCES Payment (PaymentID),
    IssueDate DATE, 
    TotalAmount INT NOT NULL
);

-- INSERTING ROWS / INFORMATION T THE TABLES 

INSERT INTO Patients(PatientID, FullName, DateOFBirth, Gender, PhoneNumber, Address)
     VALUES
         (001, 'Alhaji Mawiya Sow', '2000/3/13', 'M', '099999999', 'Rokel'),
         (002, 'Ibrahim JP kai-Samaba', '2000/5/8', 'M', '088888888','Wilberforce'), 
         (003, 'Charles N Ensah ', '2000/3/26', 'M', '077777777', 'Calabatown'), 
         (004, 'Alpha MB Jalloh 🕊️', '2000/5/7', 'M', '066666666', 'Texaco'), 
         (005, 'Isatu kabia', '2008/3/28', 'F', '078123456', 'Shell'), 
         (006, 'Lansana Kamara', '2010/6/6', 'M', '088342678', 'Waterloo'), 
         (007, 'Lamarana Mansaray', '2009/5/7', 'M', '099167492','Rokupa'), 
         (008, 'Abdul Turay', '2010/6/8', 'M', '076489120', 'Lumley'), 
         (009, 'Binta kamara', '2017/3/25', 'F', '031452983', 'Kenama'),
         (010, 'Santigie kamara', '2013/12/29', 'M', '034638201', 'Kabala'),
         (011, 'Ibrahim Koroma', '2018/9/24', 'F', 044444444, 'Bo'),
         (012, 'Amadou Conteh', '2010/12/19', 'M', 011111111, 'Kenema'),
         (013, 'Chernor Jalloh', '2019/12/31', 'M', '099912453', 'Guinea'),
         (014, 'Mohamed tely Jalloh', '2026/6/1', 'M', '034569101', 'Kailahun'),
         (015, 'Mariama kamara', '2004/6/16', 'M', '088356291', 'Kono'),
         (016, 'Ansumana Kabia', '1994/12/28', 'M', '077352971', 'Bonthe'),
         (017, 'Kabakesh Santigie', '1874/12/26', 'M', '076662233', 'Dalaba'),
         (018, 'Khadijah Bangura', '2005/4/19', 'F', '073298340', 'Calaba Town'),
         (019, 'Hassanatu Barrie', '2011/5/29', 'F', '034971752', 'Siaka Steven Street'),
         (020, 'Alhassan Dumbouya', '2001/12/7', 'M', '099347285', 'Kallon Drive');

 INSERT Into Health_Wokers (WorkerID,FullName, Gender,PhoneNumber,Address,Role)    
     VALUES
         (0001,'Alhaji Mawiya Sow', 'M',099999999, 'Rokel', 'Doctor'), 
         (0002, 'Ibrahim JP kai-Samaba', 'M', 088888888, 'Wilberforce', 'Surgeon'), 
         (0003, 'Charles N Ensah', 'M', 077777777, 'Calabatown', 'Pharmacist'), 
         (0004, 'Alpha MB Jalloh 🕊️', 'M', 066666666, 'Texaco', 'Radiologist'), 
         (0005, 'Isatu kabia', 'F', 078123456, 'Shell', 'Nurse'), 
         (0006, 'Lansana Kamara', 'M', 088342678, 'Waterloo', 'Dentist'), 
         (0007, 'Lamarana Mansaray', 'M', 099167492, 'Rokupa', 'Receptionist'), 
         (0008, 'Abdul Turay', 'M', 076489120, 'Lumley', 'Lab Technician'), 
         (0009, 'Binta kamara', 'F', 031452983, 'Kenama', 'Midwife'), 
         (0010, 'Santigie kamara', 'M',034638201, 'Kabala', 'Accountant'),
         (0011, 'Sheka Kamara ', 'M', '099246198', 'Shell New Road', 'HR'),
         (0012, 'Alusine Sow', 'M', '075347292', 'Kenema ', 'Bone Specialist'),
         (0013, 'Sabrina Kandeh', 'F', '078389120', 'Kingtom', 'IT Specialist '),
         (0014, 'Yerroh Sillah', 'F', '098298918', 'Bombali', 'Nurse'),
         (0015, 'Isatu Bah', 'F', '088235681', 'Wilberforce Street', 'Medical Doctor'), (0016, 'Aminata Bangura ', 'F', '099876543', 'Lumley Road', 'Midwife'), 
         (0017, 'Mohamed sesay', 'M', '076679202', 'Kenema', 'Surgeon'), 
         (0018, 'Hawa Jalloh', 'F', '099249110', 'Makeni', 'Pediatric Nurse'),
         (0019, 'Sahr Turker', 'F', '099234719', 'Waterloo', 'Pharmacist'), 
         (0020, 'Mariama Dumbuya', 'F', '099268191', 'Kissy Road', 'Lab Technician');

INSERT Into Treatment (TreatmentName,Dosage, Duration,PatientID,WorkerID)
     VALUES
         ('Paracetamol','500mg Every 6hrs','5 days',1,1), 
         ('Amoxicillin','500mg 3x Daily','7 days',2,2), 
         ('Artemether-Lumefantrine ','4 Tablets 2x Daily','3 Days',3,3), ('Ibuprofen','400mg Every 8hrs','5 Days', 4,4), 
         ('Metformin','500mg 2x Daily','Ongoing', 5,5), 
         ('Insulin', '10 units Before Breakfast and Dinner','Ongoing',6,6), ('VitaminC','500mg 1x Daily','14 Days',7,7),
         ('ORS', '1 Sachet in 1ltr of Water','Until Symtoms improves',8,8), ('Azithromycin','500mg 1x Daily','3 Days',9,9), 
         ('Salbutamol Inhaler','2 Puffs as needed','As Required',10,10);

INSERT Into Payment (PatientID,AmountPaid,PaymentMethod) 
     VALUES 
         (1,1000,'Cash'),
         (2,800,'Orange Money'), 
         (3,450,'AfriMoney'),
         (4,578,'QMoney'), 
         (5,223,'Wave'), 
         (6,765,'Cash'), 
         (7,678,'Orange Money'), 
         (8,345,'Cash'), 
         (9,7656,'AfriMoney'), 
         (10,656,'QMoney');

INSERT Into Inventory (ItemName, Quantity, UnitPrice, ExpiryDate, TreatmentID)
      VALUES 
         ('Paracetamol',100,10, '2026/12/31', 1), 
         ('Amoxicillin', 90,5, '2026/12/31', 2), 
         ('Artemether-Lumefantrine', 60,50, '2026/12/31', 3), 
         ('Ibuprofen', 45,28, '2026/12/31', 4), 
         ('Metformin', 50,60, '2026/12/31', 5), 
         ('Insulin', 56,75, '2026/12/31', 6), 
         ('Vitamin C', 20,5, '2026/12/31',7), 
         ('ORS', 10,2, '2026/12/31',8), 
         ('Azithromycin', 5, 45, '2026/12/31',9), 
         ('Salbutamol Inhaler', 2, 80, '2026/12/31',10);

INSERT Into Receipt(PaymentID, IssueDate, TotalAmount)
        VALUES 
         (1,'2026/6/4', 1000), 
         (2,'2026/6/4', 800), 
         (3,'2026/6/4', 450), 
         (4,'2026/6/4', 578), 
         (5,'2026/6/4', 223), 
         (6,'2026/6/4', 765), 
         (7,'2026/6/4', 678), 
         (8,'2026/6/4', 345), 
         (9,'2026/6/4', 7656), 
         (10,'2026/6/4', 656);


  