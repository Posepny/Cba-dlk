BEGIN ~COMALAD~

// Echec à l'énigme
IF ~Global("Sphinx_enigme","COM023",2)~ THEN BEGIN 1

  SAY   @1=@2 /*  ~La réponse était IMPORTANTE Sang de Bhaal et vous avez platement échoué. Il est maintent évident que Vous êtes né pour mourir...~ ~Je suis Maladie. Sucer votre moelle divine sera une délectation.~  */ 
  IF ~NumInPartyLT(3)~ THEN 
      DO ~SetGlobal("Sphinx_enigme","COM023",3)~
      GOTO 3
   
  IF ~NumInPartyGT(2)~ THEN 
      DO ~SetGlobal("Sphinx_enigme","COM023",3)~
      GOTO 7
END

//Global("Sphinx_enigme","COM023",1)
// Le groupe a ouvert le coffre
IF ~Global("test","COM023",0)~ THEN BEGIN 2

  SAY   @3=@4 /*  ~La réponse était IMPORTANTE Sang de Bhaal et vous avez su y répondre. Vous auriez pu quittez ces lieux... Maintenant vous êtes à moi!~ ~  Je suis Maladie. Sucer votre moelle divine sera une délectation.~  */ 
    IF ~NumInPartyLT(3)~ THEN 
      DO ~SetGlobal("Sphinx_enigme","COM023",3)
	      Enemy()~
      GOTO 3
   
  IF ~NumInPartyGT(2)~ THEN 
      DO ~SetGlobal("Sphinx_enigme","COM023",3)
	      Enemy()~
      GOTO 7
END

IF ~~ THEN BEGIN 3

  SAY   @5 /*  ~J'hésite. Hummm par qui vais-je commencer... Désirez-vous que je commence par les amuses bouches ou par le dessert?~  */ 
  IF ~~ THEN REPLY @6 /* ~Je ne te crains pas. Approches!~  */
           GOTO  4

  IF ~Gender(PLAYER2,FEMALE)~ THEN REPLY @7 /* ~Elle va faire une bouchée de toi!~  */
           GOTO  5

  IF ~Gender(PLAYER2,MALE)~ THEN REPLY @8 /* ~Il va faire une bouchée de toi!~  */
           GOTO  6

END

IF ~~ THEN BEGIN 4

  SAY   @9=@10 /*  ~Le dessert alors. C'est amusant, ils disent tous ça!~ ~ A table!~  */ 
  IF ~~ THEN 
      DO ~Enemy()~
      EXIT

END

IF ~~ THEN BEGIN 5

  SAY   @11=@12 /*  ~Très courageux de vôtre part.~ ~A table!~  */ 
  IF ~~ THEN 
      DO ~Enemy()~
      EXIT

END

IF ~~ THEN BEGIN 6

  SAY   @13=@14 /*  ~Très courageux de vôtre part.~ ~A table!~  */ 
  IF ~~ THEN 
      DO ~Enemy()~
      EXIT

END

IF ~~ THEN BEGIN 7

  SAY   @15 /*  ~J'hésite. Hummm par qui vais-je commencer... Désirez-vous que je commence par les amuses bouches ou par le dessert?~  */ 
  IF ~~ THEN REPLY @16 /* ~Je ne te crains pas. Approches!~  */
           GOTO  8

  IF ~~ THEN REPLY @17 /* ~Mes compagnons vont faire une bouchée de toi!~  */
           GOTO  9

END

IF ~~ THEN BEGIN 8

  SAY   @18=@19 /*  ~Le dessert alors. C'est amusant, ils disent tous ça!~ ~ A table!~  */ 
  IF ~~ THEN 
      DO ~Enemy()
	      SetGlobal("Maladie_combat","COM023",1)~
      EXIT

END

IF ~~ THEN BEGIN 9

  SAY   @20=@21 /*  ~Très courageux de vôtre part.~ ~ A table!~  */ 
  IF ~~ THEN 
      DO ~Enemy()
	      SetGlobal("Maladie_combat","COM023",1)~
      EXIT

END


