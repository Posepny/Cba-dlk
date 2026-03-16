BEGIN ~COCAMBI1~

IF ~Global("COM018_grille3","COM018",1)
    !Global("Quete_demon_coeur","COM018",3)~ THEN BEGIN 0

  SAY @16 /* ~Payer le prix aurait tellement plus simple...~ */
  IF ~~ THEN 
    DO ~SetGlobal("COM018_grille3","COM018",2)
        EraseJournalEntry(@100)
        AddJournalEntry(@103,QUEST_DONE)
        Enemy()~
    EXIT

END

IF ~Global("Quete_demon_coeur","COM018",0)~ THEN BEGIN 1

  SAY @1=@3 /* ~Bienvenu à toi, Sang de Bhaal.~ ~Cette porte est mienne. Je maîtrise sa fermeture comme son ouverture...un droit de passage est de mise pour quitter ces lieux.~  */
  IF ~~ THEN 
    DO ~SetGlobal("Quete_demon_coeur","COM018",1)~
    REPLY @4 /* ~Tu as toute mon attention. Je t'écoute.~ */
    GOTO 2

  IF ~Global("Quete_cambion_epee","COM018",1)
      Exists("COTANAR1")~ THEN 
    REPLY @5 /* ~Un démon désire ton épée. Donnes la moi.~ */
    DO ~SetGlobal("cambion_donne_epee","COM018",1)~
    GOTO 4

END

IF ~~ THEN BEGIN 2

  SAY @6 /* ~Reviens sur tes pas. Tu trouveras dans un coin puant un démon. Apportes moi son coeur et je te laisserai passer.~ */
  IF ~~ THEN    
    REPLY @7 /* ~Je vais chercher ce que tu demandes. Tu as intérêt à tenir parôle.~ */
    DO ~SetGlobal("Quete_demon_coeur_OK","COM018",1)~
    EXIT

    IF ~HasItem("MISC6M",LastTalkedToBy(Myself))~ THEN   
      REPLY @8 /* ~Est-ce celà que tu cherches (vous lui montrez le coeur du démon).~ */
      GOTO 5
   
    IF ~~ THEN 
      REPLY @9 /* ~Je n'ai pas de temps à perdre!~ */
      GOTO 3

END

IF ~~ THEN BEGIN 3

  SAY @10 /* ~Comme il te plaira, sang de Bhaal! Trouves un autre chemin.~ */
  IF ~~ THEN 
    DO ~SetGlobal("Quete_demon_coeur_OK","COM018",1)~
    EXIT

END

IF ~~ THEN BEGIN 4

  SAY @11=@12 /* ~Dans ce cas, viens me la prendre. Mais ce passage sera définitivement fermé pour toi... ~Le plus simple serait de me rapporter le coeur de ce démon afin de d'acquitter du droit de passage.~ */
  IF ~~ THEN 
    DO ~SetGlobal("Quete_demon_coeur_OK","COM018",1)~
    EXIT
END

// quête coeur du démon réussie
IF ~Global("Quete_demon_coeur","COM018",1)
    HasItem("MISC6M",LastTalkedToBy(Myself))~ THEN BEGIN 5

  SAY @13 /* ~Magnifique, le coeur du démon! Grâce à toi, sang de Bhaal, mon épée va gagner en puissance! ~ */
  IF ~~ THEN 
    DO ~SetGlobal("Quete_demon_coeur","COM018",2)~    
    GOTO 6

END

IF ~~ THEN BEGIN 6

  SAY @14 /* ~La porte t'es ouverte. ~ */
IF ~~ THEN 
    EXIT

END

IF ~Global("Quete_demon_coeur","COM018",1)
    !HasItem("MISC6M",LastTalkedToBy(Myself))~ THEN BEGIN 7
    
  SAY @15 /* ~Pas de coeur, pas de passage!~ */  
  IF ~Global("Quete_cambion_epee","COM018",1)
      Global("cambion_donne_epee","COM018",0)
	  Exists("COTANAR1")~ THEN 
    REPLY @5 /* ~Un démon désire ton épée. Donnes la moi.~ */
    DO ~SetGlobal("cambion_donne_epee","COM018",1)~
    GOTO 4

  IF ~~ THEN 
    REPLY @2 /* ~(ne rien répondre)~ */
    EXIT

END
