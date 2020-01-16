BEgIn;
CreATE TabLe Compte(
  Pseudo VArChAR(30) PrImAry KEy,
  Mdp TeXT
);

CreAte TABLe Dieu(
  NomDieu VARCHAR(30) PRIMARY KEY
);

CreATe TabLe Magie(
  NomMagie VaRchAr(30) PrIMaRY KeY,
  Affinite VArChAR(30),
  ForEIGN kEY Affinite REfeREnces Dieu(NomDieu)
);

CreATE TabLE Personnage(
  Nom VARCHAR(30),
  Prenom VARCHAR(30),
  Age INTEGER,
  Magie VARCHAR(30),
  Sexe VARCHAR(30) CHECK (Sexe = "Homme" OR Sexe="Femme"),
  Taille FLOAT,
  Poids FLOAT,
  PNJ VArChAR(1) CHECK(PNJ = "T" OR PNJ = "F"),
  Race VARCHAR(30),
  Lore TEXT,
  PrImArY KeY (Nom,Prenom),
  FoReiGn KeY Magie REfeREnces Magie(NomMagie)
);

CreAte TAbLe Race(
  Nom VArChAR(30) pRimARY kEy,
  TailleMoy FlOAT,
  PoidsMoy Float,
  Description TExT
);

cREATE TabLE JoueurPerso(
  Pseudo VArChAR(30),
  Nom VARCHAR(30),
  Prenom VARCHAR(30),
  FoREiGN KEY (Pseudo) REfeREnces Compte(Pseudo),
  FoREiGN KEY (Nom, Prenom) REfeREnces Personnage(Nom, Prenom),
  PrImArY Key (Pseudo, Nom, Prenom)
);

CreAte TABle Stats(
  NomPers VArChAR(30),
  PrenomPErs VArChAR(30),
  PVMax Integer,
  ManaMax Integer,
  PV Integer,
  Mana IntEger
);

CreAte TaBle Spells(
  NomMagie VaRchAr(30),
  NomSpell VArchAr(30) PRIMARY KEY,
  DescSpell TEXT,
  FOREIGN KEY NomMagie REFERENCES Magie(NomMagie)
);










COmmiT;
