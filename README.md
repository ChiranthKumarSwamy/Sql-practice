Here is an **easy-to-remember, exam-friendly summary** of your SQL notes, written in **simple points** 👇
(Perfect for quick revision ✅)

---

## 🗄️ DATABASE COMMANDS

* **CREATE DATABASE** → creates a new database

  ```sql
  CREATE DATABASE emp;
  ```

* **USE DATABASE** → selects database to work on

  ```sql
  USE emp;
  ```

* **DROP DATABASE** → deletes database completely (data + structure)

  ```sql
  DROP DATABASE emp;
  ```

---

## 📋 TABLE COMMANDS

### 🔹 CREATE TABLE

* Creates table with columns and data types
* `PRIMARY KEY` → unique + not null

```sql
CREATE TABLE employee (
  emp_id INT NOT NULL,
  emp_name VARCHAR(20),
  gender CHAR(1),
  emp_birthday DATE,
  PRIMARY KEY (emp_id)
);
```

---

### 🔹 DROP TABLE

* Deletes **entire table structure + data**

```sql
DROP TABLE employee;
```

---

### 🔹 TRUNCATE TABLE

* Deletes **only data**
* Table structure remains

```sql
TRUNCATE TABLE employee;
```

---

## 🛠️ ALTER TABLE (Add / Change / Delete column)

* **ADD column**

```sql
ALTER TABLE employee ADD age INT;
```

* **ALTER column**

```sql
ALTER TABLE employee ALTER COLUMN gender VARCHAR(5);
```

* **DROP column**

```sql
ALTER TABLE employee DROP COLUMN age;
```

---

## ➕ INSERT (3 types)

1️⃣ **Insert all columns (order matters)**

```sql
INSERT INTO employee VALUES (1,'Abhi','M','2002-08-10');
```

2️⃣ **Insert with column names**

```sql
INSERT INTO employee (emp_id, emp_name, gender, emp_birthday)
VALUES (2,'Bheem','M','2002-12-29');
```

3️⃣ **Insert in any order (best practice)**

```sql
INSERT INTO employee (emp_name, emp_id, gender, emp_birthday)
VALUES ('Chiru',3,'M','2002-10-21');
```

---

## 🔍 SELECT

* **All columns**

```sql
SELECT * FROM employee;
```

* **Specific columns**

```sql
SELECT emp_id, emp_birthday FROM employee;
```

* **DISTINCT (remove duplicates)**

```sql
SELECT DISTINCT gender FROM employee;
```

---

## ✏️ UPDATE

* Update **specific row**

```sql
UPDATE employee SET gender = 'Male' WHERE emp_id = 3;
```

* Update **all rows (dangerous ⚠️)**

```sql
UPDATE employee SET gender = 'Male';
```

* Update **multiple columns**

```sql
UPDATE employee
SET emp_name = 'Kavana', gender = 'Male'
WHERE emp_id = 4;
```

---

## ❌ DELETE

* Deletes rows based on condition

```sql
DELETE FROM employee WHERE emp_id = 3;
```

---

## 🔎 WHERE CLAUSE (Filtering data)

* Used with **SELECT / UPDATE / DELETE**
* Comparison operators:

  * `=` equal
  * `!=` not equal
  * `>` greater
  * `<` less
  * `>=` greater or equal
  * `<=` less or equal

```sql
SELECT emp_name FROM employee WHERE gender != 'F';
```

---

 SUPER EASY MEMORY TRICK

* **CREATE** → make
* **USE** → select database
* **DROP** → delete everything
* **TRUNCATE** → delete data only
* **ALTER** → change table
* **INSERT** → add data
* **SELECT** → view data
* **UPDATE** → change data
* **DELETE** → remove data
* **WHERE** → filter data
