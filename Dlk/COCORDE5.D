BEGIN ~COCORDE5~ 

IF ~Global("Corde_lancee5","GLOBAL",0) 
    HasItem("MISCP31",MySelf)~ THEN BEGIN 0 

  SAY @3 /* ~Do you want to throw your rope?~ */ 

  IF ~~ THEN 
    REPLY @4 /* ~Yes~ */ 
    DO ~SetGlobal("Corde_lancee5","GLOBAL",1) 
        DestroyItem("MISCP31") 
        AmbientActivate("TR5C",TRUE)~ 
    EXIT 

 IF ~~ THEN 
    REPLY @5 /* ~No~ */ 
    EXIT 
END 

IF ~Global("Corde_lancee5","GLOBAL",0) 
    !HasItem("MISCP31",MySelf)~ THEN BEGIN 1 

  SAY @2 /* ~You have no rope.~ */ 
  
  IF ~~ THEN 
   EXIT 

END 

IF ~Global("Rope_thrown5","GLOBAL",1)~ THEN BEGIN 2 

  SAY @6 /* ~What do you want?~ */ 

  IF ~~ THEN 
    REPLY @7 /* ~Go down.~ */ 
    DO ~SetGlobal("Rope_down5","COM019",1) 
        ActionOverride(Myself,LeaveAreaLUA("COM020","",[444.979],10))~ 
    EXIT 

  IF ~~ THEN 
    REPLY @8 /* ~Retrieve the rope.~ */ 
    DO ~SetGlobal("Rope_thrown5","GLOBAL",0) 
        ActionOverride(Myself,CreateItem("MISCP31",0,0,0)) 
        AmbientActivate("TR5C",FALSE)~ 
    EXIT     
    
  IF ~~ THEN 
    REPLY @9 /* ~(do nothing)~ */ 
    EXIT   
END 


/* 
BEGIN ~ROPE5~ 

IF ~Global("cord_msg","COM019",0)~ THEN BEGIN 0 

  SAY @1 /* ~If you have a rope, you could lower yourself or help your companion climb up.~ */ 
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

IF ~Global("cord_msg1","COM019",1) 
    Global("Rope_throw5","GLOBAL",0) 
    HasItem("MISCp31",LastTalkedToBy(Myself))~ THEN BEGIN 2 

  SAY @3 /* ~You want throw your rope?~ */ 

  IF ~~ THEN 
    REPLY @4 /* ~Yes~ */ 
    DO ~SetGlobal("Corde_lancee5","GLOBAL",1) 
        DestroyItem("MISCP31")~ 
    EXIT 

 IF ~~ THEN 
    REPLY @5 /* ~No~ */ 
    EXIT 
END 

IF ~Global("corde_msg","COM019",1) 
    Global("Rope_thrown5","GLOBAL",1)~ THEN BEGIN 3 

  SAY @6 /* ~Do you want to go down?~ */ 

  IF ~~ THEN 
    REPLY @4 /* ~Yes~ */ 
    DO ~SetGlobal("Rope_go down5","COM019",1) 
    EXIT 

 IF ~~ THEN
    REPLY @5 /* ~No~ */ 
    EXIT 
END 
*/
