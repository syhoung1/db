CREATE TABLE guests (
    id SERIAL NOT NULL PRIMARY KEY,
    first_name text,
    last_name text,
    email text
);

CREATE TABLE bookings (
    id SERIAL NOT NULL PRIMARY KEY,
    check_in_date date,
    check_out_date date,
    room_id integer FOREIGN KEY REFERENCES rooms(id),
    guest_id integer FOREIGN KEY REFERENCES guests(id)
);

CREATE TABLE rooms (
    id SERIAL NOT NULL PRIMARY KEY,
    room_number integer,
    floor_number integer,
    price_per_night integer
);

INSERT INTO guests (first_name, last_name, email) VALUES
    ("John", "Doe", "john@john.com"),
    ("Jane", "Smith", "jane@jane.com"),
    ("Steven", "Kris", "steven@steven.com");

INSERT INTO rooms (room_number, floor_number, price_per_night) VALUES
    (1, 1, 20),
    (2, 1, 20),
    (3, 2, 40),
    (4, 2, 40);

INSERT INTO bookings (check_in_date, check_out_date, guest_id, room_id)
    (TO_DATE('17/12/2015', 'DD/MM/YYYY'), TO_DATE('19/12/2015', 'DD/MM/YYYY'), 1, 1),
    (TO_DATE('20/12/2015', 'DD/MM/YYYY'), TO_DATE('30/12/2015', 'DD/MM/YYYY'), 2, 1),
    (TO_DATE('17/12/2016', 'DD/MM/YYYY'), TO_DATE('19/12/2016', 'DD/MM/YYYY'), 1, 2)



CREATE TABLE students (
    id SERIAL NOT NULL PRIMARY KEY,
    name text,
    email text
);

CREATE TABLE enrollment (
    grade VARCHAR(2),
    student_id integer FOREIGN KEY REFERENCES stuednts(id),
    class_id integer FOREIGN KEY REFERENCES classes(id)
);

CREATE TABLE classes (
    name text,
    id SERIAL NOT NULL PRIMARY KEY
);

INSERT INTO students VALUES (name, email)
    ("Erica Chavez", "erica@erica.com"),
    ("John John", "john@john.com"),
    ("Jane Ritz", "jane@jane.com");
    
INSERT INTO classes VALUES (name, subject)
    ("physio 101"),
    ("physio 102"),
    ("math 101"),
    ("compsci 101");

INSERT INTO enrollment VALUES (grade, student_id, class_id)
    ("A", 1, 1),
    ("A", 1, 2),
    ("A-", 1, 3),
    ("A", 1, 4),
    ("B", 2, 1),
    ("A", 2, 2),
    ("A", 2, 3);
    