BEGIN ~COKAE2~


// Combat Ultime + Kael allié + 6 autres boss vaincus: dial de finisse
IF ~Global("KAEL_FIN","COM024",1)~ THEN BEGIN 1
  SAY @251 /* ~C'est à mon tour de disparaître et vous sortirez vainqueur de l'ultime combat. Vôtre récompense vous attend Sang de Bhaal. Ne m'oubliez pas!~ */
  IF ~~ THEN  
      DO ~SetGlobal("KAEL_FIN","COM024",2)~  
      EXIT
END
 



