CREATE TABLE Dokter(
	Doctor_ID CHAR(5) PRIMARY KEY,
	Doctor_Name VARCHAR(50),
	Doctor_Speciality VARCHAR(50)
)


CREATE TABLE Pasien(
	Patient_ID CHAR(5) PRIMARY KEY,
	Patient_Name VARCHAR(50),
	Patient_DOB DATE,
	Patient_Gender VARCHAR(10),
	Patient_BloodType VARCHAR(5)
)
CREATE TABLE Kota(
	City_Code CHAR(3) PRIMARY KEY,
	City_Name VARCHAR(50)
)

CREATE TABLE Rumah_Sakit(
	Hospital_ID char(5) PRIMARY KEY,
	Hospital_Name VARCHAR(50),
	Hospital_Address VARCHAR(100),
	City_Code CHAR(3)

	FOREIGN KEY (City_Code) REFERENCES Kota(City_Code)
)


CREATE TABLE Kunjungan_Checkup_Pasien(
	Admission_ID CHAR(5) PRIMARY KEY,
	Hospital_ID Char(5),
	Doctor_ID Char(5),
	Patient_ID Char(5),
	Visit_Date DATE,
	Discharge_Date DATE,
	Room_Number INT

	FOREIGN KEY (Hospital_ID) REFERENCES Rumah_Sakit(Hospital_ID),
	FOREIGN KEY (Doctor_ID) REFERENCES Dokter(Doctor_ID),
	FOREIGN KEY (Patient_ID) REFERENCES Pasien(Patient_ID)
)

CREATE TABLE Admisi(
	Admission_ID CHAR(5),
	Admission_Type VARCHAR(50),
	Admission_Medical_Condition VARCHAR(50)

	FOREIGN KEY (Admission_ID) REFERENCES Kunjungan_Checkup_Pasien(Admission_ID),
)

CREATE TABLE Pengobatan(
	Medical_ID CHAR(7) PRIMARY KEY,
	Medication VARCHAR(50),
	Test_Result VARCHAR(50)
)

CREATE TABLE Proses_Pengobatan(
	Admission_ID CHAR(5),
	Medical_ID CHAR(7)

	FOREIGN KEY (Admission_ID) REFERENCES Kunjungan_Checkup_Pasien(Admission_ID),
	FOREIGN KEY (Medical_ID) REFERENCES Pengobatan(Medical_ID)
)

CREATE TABLE Pembayaran(
	Transaction_ID CHAR(5) PRIMARY KEY,
	Billing_Amount DECIMAL,
	Insurance_Provider VARCHAR(50)
)

CREATE TABLE Proses_Pembayaran(
	Admission_ID CHAR(5),
	Transaction_ID CHAR(5)

	FOREIGN KEY (Admission_ID) REFERENCES Kunjungan_Checkup_Pasien(Admission_ID),
	FOREIGN KEY (Transaction_ID) REFERENCES Pembayaran(Transaction_ID)
)

INSERT INTO Dokter (Doctor_ID, Doctor_Name, Doctor_Speciality)
VALUES 
('DR040', 'Emily Taylor', 'Endocrinologist'),
('DR048', 'Heather Smith', 'Endocrinologist'),
('DR045', 'Kristin Martinez', 'Oncologist'),
('DR043', 'Matthew Thomas', 'Pulmonologist'),
('DR041', 'William Reynolds', 'Internist');

INSERT INTO Pasien (Patient_ID, Patient_Name, Patient_DOB, Patient_Gender, Patient_BloodType)
VALUES 
('PT054', 'Peggy Lee', '2008-04-19', 'Female', 'A-'),
('PT044', 'Katherine Smith', '1970-10-19', 'Female', 'AB+'),
('PT040', 'Pamela Fernandez', '1958-06-30', 'Female', 'B-'),
('PT048', 'Chris Frye', '1957-09-30', 'Male', 'A-'),
('PT053', 'Jesse Banks', '1998-06-13', 'Female', 'AB+');

INSERT INTO Pengobatan (Medical_ID, Medication, Test_Result)
VALUES 
('MD04054', 'Lipitor', 'Abnormal'),
('MD00044', 'Paracetamol', 'Normal'),
('MD03040', 'Penicillin', 'Abnormal'),
('MD02048', 'Aspirin', 'Normal'),
('MD03053', 'Penicillin', 'Inconclusive');

INSERT INTO Pembayaran (Transaction_ID, Billing_Amount, Insurance_Provider)
VALUES 
('TR054', 6767.63, 'AXA Mandiri'),
('TR044', 21784.45, 'BCALife'),
('TR040', 32973.94, 'BPJS'),
('TR048', 36992.27, 'Sequis'),
('TR053', 21879.53, 'Asuransi Sinarmas');

INSERT INTO Kota (City_Code, City_Name)
VALUES 
('JKT', 'Jakarta'),
('BDG', 'Bandung'),
('TGR', 'Tangerang'),
('BKS', 'Bekasi');

INSERT INTO Rumah_Sakit (Hospital_ID, Hospital_Name, Hospital_Address, City_Code)
VALUES 
('HC001', 'Bethsaida', 'Jl. Kebon Jeruk', 'JKT'),
('HC002', 'Eka Hospital', 'Jl. Soedirman', 'JKT'),
('HC003', 'Mitra Keluarga', 'Jl. Pungkur', 'BDG'),
('HC004', 'Royal Taruma', 'Jl. Teuku Umar', 'BDG'),
('HC005', 'RS PIK', 'Jl. M.T. Haryono', 'TGR');


INSERT INTO Proses_Pembayaran (Admission_ID, Transaction_ID)
VALUES 
('AD054', 'TR054'),
('AD044', 'TR044'),
('AD040', 'TR040'),
('AD048', 'TR048'),
('AD053', 'TR053');

INSERT INTO Proses_Pengobatan (Admission_ID, Medical_ID)
VALUES 
('AD054', 'MD04054'),
('AD044', 'MD00044'),
('AD040', 'MD03040'),
('AD048', 'MD02048'),
('AD053', 'MD03053');

INSERT INTO Admisi (Admission_ID, Admission_Type, Admission_Medical_Condition)
VALUES 
('AD054', 'Elective', 'Obesity'),
('AD044', 'Urgent', 'Obesity'),
('AD040', 'Urgent', 'Obesity'),
('AD048', 'Urgent', 'Diabetes'),
('AD053', 'Urgent', 'Cancer');


INSERT INTO Kunjungan_Checkup_Pasien 
VALUES 
('AD054', 'HC001', 'DR040', 'PT054', '2022-04-08', '2022-04-13', 180),
('AD044', 'HC001', 'DR040', 'PT044', '2021-06-09', '2021-07-01', 410),
('AD040', 'HC001', 'DR040', 'PT040', '2021-01-17', '2021-01-29', 272),
('AD048', 'HC001', 'DR048', 'PT048', '2020-05-04', '2020-05-13', 413),
('AD053', 'HC001', 'DR045', 'PT053', '2022-10-29', '2022-11-20', 492);
 
SELECT * FROM Dokter;
SELECT * FROM Pasien;
SELECT * FROM Kota;
SELECT * FROM Rumah_Sakit;
SELECT * FROM Kunjungan_Checkup_Pasien;
SELECT * FROM Admisi;
SELECT * FROM Pengobatan;
SELECT * FROM Proses_Pengobatan;
SELECT * FROM Pembayaran;
SELECT * FROM Proses_Pembayaran;


