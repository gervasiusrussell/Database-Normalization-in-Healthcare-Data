# 📊 Database Normalization in Healthcare Data

The project demonstrates the process of **database normalization** using a healthcare dataset, identifying anomalies, and designing a structured relational schema up to **Third Normal Form (3NF)**.

---

## 📌 Project Overview

The project focuses on transforming raw healthcare data (UNF) into a structured, efficient, and anomaly-free relational database.

### Key Objectives:

* Reduce redundancy and inconsistency in hospital and patient data
* Improve data retrieval efficiency
* Minimize anomalies during insertion, update, and deletion
* Design an ERD and SQL implementation of normalized data

---

## 🏥 Dataset

We used the [Healthcare Dataset](https://www.kaggle.com/datasets/prasad22/healthcare-dataset) from Kaggle.

* **Original Data**: 55,500 rows, 15 attributes
* **Modified Data**: 100 rows, 25 attributes (with added IDs and relational attributes)

### Example Attributes:

* Patient Information (Name, Age, Gender, Blood Type, Medical Condition)
* Hospital Information (Hospital Name, City, Address, Doctor)
* Admission & Transaction Details (Admission Type, Billing Amount, Insurance Provider)
* Medical Details (Medication, Test Results)

---

## 🔎 Process & Methodology

1. **Unnormalized Form (UNF)**

   * Raw data with redundancy and multivalued attributes.

2. **First Normal Form (1NF)**

   * Ensured atomic values, removed repeating groups.

3. **Second Normal Form (2NF)**

   * Removed partial dependency, created separate tables (Patients, Doctors, Hospitals, Admissions).

4. **Third Normal Form (3NF)**

   * Removed transitive dependency by introducing new tables (Payments, Medications, City).

5. **Entity-Relationship Diagram (ERD)**

   * Designed ERD to represent the final database schema.

---

## ⚠️ Anomaly Scenarios Addressed

* **Medical Condition Update**: Handling critical patient condition changes.
* **Extended Hospital Stay**: Updating admission, billing, and scheduling consistently.

---

## 📂 Repository Contents

* `Finalized Laporan AOL DB.docx` — Final report documentation
* `.sql` Scripts — [Google Drive Link](https://drive.google.com/drive/folders/1UAg-ARDzzQzMCprjDmv7QvV3Fgf1l2E-?usp=sharing)

---

## 📈 Results & Conclusion

* Normalization successfully reduced data redundancy and anomalies.
* The final 3NF schema supports efficient, reliable, and scalable database management for healthcare systems.
* Demonstrates the importance of structured data in critical industries like healthcare.

---

## 📚 References

* Codd, E. F. (1970). *A Relational Model of Data for Large Shared Data Banks*.
* Alfia, N. E. (2020). *Perancangan Aplikasi Retensi Data Pada Database MySQL*.
* [Telkom University: Pengertian Data](https://telkomuniversity.ac.id/pengertian-data-fungsi-jenis-jenis-manfaat-dan-contohnya/)

---

## 🏫 Course Information

* **Course**: AOL Database Technology (COMP6799001)
* **University**: Bina Nusantara University
* **Year**: 2024

---
