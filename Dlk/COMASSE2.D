BEGIN ~COMASSE2~ 

// The group has arrived at the gate and Ekilis is not present. The ghost materializes.**************************************************************** 
IF ~Global("Massena_sarcophagus_demande","Global",1)~ THEN BEGIN 0 

  SAY @1 /* ~Excellent, you have made it this far! ~ */ 
  IF ~~ THEN 
    GOTO 3 
    
END 

// The group has arrived at the gate and Ekilis is present. He knows about the ghost. The ghost materializes. ********************************* 
IF ~Global("ekilis_mort_demande","Global",1)~ THEN BEGIN 1 

  SAY @3 /* ~Your new companion is a servant of Cyric! Kill him or you'll all rot here!~ */ 
  IF ~~ THEN 
    DO ~SetGlobal("ekilis_deactivate","Global",1) 
    SetGlobal("ekilis_mort_demande","Global",2)     
    AddJournalEntry(@66,QUEST)~ 
    EXIT 
    //EXTERN ~COEKILIS~ 16 
END 

// COM015 - Ekilis has been killed at Massena's request ********************************************************************************************************************** 
IF ~Global("ekilis_mort_demande","Global",3) 
    !Contains("SKELP01","Sarco1")~ THEN BEGIN 2 

  SAY @4 /* ~Well, a follower of Cyric has no business in this temple!~ */ 
  
  // Massena hasn't given the sarcophagus mission yet 
  IF ~Global("Massena_sarcophagus_request","Global",0)~ THEN 
    DO ~SetGlobal("ekilis_death_request","Global",4)~ 
    GOTO 3     
   
  // Massena gave the sarcophagus mission 
  IF ~Global("Massena_sarcophagus_request","Global",1)~ THEN 
    DO ~SetGlobal("ekilis_death_request","Global",4) 
    AddJournalEntry(@67,QUEST)~     
    EXIT     

END 

// COM015 - Massena: sarcophagus mission ************************************************************************************************************************************* 
IF ~~ THEN BEGIN 3 

  SAY @2=@6 /* ~~Approach the double wall and open the secret passage. Inside, there is a sarcophagus.~ ~You will place my remains in this sarcophagus.~ */ 
  IF ~~ THEN 
    REPLY @7 /* ~And if I don't want to.~ */ 
    DO ~SetGlobal("Massena_sarcophage_demande","Global",2) 
    SetGlobal("Massena_sarcophage","Global",1) 
    AddJournalEntry(@65,QUEST)~ 
    GOTO 4 

  IF ~~ THEN 
    REPLY @8 /* ~I want to know how to get out of here first.~ */ 
    DO ~SetGlobal("Massena_sarcophage_demande","Global",2) 
    SetGlobal("Massena_sarcophage","Global",1) 
    AddJournalEntry(@65,QUEST)~ 
    GOTO 5 

  IF ~~ THEN
    REPLY @9 /* ~(do not reply)~ */ 
    DO ~SetGlobal("Massena_sarcophage_demande","Global",2) 
    SetGlobal("Massena_sarcophage","Global",1) 
    AddJournalEntry(@65,QUEST)~ 
    EXIT 

END 

IF ~~ THEN BEGIN 4 

  SAY @10 /* ~You are free to refuse and remain stuck in this temple until your death. ~ */ 
  IF ~~ THEN 
    DO ~SetGlobal("ekilis_deactivate","Global",1)~ 
    EXIT 

END 

IF ~~ THEN BEGIN 5 

  SAY @11 /* ~You will know once my remains are in the sarcophagus.~ */ 
  IF ~~ THEN 
    DO ~SetGlobal("ekilis_deactivate","Global",1)~ 
    EXIT 

END 

// COM016 - If the remains are placed in the sarcophagus and there is no alliance with Ekilis ************************************************************************************ 
IF ~Contains("SKELP01","Sarco1") 
    Global("ekilis_alliance","Global",0)~ THEN BEGIN 6 

  SAY @12=@13=@14 /* ~I see that you have kept your word. It's my turn to hold mine. ~ ~To open the temple doors, Kept's skull must be placed in the center of the prayer hall, which is on the lower level. ~ ~At that moment, the traps on that level will be deactivated and the door will open.~ */ 

  IF ~~ THEN 
    REPLY @15 /* ~Excellent. Where is that skull?~ */ 
    DO ~SetGlobal("Massena_sarcophage","Global",2) 
    ActionOverride("Sarco1",DestroyItem("SKELP01")) 
    ActionOverride(LastTalkedToBy(Myself),CreateItem("COKEY01",0,0,0))~ 
    GOTO 7     
