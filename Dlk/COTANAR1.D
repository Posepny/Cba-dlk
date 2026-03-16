BEGIN ~COTANAR1~

// Proposition Cambion épée
IF ~Global("Quete_cambion_epee","COM018",0)~ THEN BEGIN 0

  SAY @1 /* ~Apportes moi l'épée du Cambion et je te donnerai un présent digne d'un sang de Bhaal.~ */
  IF ~~ THEN 
    REPLY @2 /* ~Ca ne m'intéresse pas.~ */
    DO ~SetGlobal("Quete_cambion_epee","COM018",1)
        SetGlobal("Quete_cambion_epee_OK","COM018",1)~
    GOTO 1

  // Quête coeur démon Active
  IF ~Global("Quete_demon_coeur","COM018",1)
      Global("Com018_Cambion_mort","COM018",0)~ THEN     
    REPLY @7 /* ~Démon, le Cambion a besoin de ton coeur et je suis venu te l'arracher!~ */
    DO ~SetGlobal("Quete_cambion_epee","COM018",1)~    
    GOTO 6

  IF ~!HasItem("SW1H02",LastTalkedToBy(Myself))~ THEN 
    REPLY @4 /* ~Ton présent a intérêt d'être à la hauteur de mes attentes.~ */   
    DO ~SetGlobal("Quete_cambion_epee","COM018",1)
    SetGlobal("Quete_cambion_epee_OK","COM018",1)~ 
    EXIT

  IF ~HasItem("SW1H02",LastTalkedToBy(Myself))~ THEN     
    REPLY @5 /* ~Est-ce ceci que tu désires (vous lui montrez l'épée du Cambion)?~ */
    DO ~SetGlobal("Quete_cambion_epee","COM018",1)~
    GOTO 3

END

IF ~~ THEN BEGIN 1

  SAY @6 /* ~Hors de ma vue!~ */
  IF ~~ THEN 
    EXIT

END

// Quête épée Cambion résolue
IF ~Global("Quete_cambion_epee","COM018",1)
    HasItem("SW1H02",LastTalkedToBy(Myself))~ THEN BEGIN 3

  SAY @9 /* ~Une magnifique épée... J'espère qu'il a souffert. Hors de ma vue maintenant.~ */
  IF ~~ THEN        
    REPLY @11 /* ~Ne rien dire.~ */
    DO ~SetGlobal("Quete_cambion_epee","COM018",2)~
    EXIT
    
  IF ~~ THEN 
    REPLY @10 /* ~Et mon présent?~ */
    DO ~SetGlobal("Quete_cambion_epee","COM018",3)~
    GOTO 4

END

IF ~~ THEN BEGIN 4

  SAY @12 /* ~Je te laisse en vie. J'ai à faire, Hors de ma vue! ~ */
  IF ~~ THEN 
    DO ~TakePartyItem("MISC6M")~    
    EXIT

END

// Quête épée Cambion active
IF ~Global("Quete_cambion_epee","COM018",1)
    !HasItem("SW1H02",LastTalkedToBy(Myself))~ THEN BEGIN 5

  SAY @13 /* ~Tu n'as pas l'épée. Tu me fais perdre mon temps!~ */
  
  // Quête coeur démon Active
  IF ~Global("Quete_demon_coeur","COM018",1)~ THEN 
    REPLY @14 /* ~J'ai parlé au Cambion. Je suis venu chercher ton coeur.~ */    
    GOTO 6
    
    IF ~~ THEN 
    REPLY @16 /* ~Ne rien répondre.~*/
    EXIT
    
END

IF ~~ THEN BEGIN 6

  SAY @15 /* ~Ce serpent a rallié le sang de Bhaal à sa cause!~ */
  IF ~~ THEN 
    // Combat démon
    DO~ChangeAIScript("TANARI",OVERRIDE)
       Enemy()~ 
    EXIT
    
END


