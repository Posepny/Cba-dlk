BEGIN ~COCORDE3~ 

IF ~Global("Corde_lancee3","GLOBAL",0) 
    HasItem("MISCP31",MySelf)~ THEN BEGIN 0 

  SAY @3 /* ~Do you want to throw your rope?~ */ 

  IF ~~ THEN 
    REPLY @4 /* ~Yes~ */ 
    DO ~SetGlobal("Corde_lancee3","GLOBAL",1) 
        DestroyItem("MISCP31") 
        AmbientActivate("TR3C",TRUE)~ 
    EXIT 

 IF ~~ THEN 
    REPLY @5 /* ~No~ */ 
    EXIT 
END 

IF ~Global("Corde_lancee3","GLOBAL",0) 
    !HasItem("MISCP31",MySelf)~ THEN BEGIN 1 

  SAY @2 /* ~You have no rope.~ */ 
  
  IF ~~ THEN 
   EXIT 

END 

IF ~Global("Rope_thrown3","GLOBAL",1)~ THEN BEGIN 2 

  SAY @6 /* ~What do you want?~ */ 

  IF ~~ THEN 
    REPLY @7 /* ~Go down.~ */ 
    DO ~SetGlobal("Rope_down3","COM019",1) 
        ActionOverride(Myself,LeaveAreaLUA("COM020","",[303.537],10))~ 
    EXIT 

  IF ~~ THEN 
    REPLY @8 /* ~Retrieve the rope.~ */ 
    DO ~SetGlobal("Rope_thrown3","GLOBAL",0) 
        ActionOverride(Myself,CreateItem("MISCP31",0,0,0)) 
        AmbientActivate("TR3C",FALSE)~ 
    EXIT     
    
  IF ~~ THEN 
    REPLY @9 /* ~(do nothing)~ */ 
    EXIT   
END 




/* 
BEGIN ~ROPE3~ 

IF ~Global("cord_msg","COM019",0)~ THEN BEGIN 0 

  SAY @1 /* ~If you have a rope, you could lower yourself or have your companion ascend.~ */ 
  IF ~~ THEN 
    DO ~SetGlobal("cord_msg","COM019",1)~ 
    EXIT 
END 

IF ~Global("cord_msg","COM019",1) 
    !HasItem("MISCp31",LastTalkedToBy(Myself))~ THEN BEGIN 1 

  SAY @2 /* ~You don't have a rope.~ */ 
  IF ~~ THEN 
   EXIT 

END 

IF ~Global("cord_msg","COM019",1) 
    Global("Rope_thrown3","GLOBAL",0) 
    HasItem("MISCp31",LastTalkedToBy(Myself))~ THEN BEGIN 2 

  SAY @3 /* ~You want to throw your rope?~ */ 

  IF ~~ THEN 
    REPLY @4 /* ~Yes~ */ 
    DO ~SetGlobal("Corde_lancee3","GLOBAL",1) 
        DestroyItem("MISCP31")~ 
    EXIT 

 IF ~~ THEN 
    REPLY @5 /* ~No~ */ 
    EXIT 
END 

IF ~Global("corde_msg","COM019",1) 
    Global("Rope_lanced3","GLOBAL",1)~ THEN BEGIN 3 

  SAY @6 /* ~Do you want to get off?~ */ 

  IF ~~ THEN 
    REPLY @4 /* ~Yes~ */  
    DO ~SetGlobal("Rope_go down3","COM019",1)
        ActionOverride(LastTalkedToBy(Myself),LeaveAreaLUA("COM020","",[418.545],10))~
    EXIT

 IF ~~ THEN 
    REPLY @5 /* ~Non~ */
    EXIT
END
*/
