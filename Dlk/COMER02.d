BEGIN ~COMER02~

IF ~True()~ THEN BEGIN 0 
  SAY @1 /* ~Nous sommes les frères Bracoli et nous venons directement d'Eau profonde. Si votre bourse contient de l'or, je suis sur qu'on nous pourrons faire affaire.~ */
  IF ~~ THEN 
    REPLY @2 /* ~Voyons ce que vous avez à proposer.~ */ 
    DO ~StartStore("COMER02",LastTalkedToBy(Myself))~ 
    EXIT
  IF ~~ THEN 
    REPLY @3 /* ~Je n'ai besoin de rien pour le moment. Je reviendrai peut-être plus tard.~ */ 
    EXIT
END
