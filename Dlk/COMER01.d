BEGIN ~COMER01~

IF ~True()~ THEN BEGIN 0 
  SAY @1 /* ~Hé là, vous êtes du genre aventurier vous! Je suis sur d'avoir le matériel qu'il vous faut. (grand sourire)~ */
  IF ~~ THEN 
    REPLY @2 /* ~Montrez-nous vos marchandises.~ */ 
    DO ~StartStore("COMER01",LastTalkedToBy(Myself))~
    EXIT
  
  IF ~~ THEN 
    REPLY @3 /* ~Nous n'avons besoin de rien aujourd'hui.~ */ 
    EXIT
END

