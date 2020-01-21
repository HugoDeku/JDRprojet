BEGIN;
CREATE TABLE Compte(
  Pseudo VARCHAR(30) PRIMARY KEY,
  Mdp TEXT,
  Droit TEXT
);

CREATE TABLE Dieu(
  NomDieu VARCHAR(30) PRIMARY KEY
);

CREATE TABLE Magie(
  NomMagie VARCHAR(30) PRIMARY KEY,
  Affinite VARCHAR(30),
  FOREIGN KEY (Affinite) REFERENCES Dieu(NomDieu)
);

CREATE TABLE Race(
  Nom VARCHAR(30) PRIMARY KEY,
  TailleMoy FLOAT,
  PoidsMoy FLOAT,
  Description TEXT
);

CREATE TABLE Personnage(
  Nom VARCHAR(30),
  Prenom VARCHAR(30),
  Age INTEGER,
  Magie VARCHAR(30),
  Sexe VARCHAR(5) CHECK (Sexe = "Homme" OR Sexe="Femme"),
  Taille FLOAT,
  Poids FLOAT,
  PNJ VARCHAR(1) CHECK(PNJ = "T" OR PNJ = "F"),
  Race VARCHAR(30),
  Lore TEXT,
  PRIMARY KEY (Nom,Prenom),
  FOREIGN KEY (Magie) REFERENCES Magie(NomMagie),
  FOREIGN KEY (Race) REFERENCES Race(Nom)
);

CREATE TABLE Stats(
  NomPers VARCHAR(30),
  PrenomPErs VARCHAR(30),
  PVMax INTEGER,
  ManaMax INTEGER,
  PV INTEGER,
  Mana INTEGER
);

CREATE TABLE JoueurPerso(
  Pseudo VARCHAR(30),
  Nom VARCHAR(30),
  Prenom VARCHAR(30),
  FOREIGN KEY (Pseudo) REFERENCES Compte(Pseudo),
  FOREIGN KEY (Nom, Prenom) REFERENCES Personnage(Nom, Prenom),
  PRIMARY KEY (Pseudo, Nom, Prenom)
);

CREATE TABLE Spells(
  NomSpell VARCHAR(30) PRIMARY KEY,
  NomMagie VARCHAR(30),
  DescSpell TEXT,
  FOREIGN KEY (NomMagie) REFERENCES Magie(NomMagie)
);

COMMIT;
