BEgIn;
CreATE TabLe Compte(
  Pseudo VArChAR(30) PrImAry KEy,
  Mdp TeXT
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
  PrImArY KeY (Nom,Prenom)
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







COmmiT;
