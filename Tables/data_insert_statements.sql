--Inserting some example data to all the tables

--Categories

INSERT INTO kategoria VALUES (
    1, 'Lihaskunto'
);

INSERT INTO kategoria VALUES (
    2, 'Kehonhuolto'
);

INSERT INTO kategoria VALUES (
    3, 'Spinning'
);

--Instructors

INSERT INTO ohjaaja VALUES (
    1, 'Elisa Markkanen', '1996-01-21'
);

INSERT INTO ohjaaja VALUES (
    2, 'Eero Ilonen', '1988-03-14'
);

INSERT INTO ohjaaja VALUES (
    3, 'Mikko Kontinen', '2000-11-01'
);

--Gyms

INSERT INTO sali VALUES (
    1, 'Sali 1', 25
);

INSERT INTO sali VALUES (
    2, 'Spinning-sali', 20
);

INSERT INTO sali VALUES (
    3, 'Sali 3', 20
);

--group exercise classes

INSERT INTO rltunti VALUES (
    1, 'Muokkaus', 'Muokataan lihaksia', 45, 2, 1
);

INSERT INTO rltunti VALUES (
    2, 'Joogan perusteet', 'Opetellaan joogaa', 50, 1, 2
);

INSERT INTO rltunti VALUES (
    3, 'Jooga 1', 'Jatketaan joogaamista', 50, 2, 2
);

INSERT INTO rltunti VALUES (
    4, 'Pilates 1', 'Opetellaan pilatesta', 60, 2, 2
);

INSERT INTO rltunti VALUES (
    5, 'Spinning alkeet', 'Poljetaan', 60, 1, 3
);

INSERT INTO rltunti VALUES (
    6, 'Spinning pro', 'Raskaita osuuksia ja tiukkoja spurtteja', 80, 4, 3
);

--Exercise classes that instructor can instruct. 
--Uses instructor's id and group exersice classes id to identify.

INSERT INTO voi_ohjata VALUES (
    1, 3
);

INSERT INTO voi_ohjata VALUES (
    1, 5
);

INSERT INTO voi_ohjata VALUES (
    1, 6
);

INSERT INTO voi_ohjata VALUES (
    2, 2
);

INSERT INTO voi_ohjata VALUES (
    2, 3
);

INSERT INTO voi_ohjata VALUES (
    2, 4
);

INSERT INTO voi_ohjata VALUES (
    3, 5
);

INSERT INTO voi_ohjata VALUES (
    3, 6
);

--Group exercise classes in calendar

INSERT INTO ljtunti VALUES (
    3, 'ma', '08:10:00', '09:00:00', 10, 1, 3
);

INSERT INTO ljtunti VALUES (
    3, 'ma', '13:00:00', '13:50:00', 15, 1, 1
);

INSERT INTO ljtunti VALUES (
    3, 'ma', '20:10:00', '21:00:00', 10, 1, 3
);

INSERT INTO ljtunti VALUES (
    3, 'ti', '08:10:00', '09:00:00', 15, 2, 1
);

INSERT INTO ljtunti VALUES (
    4, 'ma', '08:00:00', '09:00:00', 15, 2, 1
);

INSERT INTO ljtunti VALUES (
    6, 'ma', '07:00:00', '08:20:00', 20, 3, 2
);

INSERT INTO ljtunti VALUES (
    5, 'ma', '10:45:00', '11:45:00', 20, 3, 2
);

INSERT INTO ljtunti VALUES (
    6, 'pe', '14:00:00', '15:20:00', 20, 1, 2
);