CREATE TABLE movies (
movieID int NOT NULL PRIMARY KEY,
movieName varchar(40) NOT NULL UNIQUE
);

INSERT INTO movies
VALUES (01, "Wonder Woman"),
(02, "Beauty and the Beast"),
(03, "The Emoji Movie"),
(04, "Star Wars: The Last Jedi"),
(05, "Guardians of the Galaxy Vol. 2 "),
(06, "Logan");

CREATE TABLE people (
personID int NOT NULL PRIMARY KEY,
personName varchar(10) NOT NULL
);

INSERT INTO people
VALUES (01, "Johnson"),
(02, "Xavier"),
(03, "Samantha"),
(04, "Thomas"),
(05, "Matthew");

CREATE TABLE ratings (
ratingID int NOT NULL PRIMARY KEY,
movieID int,
personID int,
rating int,
FOREIGN KEY (movieID) REFERENCES movies(movieID),
FOREIGN KEY (personID) REFERENCES people(personID)
);

INSERT INTO ratings
VALUES (01, 01, 01, 5),
(02, 01, 02, 3),
(03, 01, 03, 1),
(04, 01, 04, 4),
(05, 01, 05, 3),
(06, 02, 01, 5),
(07, 02, 02, 3),
(08, 02, 03, 2),
(09, 02, 04, 5),
(10, 02, 05, 2),
(11, 03, 01, 1),
(12, 03, 02, 1),
(13, 03, 03, 1),
(14, 03, 04, 1),
(15, 03, 05, 1),
(16, 04, 01, 5),
(17, 04, 02, 3),
(18, 04, 03, 1),
(19, 04, 04, 2),
(20, 04, 05, 4),
(21, 05, 01, 4),
(22, 05, 02, 5),
(23, 05, 03, 2),
(24, 05, 04, 5),
(25, 05, 05, 5),
(26, 06, 01, 4),
(27, 06, 02, 3),
(28, 06, 03, 1),
(29, 06, 04, 5),
(30, 06, 05, 4);