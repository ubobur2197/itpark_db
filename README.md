## Tables Structure

### 1. **Masters**

Stores subjects (specializations).

* `id` – primary key (SERIAL).
* `subject` – subject name (e.g., IT, English).

### 2. **Mentors**

Stores mentor information.

* `id` – primary key (SERIAL).
* `firstname` – mentor’s first name.
* `lastname` – mentor’s last name.
* `master_id` – references subject (`Masters.id`).

### 3. **Groupss**

Stores groups information.

* `id` – primary key (SERIAL).
* `title` – group title.
* `mentor_id` – references mentor (`Mentors.id`).

### 4. **Students**

Stores student information.

* `id` – primary key (SERIAL).
* `firstname` – student’s first name.
* `lastname` – student’s last name.

### 5. **StudentGroups**

Associates students with groups (many-to-many relationship).

* `id` – primary key (SERIAL).
* `student_id` – references student (`Students.id`).
* `group_id` – references group (`Groupss.id`).

## Initial Data

### Masters

```sql
('IT'),
('English');
```

### Mentors

```sql
('Azamat', 'Tojiev', 1),
('Nodir', 'Olimov', 1),
('Mahliyo', 'Qalandarova', 2),
('Zuhra', 'Yaqubova', 1),
('Odilbek', 'Matyakubov', 2);
```

### Groupss

```sql
('TQ-IT-0901', 1),
('TQ-EN-0901', 3);
```

### Students

```sql
('Bobur', 'Ulugbekov'),
('Mansurbek', 'Rajabov'),
('Nurali', 'Khusinov'),
('Hamrozbek', 'Subxonberdiyev'),
('Maqsim', 'Kuryazov'),
('Sayidboy', 'Yoldashov');
```

### StudentGroups

Students can belong to multiple groups:

```sql
(1, 1), (1, 2),
(2, 2), (2, 1),
(3, 1), (3, 2),
(4, 2), (4, 1),
(5, 2), (5, 1),
(6, 1), (6, 2);
```

## Relationships

* **Masters ↔ Mentors**: Each mentor belongs to a specialization.
* **Mentors ↔ Groupss**: Each group is managed by one mentor.
* **Students ↔ Groupss**: Students can join multiple groups.

## Usage

1. Run this script in your PostgreSQL database.
2. All tables and sample data will be created.
3. Use SQL queries (`JOIN`) to explore relationships between mentors, groups, and students.
