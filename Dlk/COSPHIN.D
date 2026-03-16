BEGIN ~COSPHIN~ 

IF ~Global("gpe_complet","COM023",1)~ THEN BEGIN 1 

  SAY @1 /* ~Your group is complete, blood of Bhaal. Ascend these steps so I may see you.~ */ 
  IF ~~ THEN    
          DO ~SetGlobal("gpe_complet","COM023",2)~   
          EXIT 
END 

IF ~Global("gpe_complet","COM023",2)~ THEN BEGIN 2 

  SAY @2=@3=@4=@5=@6=@7 /* ~(The strange stone creature stares intently at you)~ ~Listen and find the answer to my question. Thus you will leave these places unharmed.~ ~In the shadows, I approach unseen by all.~ ~On sweat and blood, I feed.~ ~In my wake, I sow death, and the survivors bury their dead.~ ~What am I?~ */ 
  IF ~~ THEN REPLY @8 /* ~Disease~ */ 
           DO ~SetGlobal("gpe_complet","COM023",3)~ 
           GOTO 3 

  IF ~~ THEN REPLY @9 /* ~Famine~ */            
           DO ~SetGlobal("gpe_complet","COM023",3)~ 
           GOTO 4 

  IF ~~ THEN REPLY @10 /* ~Murder~ */ 
           DO ~SetGlobal("gpe_complet","COM023",3)~ 
           GOTO 5            
END 

IF ~~ THEN BEGIN 3 

  SAY @11=@12 /* ~Correct answer: Bhaal's blood. The exit is behind me. ~ ~Leave this place immediately.~ */ 
  IF ~~ THEN 
          DO ~SetGlobal("Sphinx_enigme","COM023",1)~ 
          EXIT 
END 

IF ~~ THEN BEGIN 4 

  SAY @13 /* ~Wrong answer, Bhaal blood. The disease has a present for you.~ */ 
  IF ~~ THEN 
          DO ~SetGlobal("Sphinx_enigme","COM023",2)~ 
          EXIT 
END 

IF ~~ THEN BEGIN 5 

  SAY @13/* ~Wrong answer, Bhaal blood. The disease has a present for you.~ */ 
  IF ~~ THEN 
          DO ~SetGlobal("Sphinx_enigme","COM023",2)~ 
          EXIT 
END 

IF ~Global("gpe_incomplet","COM023",1)~ THEN BEGIN 6 

  SAY @14 /* ~Your party is not complete. You will not advance further.~ */ 
  IF ~~ THEN 
          DO ~SetGlobal("gpe_incomplet","COM023",2)~ 
          EXIT 
END 

// The chest is open and the Disease has not yet appeared. 
IF ~Global("coffre_ouvert","COM023",1)~ THEN BEGIN 6 

  SAY @15/* ~~ */ 
  IF ~~ THEN 
        DO ~SetGlobal("coffre_ouvert","COM023",2)~ 
        EXIT 
END
