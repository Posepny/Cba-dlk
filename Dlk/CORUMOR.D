BEGIN 
  ~ 
  CORUMOR 
         ~ 

If
​
​
  ​
  ​
         ​
​ 
​BEGIN 2 
  SAY @3 
  IF ~~ THEN 
         EXIT 
END 
IF ~GlobalLT("PDBCHAP","GLOBAL",2)~ THEN BEGIN 3 
  SAY @4 
  IF ~~ THEN 
         EXIT 
END 
IF ~GlobalLT("PDBCHAP","GLOBAL",2)~ THEN BEGIN 4 
  SAY @5 
  IF ~~ THEN 
         EXIT 
END


