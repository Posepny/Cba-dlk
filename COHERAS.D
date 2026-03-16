BEGIN ~COHERAS~ 

IF ~Global("Heras_init","COM023",0)
    !PartyHasItem("MISCP35")
    !PartyHasItem("MISCP36")
    !PartyHasItem("MISCP37")
    !PartyHasItem("MISCP38")
    !PartyHasItem("MISCP39")
    !PartyHasItem("MISCP40")
    !PartyHasItem("MISCP41")~ THEN BEGIN 1
     
  SAY   @1=@2=@3 /*  ~Dommage que vous n'ayez pas la moindre larme de sang, j'aurai pû vous aider...~ ~ Sachez que l'ultime épreuve vous attend derrière cette porte et je ne donne pas cher de vôtre peau.~ ~ Adieu Sang de Bhaal! (ses yeux se ferment)~  */ 
  IF ~~ THEN 
        DO ~SetGlobal("Heras_init","COM023",1)
            SetGlobal("Heras_destroy","COM023",1)~
        EXIT

END

IF ~~ THEN BEGIN 2

  SAY   @5 /*   ~ Il ne restera pas grand chose quand ils en auront terminé avec vous. (sourire)~  */ 
  IF ~Global("Heras_Q1","COM023",0)~ THEN REPLY @6 /* ~Que ce qu'il y a derrière cette porte?~  */
           DO ~SetGlobal("Heras_Q1","COM023",1)
               SetGlobal("Heras_init","COM023",0)~
           GOTO  3

  IF ~Global("Heras_Q2","COM023",0)~ THEN REPLY @7 /* ~Et on peut savoir pourquoi?~  */
             DO ~SetGlobal("Heras_Q2","COM023",1)
                 SetGlobal("Heras_init","COM023",1)~
             GOTO  4

  IF ~~ THEN REPLY @8 /* ~Je ne pense pas avoir demandé votre avis, face de pierre.~  */
               DO ~SetGlobal("Heras_init","COM023",1)~
               GOTO  5

  IF ~~ THEN REPLY @9 /* ~(continuer sans écouter)~  */
               DO ~SetGlobal("Heras_init","COM023",1)~
               GOTO 9

END

IF ~~ THEN BEGIN 3

  SAY   @10 /*  ~Excellente question. Quelle est la suivante?~  */ 
  IF ~~ THEN GOTO 2

END

IF ~~ THEN BEGIN 4

  SAY   @11 /*  ~Vous ne possédez pas l'équipement adéquat mais je suis en mesure de tourner la situation à votre avantage. Sachez que je ne travaille pas gratuitement.~  */ 
  IF ~~ THEN REPLY @12 /* ~Continue face de pierre.~  */
        GOTO 7

  IF ~~ THEN REPLY @13 /* ~Bien essayé mais vous n'obtiendrez rien de moi.~  */
        GOTO 8

END

IF ~~ THEN BEGIN 5

  SAY   @14 /*  ~C'est exact, je n'ai jamais su tenir ma langue mais il serait dommage pour vous de terminer cette brillante aventure ainsi.~  */ 
  IF ~~ THEN GOTO 7

END

IF ~Global("Heras_init","COM023",0)~ THEN BEGIN 6

  SAY   @4 /*  ~Quel beau parcours! Sachez que l'ultime épreuve vous attend derrière cette porte et malheureusement vous allez échouer. Un échec des plus meurtrier d'ailleurs...~ */
  IF ~~ THEN GOTO 2

END

IF ~~ THEN BEGIN 7

  SAY   @15 /*  ~Confiez moi une larme de sang et je vous aiderai à sortir vainqueur.~  */ 
  IF ~~ THEN REPLY @18 /* ~Je n'ai pas besoin d'aide pour vaincre mes ennemis.~  */
           GOTO 10

  IF ~PartyHasItem("MISCP35")~ THEN REPLY @19 /* ~(vous lui donnez la larme de sang du Tanari)~  */
           DO ~TakePartyItem("MISCP35")~
           GOTO 13

  IF ~PartyHasItem("MISCP36")~ THEN REPLY @20 /* ~(vous lui donnez la larme de sang du golem d'os)~  */
           DO ~TakePartyItem("MISCP36")~
           GOTO 13

  IF ~PartyHasItem("MISCP37")~ THEN REPLY @21 /* ~(vous lui donnez la larme de sang de la demi-liche)~  */
           DO ~TakePartyItem("MISCP37")~
           GOTO 13

  IF ~PartyHasItem("MISCP38")~ THEN REPLY @22 /* ~(vous lui donnez la larme de sang de la SOUS SOL)~  */
           DO ~TakePartyItem("MISCP38")~
           GOTO 13

  IF ~PartyHasItem("MISCP39")~ THEN REPLY @23 /* ~(vous lui donnez la larme de sang de Taguar)~  */
           DO ~TakePartyItem("MISCP39")~
           GOTO 13

  IF ~PartyHasItem("MISCP40")~ THEN REPLY @24 /* ~(vous lui donnez la larme de sang de Kael)~  */
           DO ~TakePartyItem("MISCP40")~
           GOTO 13

  IF ~PartyHasItem("MISCP41")~ THEN REPLY @25 /* ~(vous lui donnez la larme de sang de Islendra)~  */
           DO ~TakePartyItem("MISCP41")~
           GOTO 13

END

IF ~~ THEN BEGIN 8

  SAY   @26=@27 /*  ~Vous regretterez vôtre choix néanmoins je vous souhaite bonne chance.~ ~Adieu Sang de Bhaal (ses yeux se ferment).~  */ 
  IF ~~ THEN
           DO ~SetGlobal("Heras_destroy","COM023",1)~
           EXIT
END

IF ~~ THEN BEGIN 9

  SAY   @28=@29 /*  ~Vous regretterez vôtre choix néanmoins je vous souhaite bonne chance.~ ~Adieu Sang de Bhaal (ses yeux se ferment).~  */ 
  IF ~~ THEN 
           DO ~SetGlobal("Heras_destroy","COM023",1)~
           EXIT
END


IF ~~ THEN BEGIN 10

  SAY   @30=@31=@32 /*  ~Le plus important est de vaincre et toutes les aides sont les bienvenues.~ ~ Vous regretterez vôtre choix néanmoins je vous souhaite bonne chance.~ ~Adieu Sang de Bhaal (ses yeux se ferment).*/ 
  IF ~~ THEN 
           DO ~SetGlobal("Heras_destroy","COM023",1)~
           EXIT
END

IF ~~ THEN BEGIN 13

  SAY   @33=@34 /*  ~(des bras de pierre surgissent des murs sous le regard avide de x). Il comptemple la pierre d'un air très satisfait.~ ~Revenez sur vos pas et vous trouverez un coffre qui recelle bien des trésors. Faites en bon usage. (ses yeux se ferment).~  */ 
  IF ~~ THEN 
         DO ~SetGlobal("Heras_coffre","COM023",1)
             SetGlobal("Heras_destroy","COM023",1)~
         EXIT

END