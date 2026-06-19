BEGIN ~CORUMOR~

IF ~GlobalLT("PDBCHAP","GLOBAL",2)~ THEN BEGIN 0
  SAY   @1
  IF ~~ THEN 
         EXIT
END

IF ~GlobalLT("PDBCHAP","GLOBAL",2)~ THEN BEGIN 1
  SAY   @2
  IF ~~ THEN 
         EXIT
END

IF ~GlobalLT("PDBCHAP","GLOBAL",2)~ THEN BEGIN 2
  SAY   @3
  IF ~~ THEN 
         EXIT
END

IF ~GlobalLT("PDBCHAP","GLOBAL",2)~ THEN BEGIN 3
  SAY   @4
  IF ~~ THEN 
         EXIT
END

IF ~GlobalLT("PDBCHAP","GLOBAL",2)~ THEN BEGIN 4
  SAY   @5
  IF ~~ THEN 
         EXIT
END