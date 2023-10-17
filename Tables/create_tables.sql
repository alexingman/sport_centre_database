--Creating all the tables needed in this project's database

--Group exercise classes

CREATE TABLE rltunti (
    rltunnus INT NOT NULL,
    rlnimi VARCHAR(30) NOT NULL,
    kuvaus VARCHAR(50),
    kesto INT,
    taso VARCHAR(20),
    ktunnus INT,
    PRIMARY KEY (rltunnus),
    UNIQUE (rlnimi),
    FOREIGN KEY (ktunnus) REFERENCES kategoria(ktunnus)
);

--Group exercise categories

CREATE TABLE kategoria (
    ktunnus INT NOT NULL,
    knimi VARCHAR(30) NOT NULL,
    PRIMARY KEY (ktunnus),
    UNIQUE (knimi)
);

--Group exercise classes in calendar

CREATE TABLE ljtunti (
    rltunnus INT NOT NULL,
    viikonpaiva VARCHAR(15) NOT NULL,
    alkamisaika TIME(2) NOT NULL,
    paattymisaika TIME(2),
    maxosallistujalkm INT,
    otunnus INT,
    stunnus INT,
    PRIMARY KEY (rltunnus, viikonpaiva, alkamisaika),
    FOREIGN KEY (rltunnus) REFERENCES rltunti(rltunnus),
    FOREIGN KEY (otunnus) REFERENCES ohjaaja(otunnus),
    FOREIGN KEY (stunnus) REFERENCES sali(stunnus)
);

--Instructors

CREATE TABLE ohjaaja (
    otunnus INT NOT NULL,
    onimi VARCHAR(30),
    syntymaaika DATE,
    PRIMARY KEY (otunnus)
);

--What exercise classes instructor can instruct

CREATE TABLE voi_ohjata (
    otunnus INT NOT NULL,
    rltunnus INT NOT NULL,
    PRIMARY KEY (otunnus, rltunnus),
    FOREIGN KEY (otunnus) REFERENCES ohjaaja(otunnus),
    FOREIGN KEY (rltunnus) REFERENCES rltunti(rltunnus)
);

--Gyms

CREATE TABLE sali (
    stunnus INT NOT NULL,
    snimi VARCHAR(30),
    paikkalkm INT,
    PRIMARY KEY (stunnus),
    UNIQUE (snimi)
);