BEGIN ~COTANAR1~ 

// Cambion sword proposal 
IF ~Global("Cambion_sword_quest","COM018",0)~ THEN BEGIN 0 

  SAY @1 /* ~Bring me the Cambion sword and I will give you a gift worthy of Bhaal blood.~ */ 
  IF ~~ THEN 
    REPLY @2 /* ~I'm not interested.~ */ 
    DO ~SetGlobal("Cambion_sword_quest","COM018",1) 
        SetGlobal("Cambion_sword_quest_OK","COM018",1)~ 
    GOTO 1 

  // Demon heart quest Active 
  IF ~Global("Demon_heart_quest","COM018",1) 
      Global("Com018_Cambion_dead","COM018",0)~ THEN      
    REPLY @7 /* ~Demon, the Cambion needs your heart and I have come to you Tear it off!~ */ 
    DO ~SetGlobal("Quete_cambion_epee","COM018",1)~     
    GOTO 6 

  IF ~!HasItem("SW1H02",LastTalkedToBy(Myself))~ THEN 
    REPLY @4 /* ~Your present had better live up to my expectations.~ */    
    DO ~SetGlobal("Quete_cambion_epee","COM018",1) 
    SetGlobal("Quete_cambion_epee_OK","COM018",1)~ 
    EXIT 

  IF ~HasItem("SW1H02",LastTalkedToBy(Myself))~ THEN      
    REPLY @5 /* ~Is this what you want? (You show him the Cambion sword)~ */ 
    DO ~SetGlobal("Quete_cambion_epee","COM018",1)~ 
    GOTO 3 

END 

IF ~~ THEN BEGIN 1 

  SAY @6 /* ~Out of my sight!~ */ 
  IF ~~ THEN 
    EXIT 

END 

// Cambion sword quest resolved 
IF ~Global("Cambion_sword_quest","COM018",1) 
    HasItem("SW1H02",LastTalkedToBy(Myself))~ THEN BEGIN 3 

  SAY @9 /* ~A magnificent sword... I hope he suffered. Out of my sight now.~ */ 
  IF ~~ THEN         
    REPLY @11 /* ~Say nothing.~ */ 
    DO ~SetGlobal("Quete_cambion_epee","COM018",2)~ 
    EXIT 
    
  IF ~~ THEN 
    REPLY @10 /* ~And my present?~ */ 
    DO ~SetGlobal("Quete_cambion_epee","COM018",3)~ 
    GOTO 4 

END 

IF ~~ THEN BEGIN 4 

  SAY @12 /* ~I'll leave you alive. I have things to do. Out of my sight! ~ 
    * 
    /     
  If
​
​
​
    ​
  ​You're wasting my time!~ */ 
  // Demon Heart Quest Active 
  IF ~Global("Demon_Heart_Quest","COM018",1)~ THEN 
    REPLY @14 /* ~I spoke to the Cambion. I came to get your heart.~ */     
    GOTO 6 
    IF ~~ THEN



  
    
    REPLY @16 /* ~Do not reply.~*/ 
    EXIT 
    
END 

IF ~~ THEN BEGIN 6 

  SAY @15 /* ~This serpent has rallied Bhaal's blood to its cause!~ */ 
  IF ~~ THEN 
    // Demon fight 
    DO~ChangeAIScript("TANARI",OVERRIDE) 
       Enemy()~ 
    EXIT 
    
END

