BEGIN ~COMASSE4~

IF ~Global("Bhaal_epreuves","GLOBAL",4)~ THEN BEGIN 0
  SAY @1 /* ~Il est de retour! Loué le seigneur du meurtre, mes frères! ~ */

  IF ~~ THEN 
    REPLY @2 /* ~Mais qui sont tous ces gens?~ */
    GOTO 1

  IF ~~ THEN 
    REPLY @3 /* ~Encore vous! Et maintenant, il n'est plus seul...~ */
    GOTO 3

  IF ~~ THEN 
    REPLY @4 /* ~Vous êtes du genre collant. Je vais me débarrassez de vous tous avant de partir. C'est plus sur!~ */
    GOTO 4
END

IF ~~ THEN BEGIN 1
  SAY @5=@6=@7 /* ~J'ai réveillé mes frères pendant votre absence. ~ ~(Massena se tourne vers les autres) Regardez Masque de mort, le champion de Bhaal a été révélé. Notre grande prêtresse Systéra avait raison! ~ ~(il vous regarde à nouveau en levant les bras) Un grand destin vous attend!~  */

  IF ~~ THEN 
    REPLY @8 /* ~J'y compte bien. Au fait, c'était vraiment le bordel les épreuves. J'espère que c'est fini...~ */
    GOTO 2

  IF ~~ THEN 
    REPLY @9 /* ~Je me montrerai digne de cet honneur. Que dois-je faire?~ */
    GOTO 7

  IF ~~ THEN 
    REPLY @10 /* ~Trouvez-vous un autre champion. J'en ai assez de ce temple. Je pars!~ */
    GOTO 5
END

IF ~~ THEN BEGIN 2
  SAY @11 /* ~Le grand maître devait s'assurer que vous étiez l'élu.~ */

  IF ~~ THEN 
    GOTO 7
END

IF ~~ THEN BEGIN 3
  SAY @12 /* ~Le grand maître a fait de vous son champion. Un grand destin vous attend!~ */

  IF ~~ THEN 
    REPLY @13 /* ~Je serai le pantin de personne. Votre groupe d'illuminés peut se trouver un autre champion. Je pars!~ */
    GOTO 5

  IF ~~ THEN 
    REPLY @14 /* ~Humm j'espère que ça en vaut la peine. Qu'attendez-vous de moi?~ */
    GOTO 5	
  
END

IF ~~ THEN BEGIN 4
  SAY @15 /* ~Vous osez refuser l'honneur qui vous est fait! ~ */

  IF ~~ THEN 
    GOTO 6
END

IF ~~ THEN BEGIN 5
  SAY @16 /* ~Oh non, vous n'irez nulle part...~ */ 
IF ~~ THEN 
    GOTO 6
END

// Refus: ennemis de Bhaal
IF ~~ THEN BEGIN 6
  SAY @17/* ~Vôtre place est au fond du puit. Vous répondrez de votre traitrise au grand maître!~ */
IF ~~ THEN 
    DO ~SetGlobal("Bhaal_allie","GLOBAL",2)
	    SetGlobal("Bhaal_epreuves","GLOBAL",5)~
    EXIT
END

// Départ du groupe et prières: allié de Bhaal
IF ~~ THEN BEGIN 7
  SAY @18=@19 /* ~Vous pouvez remonter à la surface. Je vous contacterai lorsque nous aurons remis le temple en état.~ ~Mes frères, commençons par prier.~ ~Gloire au seigneur du meutre. Son retour est prôche!~ ~Ses fidèles seront récompensés et sa vengeance sera terrible!~  */
IF ~~ THEN 
    DO ~SetGlobal("Bhaal_allie","GLOBAL",1)
	    SetGlobal("Bhaal_epreuves","GLOBAL",5)~
    EXIT
END

