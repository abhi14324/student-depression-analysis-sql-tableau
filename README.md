# Student Depression Analysis using SQL and Tableau

A Tableau-based analytical dashboard developed to study student depression-related patterns using structured SQL data.

This project focuses on understanding how sleep duration, study hours, academic pressure, study satisfaction, and financial stress relate to student mental health indicators.

The dashboard transforms student behavioral data into clear visual insights for educational and mental health analysis.

---

## Project Objective

The objective of this project is to analyze student lifestyle and academic factors that may influence depression-related patterns.

The dashboard helps answer:

* How sleep duration varies across student groups
* How study hours differ among students
* Which satisfaction levels dominate academic behavior
* How academic pressure is distributed
* How financial stress affects student count

---

## Tools Used

* SQL
* Tableau

---

## Data Source

The dataset was structured using SQL and then connected to Tableau for dashboard creation.

The data contains student-related attributes such as:

* sleep duration
* study hours
* study satisfaction
* academic pressure
* financial stress
* student count

---

## Dashboard Overview

This dashboard contains a single analytical page with multiple focused visuals.

---

# Visuals Included

---

## Sleep Duration vs Student Count

This visual compares student counts across sleep duration groups.

### Categories included:

* 5–6 hours
* 7–8 hours
* Less than 5 hours
* More than 8 hours

### Observation

Student counts remain relatively balanced across sleep duration categories.

---

## Study Hours vs Student Count

This visual tracks student count against study hours.

### Observation

Student count varies across different study hour levels, with peaks visible at higher hour ranges.

---

## Study Satisfaction vs Student Count

This visual compares satisfaction levels:

* SS-1
* SS-2
* SS-3
* SS-4
* SS-5

### Observation

Study satisfaction level 4 shows the highest student count.

---

## Academic Pressure vs Student Count

Academic pressure categories analyzed:

* AP-1
* AP-2
* AP-3
* AP-4
* AP-5

### Observation

Academic pressure level 3 has the highest concentration.

---

## Financial Stress vs Student Count

Financial stress categories:

* FS-1
* FS-2
* FS-3
* FS-4
* FS-5

### Observation

Lower financial stress groups show slightly higher counts.

---

## SQL Work Included

SQL was used to prepare and organize the student dataset before dashboard creation.

### Example Queries

```sql id="m0pc1h"
SELECT SleepDuration, COUNT(*) AS StudentCount
FROM Student_Depression
GROUP BY SleepDuration;
```

```sql id="z6u42t"
SELECT StudyHours, COUNT(*) AS StudentCount
FROM Student_Depression
GROUP BY StudyHours;
```

```sql id="r8myjo"
SELECT AcademicPressure, COUNT(*) AS StudentCount
FROM Student_Depression
GROUP BY AcademicPressure;
```

```sql id="prj0sq"
SELECT FinancialStress, COUNT(*) AS StudentCount
FROM Student_Depression
GROUP BY FinancialStress;
```

---

## Key Insights

* Sleep duration distribution remains balanced
* Study satisfaction level 4 has highest count
* Academic pressure level 3 dominates
* Financial stress remains moderately distributed

---

## Repository Structure

```text id="jv2o7g"
student-depression-analysis-sql-tableau/
│
├── dataset/
│   └── student_depression_dataset.csv
│
├── sql_queries/
│   └── student_queries.sql
│
├── screenshots/
│   └── student_depression_dashboard.png
│
├── documentation/
│   └── Student_Depression_Project_Documentation.docx
│
├── Student_Depression_Dashboard.twb
│
└── README.md
```

---

## Future Improvements

* Add KPI summary cards
* Add gender-based mental health analysis
* Add age-group filtering
* Add correlation analysis

---

## Author

Abhishek Kumar
