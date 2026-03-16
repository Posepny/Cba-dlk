BEGIN ~COMALAD~ 

// Riddle failed 
IF ~Global("Sphinx_enigme","COM023",2)~ THEN BEGIN 1 

  SAY @1=@2 /* ~The answer was IMPORTANT Blood of Bhaal and you failed miserably. It is now clear that You were born to die...~ ~I am Disease. Sucking your divine marrow will be a delight.~ */ 
  IF ~NumInPartyLT(3)~ THEN 
      DO ~SetGlobal("Sphinx_enigme","COM023",3)~ 
      GOTO 3 
   
  IF ~NumInPartyGT(2)~ THEN 
      DO ~SetGlobal("Sphinx_enigme","COM023",3)~ 
      GOTO 7 
END 

//Global("Sphinx_enigme","COM023",1) 
// The group opened the chest 
IF ~Global("test","COM023",0)~ THEN BEGIN 2 

  SAY @3=@4 /* ~The answer was IMPORTANT: Blood of Bhaal, and you knew how to answer it. You could have left this place... Now you are mine!~ ~ I am Disease. Sucking your divine marrow will be a delight.~ */ 
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

  SAY @5 /* ~I hesitate. Hmmm, who shall I start with... Would you like me to begin with the appetizers or the dessert?~ */ 
  IF ~~ THEN REPLY @6 /* ~I am not afraid of you. Approach!~ */ 
           GOTO 4 

  IF ~Gender(PLAYER2,FEMALE)~ THEN REPLY @7 /* ~She'll make a meal of you!~ */ 
           GOTO 5 

  IF ~Gender(PLAYER2,MALE)~ THEN REPLY @8 /* ~He'll make a meal of you!~ */ 
           GOTO 6 

END 

IF ~~ THEN BEGIN 4 

  SAY @9=@10 /* ~Dessert then. It's funny, they all say that!~ ~ Dinner's ready!~ */ 
  IF ~~ THEN 
      DO ~Enemy()~ 
      EXIT 

END 

IF ~~ THEN BEGIN 5 

  SAY @11=@12 /* ~Very brave of you.~ ~Dinner's ready!~ */ 
  IF ~~ THEN 
      DO ~Enemy()~ 
      EXIT 

END 

IF ~~ THEN BEGIN 6 

  SAY @13=@14 /* ~Very brave of you.~ ~Dinner's ready!~ */ 
  IF ~~ THEN 
      DO ~Enemy()~ 
      EXIT 

END 

IF ~~ THEN BEGIN 7 

  SAY @15 /* ~I'm hesitating. Hmmm, who shall I start with... Would you like me to start with the appetizers or the dessert?~ */ 
  IF ~~ THEN REPLY @16 /* ~I'm not afraid of you. Come closer!~ */ 
           GOTO 8 
 
  IF ~~ THEN REPLY @17 /* ~My companions will make mincemeat of you!~ */
           GOTO 9 

END 

IF ~~ THEN BEGIN 8

  SAY @18=@19 /* ~Dessert then. It's funny, they all say that!~ ~Dinner's ready!~ */ 
  IF ~~ THEN 
      DO ~Enemy() 
	      SetGlobal("Maladie_combat","COM023",1)~ 
      EXIT 

END 

IF ~~ THEN BEGIN 9 

  SAY @20=@21 /* ~Very brave of you.~ ~Dinner's ready!~ */ 
  IF ~~ THEN 
      DO ~Enemy() 
	      SetGlobal("Maladie_combat","COM023",1)~ 
      EXIT 

END

