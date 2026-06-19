BEGIN ~COKAEL~

// Rencontre
IF ~Global("KAEL_rencontre","COM022",1)~ THEN BEGIN 1

     SAY @1=@2 /* ~(L'homme vous regarde droit dans les yeux) C'est un honneur pour moi de recevoir un sang de Bhaal dans ma demeure.~ ~ Saviez-vous que je suis celui qui a conçu ces lieux et les larmes de sang pour notre seigneur et maître? C'était juste avant que ce Cespenar me fasse tomber en disgrace...~ */
     IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @3  /* ~Tout ceci est une longue histoire.~ */ 
  IF ~~ THEN REPLY @4 /* ~Tu parles trop! Qu'on en finisse!~ */
          DO ~SetGlobal("KAEL_rencontre","COM022",2)~
          GOTO 3

  IF ~Global("KAEL_larmes","COM022",0)~ THEN REPLY @5 /* ~A quoi servent ces larmes?~ */
          DO ~SetGlobal("KAEL_rencontre","COM022",2)
              SetGlobal("KAEL_larmes","COM022",1)~
          GOTO 4

  IF ~Global("KAEL_cespenar","COM022",0)~ THEN REPLY @6 /* ~Qui est ce Cespernar?~ */
          DO ~SetGlobal("KAEL_rencontre","COM022",2)
              SetGlobal("KAEL_cespenar","COM022",1)~
          GOTO 5

  IF ~Global("KAEL_nom","COM022",0)~ THEN REPLY @7 /* ~Quel est vôtre nom?~ */
          DO ~SetGlobal("KAEL_rencontre","COM022",2)
              SetGlobal("KAEL_nom","COM022",1)~
          GOTO 6

  IF ~Global("KAEL_ici","COM022",0)~ THEN REPLY @8 /* ~Que faites vous ici?~ */
          DO ~SetGlobal("KAEL_rencontre","COM022",2)
              SetGlobal("KAEL_ici","COM022",1)~
          GOTO 7
END

IF ~~ THEN BEGIN 3
  SAY @9 /* ~Dans ce cas, entrons dans le vif du sujet!~ */ 
  IF ~Global("COM022_NB_PLAYER","COM022",0)~ THEN GOTO 16
  
  IF ~GlobalGT("COM022_NB_PLAYER","COM022",0)~ THEN GOTO 9
END

IF ~~ THEN BEGIN 4

  SAY  @10 /*  ~Vous en ferez usage bientôt si vous êtes doués de raison. Croire que vous pourriez vaincre sans serait pure folie.~  */ 
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 5

  SAY @11 /*  ~C'est un misérable avorton avec des ailes. Il m'a manipulé pour prendre ma place auprès du maître.~  */ 
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 6

  SAY @12 /*  ~Mon nom m'a été retiré lorsque je suis arrivé ici. J'appartiens au temple et ma mission est claire. Moisir ici pour l'éternité...~  */ 
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 7

  SAY @13=@14 /*  ~J'obéis aux désirs du maître. Bhaal met son enfant à l'épreuve. Vous en l'occurence.~ ~ Soyez digne de vos origines et vous serez récompensés. Je vous laisse deviner l'autre option.~  */ 
  IF ~~ THEN GOTO 2

END

IF ~~ THEN BEGIN 9

  SAY @15 /*  ~Votre père attend un présent de votre part. Quel compagnon désirez-vous offrir au seigneur du meurtre?~  */ 
  IF ~~ THEN REPLY @16 /* ~Sacrifier un de mes alliés? La bonne blague.~  */
           GOTO  10

  IF ~~ THEN REPLY @17 /* ~Je vais lui offrir, hummm, vôtre tête! Si vous croupissez ici, c'est que Bhaal en avait marre de la voir!~  */
           GOTO  12
END

