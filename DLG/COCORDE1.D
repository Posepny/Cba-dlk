BEGIN ~COCORDE1~

IF ~Global("Corde_lancee1","GLOBAL",0)
    HasItem("MISCP31",MySelf)~ THEN BEGIN 0

  SAY @3 /* ~Vous voulez lancer votre corde?~ */

  IF ~~ THEN 
    REPLY @4 /* ~Oui~ */
    DO ~SetGlobal("Corde_lancee1","GLOBAL",1)
        DestroyItem("MISCP31")
        AmbientActivate("TR1C",TRUE)~
    EXIT

 IF ~~ THEN 
    REPLY @5 /* ~Non~ */
    EXIT
END

IF ~Global("Corde_lancee1","GLOBAL",0)
    !HasItem("MISCP31",MySelf)~ THEN BEGIN 1

  SAY @2 /* ~Vous n'avez pas de corde.~ */
  
  IF ~~ THEN 
   EXIT

END

IF ~Global("Corde_lancee1","GLOBAL",1)~ THEN BEGIN 2

  SAY @6 /* ~Que voulez-vous?~ */

  IF ~~ THEN 
    REPLY @7 /* ~Descendre.~ */
    DO ~SetGlobal("Corde_descendre1","COM019",1)
        ActionOverride(Myself,LeaveAreaLUA("COM020","",[131.665],10))~
    EXIT

  IF ~~ THEN 
    REPLY @8 /* ~Récuperer la corde.~ */
    DO ~SetGlobal("Corde_lancee1","GLOBAL",0)
        ActionOverride(Myself,CreateItem("MISCP31",0,0,0))
        AmbientActivate("TR1C",FALSE)~
    EXIT    
    
  IF ~~ THEN 
    REPLY @9 /* ~(ne rien faire)~ */
    EXIT  
END
