BEGIN ~COCORDE2~

IF ~Global("Corde_lancee2","GLOBAL",0)
    HasItem("MISCP31",MySelf)~ THEN BEGIN 0

  SAY @3 /* ~Vous voulez lancer votre corde?~ */

  IF ~~ THEN 
    REPLY @4 /* ~Oui~ */
    DO ~SetGlobal("Corde_lancee2","GLOBAL",1)
        DestroyItem("MISCP31")
        AmbientActivate("TR2C",TRUE)~
    EXIT

 IF ~~ THEN 
    REPLY @5 /* ~Non~ */
    EXIT
END

IF ~Global("Corde_lancee2","GLOBAL",0)
    !HasItem("MISCP31",MySelf)~ THEN BEGIN 1

  SAY @2 /* ~Vous n'avez pas de corde.~ */
  
  IF ~~ THEN 
   EXIT

END

IF ~Global("Corde_lancee2","GLOBAL",1)~ THEN BEGIN 2

  SAY @6 /* ~Que voulez-vous?~ */

  IF ~~ THEN 
    REPLY @7 /* ~Descendre.~ */
    DO ~SetGlobal("Corde_descendre2","COM019",1)
        ActionOverride(Myself,LeaveAreaLUA("COM020","",[453.416],10))~
    EXIT

  IF ~~ THEN 
    REPLY @8 /* ~Récuperer la corde.~ */
    DO ~SetGlobal("Corde_lancee2","GLOBAL",0)
        ActionOverride(Myself,CreateItem("MISCP31",0,0,0))
        AmbientActivate("TR2C",FALSE)~
    EXIT    
    
  IF ~~ THEN 
    REPLY @9 /* ~(ne rien faire)~ */
    EXIT  
END



/*
BEGIN ~COCORDE2~

IF ~Global("corde_msg","COM019",0)~ THEN BEGIN 0

  SAY @1 /* ~Si vous avez une corde, vous pourriez descendre ou faire monter votre compagnon.~ */
  IF ~~ THEN 
    DO ~SetGlobal("corde_msg","COM019",1)~
    EXIT
END

IF ~Global("corde_msg","COM019",1)
    !HasItem("MISCp31",LastTalkedToBy(Myself))~ THEN BEGIN 1

  SAY @2 /* ~Vous n'avez pas de corde.~ */
  IF ~~ THEN 
   EXIT

END

IF ~Global("corde_msg","COM019",1)
    Global("Corde_lancee2","GLOBAL",0)
    HasItem("MISCp31",LastTalkedToBy(Myself))~ THEN BEGIN 2

  SAY @3 /* ~Vous voulez lancer votre corde?~ */

  IF ~~ THEN 
    REPLY @4 /* ~Oui~ */
    DO ~SetGlobal("Corde_lancee2","GLOBAL",1)
        DestroyItem("MISCP31")~
    EXIT

 IF ~~ THEN 
    REPLY @5 /* ~Non~ */
    EXIT
END

IF ~Global("corde_msg","COM019",1) 
        ActionOverride(LastTalkedToBy(Myself),LeaveAreaLUA("COM020","",[468.390],10))~
    REPLY @4 /* ~Yes~ */
  IF ~~ THEN
  SAY @6 /* ~Do you want to get off?~ */
    Global("Rope_launched2","GLOBAL",1)~ THEN BEGIN 3


    DO ~SetGlobal("Rope_go down2","COM019",1)
    EXIT

 IF ~~ THEN 
    REPLY @5 /* ~Non~ */
    EXIT
END
*/