END 

IF ~~ THEN BEGIN 7 

  SAY @16 /* ~Systera, the temple guardian, was responsible. Her corpse lies somewhere in the temple. Find it and you will find the skull.~ */ 
  IF ~~ THEN 
    REPLY @17 /* ~(no reply)~ */ 
    //DO ~AddJournalEntry(@71,QUEST)~ 
    GOTO 12 

  IF ~~ THEN 
    REPLY @18 /* ~What happened in this temple? There are dead bodies everywhere.~ */ 
    DO ~SetGlobal("hist_temple","COM016",1)~ 
    //DO ~AddJournalEntry(@71,QUEST)~ 
    GOTO 8 
END 

IF ~~ THEN BEGIN 8 

  SAY @19=@20=@21 /* ~Systera ordered us to keep the faith and prepare for Bhaal's return. Some of us didn't listen and preferred Cyric...~ ~His followers attacked the secret temple. But Systera was waiting for them! She let them in and then sealed the door. The temple of Bhaal became their tomb!(sadistic smile)~ */ 
  IF ~~ THEN 
    REPLY @22 /* ~What was the purpose of this temple?~ */ 
    //DO ~AddJournalEntry(@69,QUEST)~ 
    GOTO 9

  IF ~~ THEN 
    REPLY @23 /* ~(say nothing)~ */ 
    //DO ~AddJournalEntry(@69,QUEST)~ 
    GOTO 12 
END 

IF ~~ THEN BEGIN 9 

  SAY @24 /* ~Don't be too curious... Find the skull and leave this temple as quickly as possible.~ */ 
  IF ~~ THEN 
      DO ~SetGlobal("hist_curieux","COM016",1)~ 
    //DO ~AddJournalEntry(@70,QUEST)~ 
    GOTO 12 

END 

// Massena's remains are placed in the sarcophagus and Ekilis is allied + alive: Fatal Death *************************************************************************************** 
IF ~Contains("SKELP01","Sarco1") 
    Global("ekilis_alliance","Global",1) 
    Global("ekilis_mort","Global",0) 
    Global("MF_temple_bhaal","GLOBAL",0)~ THEN BEGIN 10 

  SAY @25=@26 /* ~You made a bad choice. Cyric's followers have no place here. (smile)~ ~Bhaal, THE LORD OF MURDER, greets you ALL!~ */ 

  IF ~~ THEN 
    DO ~SetGlobal("Massena_sarcophage","Global",2) 
    SetGlobal("MF_temple_bhaal","GLOBAL",1) 
    SetGlobal("ekilis_deactivate","Global",1)~ 
    EXIT 
    
END 

// COM016 - If the remains are placed in the sarcophagus and Ekilis is dead ********************************************************************************* 
IF ~Global("ekilis_mort","Global",1) 
    Contains("SKELP01","Sarco1")~ THEN BEGIN 11 

  SAY @12=@13=@14 /* ~I see you have kept your word. Now it's my turn to hold mine. To open the temple doors, you must place Kept's skull in the center of the prayer hall, which is on the lower level. At that moment, the traps on that level will be deactivated and the door will open. */ 

  IF THEN 
    REPLY @15 /* Excellent. Where is that skull? */ 
    DO SetGlobal("Massena_sarcophage","Global",2) 
    ActionOverride("Sarco1",DestroyItem("SKELP01")) 
    ActionOverride(LastTalkedToBy(Myself),CreateItem("COKEY01",0,0,0)) 
    GOTO 7     
END 

IF THEN BEGIN 12 
  SAY @27 /* Farewell, stranger(s) */ 
  
  IF THEN 
   DO SetGlobal("ekilis_deactivate","Global",1) 
   EXIT 
    
END
