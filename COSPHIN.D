BEGIN ~COSPHIN~

IF ~Global("gpe_complet","COM023",1)~ THEN BEGIN 1

  SAY   @1 /*  ~Votre groupe est complet sang de Bhaal. Montez ces marches que je puisse vous voir.~  */ 
  IF ~~ THEN   
          DO ~SetGlobal("gpe_complet","COM023",2)~  
          EXIT
END

IF ~Global("gpe_complet","COM023",2)~ THEN BEGIN 2

  SAY   @2=@3=@4=@5=@6=@7 /*  ~(L'étrange créature de pierre vous fixe d'un regard pénétrant)~ ~Ecoutes et trouves réponse à ma question. Ainsi vous quitterez ces lieux sans dommages.~ ~Dans l'ombre, je m'approche à l'insu de tous.~ ~De sueur et de sang, je me nourris.~ ~Sur mon passage, je sême la mort et les survivants enterent leurs morts.~ ~Que suis je?~  */ 
  IF ~~ THEN REPLY @8 /* ~La maladie~  */
           DO ~SetGlobal("gpe_complet","COM023",3)~
           GOTO  3

  IF ~~ THEN REPLY @9 /* ~La famine~  */           
           DO ~SetGlobal("gpe_complet","COM023",3)~
           GOTO  4

  IF ~~ THEN REPLY @10 /* ~Le meurtre~  */
           DO ~SetGlobal("gpe_complet","COM023",3)~
           GOTO  5           
END

IF ~~ THEN BEGIN 3

  SAY   @11=@12 /*  ~Réponse exacte sang de Bhaal. La sortie se trouve derrière moi.~ ~Quittez cet endroit sans délai.~  */ 
  IF ~~ THEN 
          DO ~SetGlobal("Sphinx_enigme","COM023",1)~
          EXIT
END

IF ~~ THEN BEGIN 4

  SAY   @13 /*  ~Mauvaise réponse sang de Bhaal. La maladie a un présent pour vous.~  */ 
  IF ~~ THEN 
          DO ~SetGlobal("Sphinx_enigme","COM023",2)~
          EXIT
END

IF ~~ THEN BEGIN 5

  SAY   @13/*  ~Mauvaise réponse sang de Bhaal. La maladie a un présent pour vous.~  */ 
  IF ~~ THEN 
          DO ~SetGlobal("Sphinx_enigme","COM023",2)~
          EXIT
END

IF ~Global("gpe_incomplet","COM023",1)~ THEN BEGIN 6

  SAY   @14 /*  ~Votre groupe n'est pas au complet. Vous n'avancerez pas plus loin.~  */ 
  IF ~~ THEN 
          DO ~SetGlobal("gpe_incomplet","COM023",2)~
          EXIT
END

// le coffre est ouvert et Maladie n'est pas encore apparue
IF ~Global("coffre_ouvert","COM023",1)~ THEN BEGIN 6

  SAY   @15/*  ~~  */ 
  IF ~~ THEN 
        DO ~SetGlobal("coffre_ouvert","COM023",2)~
        EXIT
END
