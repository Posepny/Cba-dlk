BEGIN ~FLAMHC~ 

IF ~GLOBAL("discut_gardes_HC","GLOBAL",0)~ THEN BEGIN 0 
  SAY @1 /* ~Protector, an old man awaits you in your room.~ */ 

  IF ~~ THEN   
    REPLY @2 /* ~What are you doing here?~ */ 
    GOTO 1 
    
  IF ~~ THEN   
    REPLY @3 /* ~(no reply)~ */ 
    EXIT 
END 

IF ~~ THEN BEGIN 1 
  SAY @4 /* ~We are guarding your inn on the orders of Macros the Black.~ */ 
  
  IF ~~ THEN   
    REPLY @5 /* ~I need no one to ensure my safety.~ */ 
    DO ~SETGLOBAL("discut_gardes_HC","GLOBAL",1)~ 
    GOTO 2 
    
  IF ~~ THEN 
    REPLY @6 /* ~Besides the palace and my inn, do you guard any other places?~ */ 
    GOTO 3 
END 

IF ~~ THEN BEGIN 2 
  SAY @7 /* ~Orders are orders.~ */ 

  IF ~~ THEN   
    JOURNAL @8 /* ~Macros has ordered my inn to be guarded. Who does he think he is? I didn't ask for this.~ */ 
    EXIT 
END 

IF ~~ THEN BEGIN 3 
  SAY @9 /* ~Yes, we are guarding the house where you defeated Koveras. It is under good guard.~ */ 

  IF ~~ THEN 
    DO ~SETGLOBAL("discut_gardes_HC","GLOBAL",1)~ 
    JOURNAL @10 /* ~Macros has ordered my inn to be guarded. The same goes for the house where I killed Sarevok.~ */ 
    EXIT 
END
