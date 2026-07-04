#  ITI Examination System

> A complete SQL Server database solution that automates the management of the Information Technology Institute (ITI), including student enrollment, instructor management, course administration, examination generation, automatic grading, reporting, and business intelligence dashboards.

---

##  Overview

The **ITI Examination System** is a full database project developed using **Microsoft SQL Server**.

The project simulates the real workflow inside the Information Technology Institute (ITI), covering the complete examination lifecycle from student registration to automatic exam correction and reporting.

Besides implementing the database itself, the project also includes **SSRS Reports** and an interactive **Power BI Dashboard** for data visualization.

---

#  Features

###  Student Management

- Student Registration
- Student Enrollment
- Student Certificates
- Graduate Information
- Freelance Records
- Student Evaluation

---

### Instructor Management

- Instructor Information
- Instructor Branch Assignment
- Instructor Course Assignment
- Instructor Reports

---

### Academic Management

- Branches
- Tracks
- Intakes
- Courses
- Topics

---

###  Examination System

- Question Bank
- Question Choices
- Exam Generation
- Random Question Selection
- Student Answers
- Automatic Exam Correction
- Grade Calculation

---

###  Reporting

- SSRS Reports
- Power BI Dashboard

---

#  Technologies Used

| Technology | Purpose |
|------------|----------|
| SQL Server | Database Management |
| T-SQL | Business Logic |
| Stored Procedures | Database Operations |
| Functions | Reusable Logic |
| Views | Reporting |
| Triggers | Data Validation |
| SSRS | Reports |
| Power BI | Dashboard & Analytics |

---

#  Database Architecture

The database consists of multiple integrated modules.

## Main Entities

- Student
- Instructor
- Course
- Topic
- Exam
- Question
- Question Choices
- Student Answer
- Branch
- Track
- Intake
- Student Enrollment
- Graduate
- Certificate
- Freelance
- Instructor Courses
- Instructor Branches
- Student Courses

---

#  Entity Relationship Diagram

The conceptual database model.

![ER Diagram](Documentation/ERD.png)

---

#  Database Mapping

The relational schema generated from the ER model.

![Database Mapping](Documentation/Mapping.png)

---

#  Project Structure

```text
ITI-Examination-System
│
├── Database
│   ├── Tables
│   ├── Stored Procedures
│   ├── Functions
│   ├── Views
│   ├── Triggers
│   └── Reports
│
├── Documentation
│   ├── ERD.png
│   └── Mapping.png
│
├── Power BI
│   └── Dashboard.pbix
│
├── SSRS Reports
│
└── README.md
```

---

#  SQL Scripts

| Script | Description |
|---------|-------------|
| Student.sql | Student table |
| Student, Instructor.sql | Student & Instructor data |
| Branch, Intake, Course.sql | Academic structure |
| Track,StudentEnroll.sql | Student enrollment |
| Exam,Question.sql | Exams & Questions |
| Student Answer.sql | Student answers |
| Student Answers.sql | Exam submissions |
| Exam Answer.sql | Exam correction |
| StudentGrades.sql | Student grades |
| InstructorCourses.sql | Instructor assignments |
| Topic,StudentEvaluate.sql | Topics & Evaluation |
| Correct.sql | Automatic grading |
| Exam Generator.sql | Random exam generation |
| ExamQuestionsProc.sql | Exam procedures |

---

#  Database Objects

## Tables

The project contains normalized relational tables implementing the ITI examination system.

---

## Primary Keys

Every entity contains a unique primary key.

Examples:

- Student (St-SSN)
- Instructor (Ins-SSN)
- Course (Course-ID)
- Track (Track-ID)
- Branch (Branch-ID)
- Topic (Topic-ID)
- Question (Ques-ID)
- Exam (Exam-ID)

---

## Foreign Keys

Relationships were implemented using foreign keys to maintain referential integrity.

Examples include:

- Student → Enrollment
- Course → Topic
- Instructor → Branch
- Instructor → Course
- Student → Answers
- Exam → Questions

---

## Stored Procedures

The project contains stored procedures to automate common operations.

Examples include:

- Generate Random Exam
- Assign Exam Questions
- Submit Student Answers
- Correct Student Exam
- Calculate Student Grade
- Display Student Information
- Display Student Answers
- Student Records
- Course Topics
- Instructor Courses

---

## Views

Views were created for simplified reporting and data analysis.

Examples:

- Student Information
- Student Records
- Student Grades
- Instructor Courses

---

## Functions

The database includes reusable user-defined functions for calculations and validations.

---

## Triggers

Triggers are used to maintain business rules and ensure data consistency.

---

#  Business Rules

The system follows several business rules, including:

- Students can enroll in one track per intake.
- Courses belong to a specific track.
- Courses may contain multiple topics.
- Exams are linked to courses.
- Exams contain multiple questions.
- Students submit one answer per question.
- Grades are calculated automatically.
- Certificates are issued after successful completion.

---

#  Power BI Dashboard

An interactive dashboard is included to visualize key performance indicators.

Dashboard insights include:

- Student Distribution
- Branch Performance
- Track Performance
- Course Statistics
- Instructor Statistics
- Student Grades
- Examination Results

---

# SSRS Reports

The project also includes SQL Server Reporting Services reports for operational reporting.

Possible reports include:

- Student Report
- Instructor Report
- Course Report
- Grades Report
- Examination Report
- Branch Report

---

# 🚀 How to Run

## 1. Clone Repository

```bash
git clone https://github.com/yourusername/ITI-Examination-System.git
```

---

## 2. Create Database

Open SQL Server Management Studio and create a new database.

---

## 3. Execute SQL Scripts

Execute scripts in the following order:

1. Tables
2. Constraints
3. Sample Data
4. Functions
5. Views
6. Stored Procedures
7. Triggers

---

## 4. Open Reports

Import the SSRS reports into SQL Server Reporting Services.

---

## 5. Open Power BI

Open the included `.pbix` file using Microsoft Power BI Desktop.

---

#  Future Enhancements

- Online Examination Portal
- Student Login System
- Instructor Dashboard
- Attendance Management
- Question Difficulty Levels
- Exam Scheduling
- REST API Integration
- Email Notifications
- Role-Based Authentication

---

#  Project Preview

> Add screenshots of:

- ER Diagram
- Database Mapping
- SSRS Reports
- Power BI Dashboard
- SQL Server Database Diagram

---

#  Learning Outcomes

This project demonstrates practical experience with:

- Database Design
- ER Modeling
- Database Normalization
- SQL Server Development
- T-SQL Programming
- Stored Procedures
- Functions
- Triggers
- Views
- SSRS Reporting
- Power BI Dashboard Development
- Business Intelligence Concepts

---

# Author

**Mohamed Saber**

**Data Engineer | Data Analyst**
