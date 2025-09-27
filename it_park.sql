CREATE TABLE IF NOT EXISTS Masters
(
	id SERIAL PRIMARY KEY,
	subject VARCHAR(30) UNIQUE
);

CREATE TABLE IF NOT EXISTS Mentors
(
	id SERIAL PRIMARY KEY,
	firstname VARCHAR(30) NOT NULL,
	lastname VARCHAR(30) NOT NULL,
	master_id INTEGER REFERENCES masters(id)
);

CREATE TABLE IF NOT EXISTS Groupss
(
	id SERIAL PRIMARY KEY,
	title VARCHAR(20),
	mentor_id INTEGER REFERENCES Mentors(id)
);

CREATE TABLE IF NOT EXISTS Students
(
	id SERIAL PRIMARY KEY,
	firstname VARCHAR(30) NOT NULL,
	lastname VARCHAR(30) NOT NULL
);

CREATE TABLE IF NOT EXISTS StudentGroups
(
	id SERIAL PRIMARY KEY,
	student_id INTEGER REFERENCES Students(id),
	group_id INTEGER REFERENCES Groupss(id)
);

INSERT INTO Masters(subject)
VALUES
('IT'),
('English');

INSERT INTO Mentors(firstname, lastname, master_id)
VALUES
('Azamat', 'Tojiev', 1),
('Nodir', 'Olimov', 1),
('Mahliyo', 'Qalandarova', 2),
('Zuhra', 'Yaqubova', 1),
('Odilbek', 'Matyakubov', 2);

INSERT INTO Groupss(title, mentor_id)
VALUES
('TQ-IT-0901', 1),
('TQ-EN-0901', 3);

INSERT INTO Students(firstname, lastname)
VALUES
('Bobur', 'Ulugbekov'),
('Mansurbek', 'Rajabov'),
('Nurali', 'Khusinov'),
('Hamrozbek', 'Subxonberdiyev'),
('Maqsim', 'Kuryazov'),
('Sayidboy', 'Yoldashov');

INSERT INTO StudentGroups(student_id, group_id)
VALUES
(1, 1),
(1, 2),
(2, 2),
(2, 1),
(3, 1),
(3, 2),
(4, 2),
(4, 1),
(5, 2),
(5, 1),
(6, 1),
(6, 2);