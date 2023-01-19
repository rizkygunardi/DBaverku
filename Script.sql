CREATE TABLE persons (
   person_id int,
   last_name varchar(255),
   first_name varchar(255),
   address varchar(255),
   city varchar(255)
);

CREATE TABLE users (
	user_id int PRIMARY KEY,
	name varchar(30),
	email varchar(30),
	phone varchar(15),
	gender varchar(10) NOT NULL CHECK (gender IN ('Laki-Laki','Perempuan')),
	address varchar(100)
);

INSERT INTO users VALUES (3, "Dedeng", "de@email.com", "081231231231", "Laki-Laki", "Cirebon")
INSERT INTO users VALUES (4, "Dudung", "du@email.com", "081231231231", "Laki-Laki", "Cimahi")
INSERT INTO users VALUES (5, "Dodong", "do@email.com", "081231231231", "Laki-Laki", "Semarang")
INSERT INTO users VALUES (6, "Papa", "pa@email.com", "081231231231", "Laki-Laki", "Solo")
INSERT INTO users VALUES (7, "Pipi", "pi@email.com", "081231231231", "Laki-Laki", "Yogyakarta")
INSERT INTO users VALUES (8, "Pupu", "pu@email.com", "081231231231", "Laki-Laki", "Jakarta")
INSERT INTO users VALUES (9, "Pepe", "pe@email.com", "081231231231", "Laki-Laki", "Cianjur")
INSERT INTO users VALUES (10, "Popo", "po@email.com", "081231231231", "Laki-Laki", "Pangandaran")
INSERT INTO users VALUES (11, "Sasa", "sa@email.com", "081231231231", "Perempuan", "Nganjuk")
INSERT INTO users VALUES (12, "Sisi", "si@email.com", "081231231231", "Perempuan", "Batam")
INSERT INTO users VALUES (13, "Susu", "su@email.com", "081231231231", "Perempuan", "Palembang")
INSERT INTO users VALUES (14, "Sese", "se@email.com", "081231231231", "Perempuan", "Palangkaraya")
INSERT INTO users VALUES (15, "Soso", "so@email.com", "081231231231", "Perempuan", "Banten")
INSERT INTO users VALUES (16, "Rara", "ra@email.com", "081231231231", "Perempuan", "Subang")
INSERT INTO users VALUES (17, "Riri", "ri@email.com", "081231231231", "Perempuan", "Sumedang")
INSERT INTO users VALUES (18, "Ruru", "ru@email.com", "081231231231", "Perempuan", "Cimahi")
INSERT INTO users VALUES (19, "Roro", "ro@email.com", "081231231231", "Perempuan", "Sukabumi")
INSERT INTO users VALUES (20, "Jaja", "ja@email.com", "081231231231", "Laki-Laki", "Garut")
INSERT INTO users VALUES (21, "Jiji", "ji@email.com", "081231231231", "Laki-Laki", "Tasikmalaya")
INSERT INTO users VALUES (22, "Juju", "ju@email.com", "081231231231", "Laki-Laki", "Banjar")
INSERT INTO users VALUES (23, "Jeje", "je@email.com", "081231231231", "Laki-Laki", "Cilacap")
INSERT INTO users VALUES (24, "Jojo", "jo@email.com", "081231231231", "Laki-Laki", "Purwokerto")
INSERT INTO users VALUES (25, "Yaya", "ya@email.com", "081231231231", "Laki-Laki", "Tegal")
INSERT INTO users VALUES (26, "Yiyi", "yi@email.com", "081231231231", "Laki-Laki", "Pemalang")
INSERT INTO users VALUES (27, "Yuyu", "yu@email.com", "081231231231", "Laki-Laki", "Kebumen")
INSERT INTO users VALUES (28, "Yeye", "ye@email.com", "081231231231", "Laki-Laki", "Magelang")
INSERT INTO users VALUES (29, "Yoyo", "yo@email.com", "081231231231", "Laki-Laki", "Klaten")
INSERT INTO users VALUES (30, "Rizky", "riz@email.com", "081345345234", "Laki-Laki", "Jepara")


SELECT rz.name, rz.phone, rz.address FROM users AS rz;