IF ~~ THEN BEGIN 10

  SAY @18 /*  ~L'humour n'a jamais été mon fort. Ma fontaine sang attend son dû. Désignez moi votre choix.~  */ 
  IF ~~ THEN REPLY @19 /* ~Ma réponse est toujours non.~  */
      GOTO  11

  IF ~Global("COM022_PLAYER2","COM022",1) ~ THEN REPLY @20 /* ~Sacrifions, <PLAYER2>, j'en ai assez de lui.~  */
      DO ~SetGlobal("Kael_sacrifice","COM022",2)~
		  EXIT

  IF ~Global("COM022_PLAYER3","COM022",1) ~ THEN REPLY @21 /* ~Sacrifions, <PLAYER3>, j'en ai assez de lui.~  */
      DO ~SetGlobal("Kael_sacrifice","COM022",3)~
		  EXIT

  IF ~Global("COM022_PLAYER4","COM022",1) ~ THEN REPLY @22 /* ~Sacrifions, <PLAYER4>, j'en ai assez de lui.~  */
      DO ~SetGlobal("Kael_sacrifice","COM022",4)~
		  EXIT

  IF ~Global("COM022_PLAYER5","COM022",1) ~ THEN REPLY @23 /* ~Sacrifions, <PLAYER5>, j'en ai assez de lui.~  */
      DO ~SetGlobal("Kael_sacrifice","COM022",5)~
		  EXIT

  IF ~Global("COM022_PLAYER6","COM022",1) ~ THEN REPLY @24 /* ~Sacrifions, <PLAYER6>, j'en ai assez de lui.~  */
      DO ~SetGlobal("Kael_sacrifice","COM022",6)~
		  EXIT
END

// Sacrifice
IF ~~ THEN BEGIN 11

  SAY @25 /*  ~Dans ce cas, c'est vôtre propre sang qui alimentera ma fontaine!~  */ 
  IF ~~ THEN 
          DO ~SetGlobal("Kael_sacrifice","COM022",1)~
          EXIT
END

IF ~~ THEN BEGIN 12

  SAY @26 /*  ~Très amusant... Mais ça ne me fait pas rire du tout! C'est vôtre propre sang qui alimentera ma fontaine!~  */ 
  IF ~~ THEN 
      DO ~SetGlobal("Kael_sacrifice","COM022",1)~
  EXIT

END

// Kael sacrifie un membre du groupe
IF ~~ THEN BEGIN 13

  SAY @27 /*  ~Mon maître! L'heure du sacrifice a sonné et le meurtre appelle le sang! Acceptes cette offrande et montres la voie à ton digne représentant!~  */ 
  IF ~~ THEN EXIT
END

// Kael est vaincu
IF ~Global("Kael_vaincu","COM022",1)~ THEN BEGIN 14

  SAY @28=@29=@30=@31=@32 /*  ~Arrggg, vous m'avez vaincu...~ ~ Dès votre arrivé, j'ai senti que vous étiez le sang de Bhaal que j'attendai. Prenez ma larme mais gardez vous de l'utiliser. Je serai votre allié durant le combat ultime.~ ~ Prenez aussi ceci (il vous tend son anneau). Lorsque vous serez à nouveau dans le monde des vivants, dites à votre Clerc (il se met à chuchotter et vous entendez à peine)~ ~ C'est l'anneau de Kael, il serait honoré de servir votre temple.~ ~ Bien, il est temps pour vous de continuer votre route et d'affronter une nouvelle épreuve.~  */ 
    IF ~~ THEN 
        DO ~SetGlobal("Kael_vaincu","COM022",2)~
        EXIT
END

// Kael a sacrifié un membre du groupe
IF ~Global("Kael_sacrifice","COM022",7)~ THEN BEGIN 15

  SAY @33=@34 /* ~Le maître est satisfait Sang de Bhaal, vous pouvez quitter les lieux et continuer votre route.~  ~J'allais oublier un dernier détail. Les esprits invoqués ont encore soif de meurtre! (sourire)~  */ 
  IF ~~ THEN 
      DO ~SetGlobal("Kael_sacrifice","COM022",8)~
    EXIT
END

// Le Charname est seul: il sera la cible du sacrifice
IF ~~ THEN BEGIN 16

  SAY @35 /* ~votre père attend une offrande de votre part. Etant donné que vous êtes seul, je ne vois qu'une seule offrande possible. C'est vous qui allez nourrir ma fontaine de sang!~  */ 
  IF ~~ THEN 
      DO ~SetGlobal("Kael_sacrifice","COM022",1)~
  EXIT
END
