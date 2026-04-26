# 🎓 Student Depression Analysis using SQL and Tableau

![SQL](https://img.shields.io/badge/SQL-Server-blue?logo=microsoftsqlserver&logoColor=white)
![Tableau](https://img.shields.io/badge/Tableau-Dashboard-orange?logo=tableau&logoColor=white)
![Status](https://img.shields.io/badge/Status-Completed-brightgreen)
![Records](https://img.shields.io/badge/Dataset-502%20Records-purple)
![Topic](https://img.shields.io/badge/Topic-Mental%20Health-pink)

---

## 📌 Project Overview

This project presents an **end-to-end mental health analytics solution** for a student population, covering sleep behavior, academic pressure, study satisfaction, financial stress, and depression outcomes.

The project combines:
- 🗄️ **SQL Server** — Data cleaning, transformation & exploratory analysis
- 📊 **Tableau** — Interactive analytical dashboard

> The dataset was structured and cleaned using SQL Server and analyzed in Tableau to produce behavioral and mental health insights across multiple student lifestyle factors.

---

## 🎯 Project Objectives

This project answers key mental health questions such as:

- How does sleep duration vary across student groups?
- How does academic pressure relate to depression outcomes?
- Which study satisfaction level is most common among students?
- How does financial stress affect the student population?
- What percentage of students experience depression?
- How do gender and age group relate to depression?

---

## 📊 Dashboard Screenshot

### Student Depression Analysis Dashboard
![Student Depression Dashboard](screenshots/student_depression_dashboard.png)

---

## 🛠️ Tools & Technologies

| Tool | Purpose |
|---|---|
| SQL Server | Data cleaning and transformation |
| T-SQL | Querying and exploratory analysis |
| Tableau Desktop | Dashboard development |
| Tableau Public | Dashboard sharing |
| Excel | Raw dataset storage |

---

## 📁 Project Structure

```
student-depression-analysis-sql-tableau/
│
├── dataset/
│   └── student_depression_dataset.xlsx        ← Raw dataset (502 rows)
│
├── sql_queries/
│   └── student_queries.sql                    ← All cleaning & analysis queries
│
├── screenshots/
│   └── student_depression_dashboard.png       ← Dashboard preview
│
├── documentation/
│   └── Student_Depression_Project_Documentation.docx
│
├── Student_Depression_Analysis.twbx           ← Tableau workbook file
│
└── README.md
```

---

## 📋 Dataset Description

The dataset contains **502 student records** with **12 columns**:

| Column | Description |
|---|---|
| Gender | Male / Female |
| Age | Student age (18–35) |
| Age Group | A1 (18–24) / A2 (25–30) / A3 (31+) |
| Academic Pressure | Scale 1–5 (Low to High) |
| Study Satisfaction | Scale 1–5 (Low to High) |
| Sleep Duration | Less than 5 hrs / 5–6 hrs / 7–8 hrs / More than 8 hrs |
| Dietary Habits | Healthy / Moderate / Unhealthy |
| Have You Ever Had Suicidal Thoughts | Yes / No |
| Study Hours | Hours studied per day (0–12) |
| Financial Stress | Scale 1–5 (Low to High) |
| Family History of Mental Illness | Yes / No |
| Depression | Yes / No |

---

## 💡 Key SQL Work

### Data Cleaning Steps

```sql
-- Standardize Gender values
UPDATE Depression_Student_Dataset
SET Gender = 'M' WHERE Gender = 'Male'

UPDATE Depression_Student_Dataset
SET Gender = 'F' WHERE Gender = 'Female'

-- Convert Depression from numeric to readable labels
UPDATE Depression_Student_Dataset
SET Depression = 'Yes' WHERE Depression = '1'

UPDATE Depression_Student_Dataset
SET Depression = 'No' WHERE Depression = '0'

-- Add Age Group column
ALTER TABLE Depression_Student_Dataset
ADD Age_Group VARCHAR(MAX)

UPDATE Depression_Student_Dataset
SET Age_Group =
  CASE
    WHEN Age BETWEEN 18 AND 24 THEN 'A1'
    WHEN Age BETWEEN 25 AND 30 THEN 'A2'
    ELSE 'A3'
  END
```

### Exploratory Queries

```sql
-- Sleep duration distribution
SELECT Sleep_Duration, COUNT(*) AS StudentCount
FROM Depression_Student_Dataset
GROUP BY Sleep_Duration

-- Academic pressure distribution
SELECT Academic_Pressure, COUNT(*) AS StudentCount
FROM Depression_Student_Dataset
GROUP BY Academic_Pressure

-- Study satisfaction distribution
SELECT Study_Satisfaction, COUNT(*) AS StudentCount
FROM Depression_Student_Dataset
GROUP BY Study_Satisfaction

-- Financial stress distribution
SELECT Financial_Stress, COUNT(*) AS StudentCount
FROM Depression_Student_Dataset
GROUP BY Financial_Stress

-- Depression outcome count
SELECT Depression, COUNT(*) AS StudentCount
FROM Depression_Student_Dataset
GROUP BY Depression

-- Age group distribution
SELECT Age_Group, COUNT(*) AS StudentCount
FROM Depression_Student_Dataset
GROUP BY Age_Group
```

---

## 📈 Tableau Dashboard

### Student Depression Analysis Dashboard
> Student lifestyle and mental health pattern overview

**KPI Cards:** Total Students · Depression Rate · Suicidal Thoughts Rate · Gender Split · Age Group Distribution

**Visuals:**
- Sleep Duration vs Student Count (Bubble Chart)
- Study Hours vs Student Count (Area Chart)
- Study Satisfaction vs Student Count (Bar Chart)
- Academic Pressure vs Student Count (Bar Chart)
- Financial Stress vs Student Count (Bubble Chart)

**Key Insights:**
- 😴 Sleep duration is evenly distributed across all categories (~123–128 students each)
- 📚 Study satisfaction level 4 (High) has the highest student count at 116
- 🎓 Academic pressure level 3 (Moderate) dominates with 125 students
- 💸 Lower financial stress groups show higher student counts (FS-1: 110 students)
- 📖 Higher study hours (10–12 hrs) show increased student concentration

---

## 🔍 Key Findings

| # | Finding | Result |
|---|---|---|
| 1 | Sleep duration pattern | Evenly distributed (~123–128 per group) |
| 2 | Top study satisfaction level | Level 4 — High (116 students) |
| 3 | Dominant academic pressure level | Level 3 — Moderate (125 students) |
| 4 | Lowest financial stress group | FS-1 has highest count (110 students) |
| 5 | Peak study hours | 10–12 hours per day |
| 6 | Age group with most students | A1 — 18 to 24 years |
| 7 | Depression outcome | Significant portion report Yes |
| 8 | Suicidal thoughts | Majority report Yes across groups |
| 9 | Family history impact | Present in a notable share of students |
| 10 | Dietary habits | Moderate diet is most common |

---

## 🚀 Future Improvements

- [ ] Add a KPI card showing overall depression rate (%)
- [ ] Add gender-based mental health analysis
- [ ] Add age-group filtering across all visuals
- [ ] Add correlation analysis between academic pressure and depression
- [ ] Add dietary habits and family history breakdown charts
- [ ] Add a dedicated Depression outcome chart as the main KPI

---

## 👤 Author

**Abhishek Kumar**

[![LinkedIn](https://img.shields.io/badge/LinkedIn-Connect-blue?logo=linkedin)](https://linkedin.com/in/abhishek-kumar-a53b46309)
[![GitHub](https://img.shields.io/badge/GitHub-Follow-black?logo=github)](https://github.com/abhi14324)
[![Email](https://img.shields.io/badge/Email-Contact-red?logo=gmail)](mailto:ak38022246637@gmail.com)

---

## 📄 License

This project is open source and available under the [MIT License](LICENSE).

---

> ⭐ If you found this project helpful, please give it a star on GitHub!
