// Creator:	C:\2-BG_editeur2\Exe\BG_editor.exe
// Argument:	C:\2-BG_editeur2\exe\Mod\ELMINP1.D
// Game:	C:\Jeu_baldur2\
// Source:	C:\2-BG_editeur2\exe\Mod\ELMINP1.D
// dialog:	C:\2-BG_editeur2\exe\Mod\\dialog.tlk

BEGIN ~ELMINP1~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
 SAY @1 /* ~Vous voici mon enfant. Que d’embûches vous avez affronté depuis notre dernière rencontre. Gorion serait fier de vous.~*/

 IF ~~  THEN 
   REPLY @2  /* ~Je ne suis plus un enfant! Gorion était un faible et j’ai vaincu Sarevok moi-même! Maintenant je suis un homme puissant, redouté de tous!~ */
   GOTO 1

 IF ~~  THEN 
   REPLY @3  /* ~Je ne suis plus l’enfant innocent de château Suif. J’ai éliminé Sarevok et vengé Gorion!~ */
   GOTO 2

 IF ~~  THEN 
   REPLY @4  /* ~Vous avez connu Gorion?~ */
   GOTO 3
END

IF ~~ THEN BEGIN 1
 SAY @5 /* ~Gorion a fait de son mieux. Malheureusement il n'est pas parvenu à vous protéger.~ */
 IF ~~  THEN
  GOTO 4
END

IF ~~ THEN BEGIN 2
 SAY @6 /* ~Vous avez raison mais il vous reste un long chemin à parcourir.~ */
  IF ~~  THEN
  GOTO 4 
END

IF ~~ THEN BEGIN 3
 SAY @7 /* ~Oui, nous avons vécu quelques aventures ensemble avant qu'il ne vous recueille et vous aime comme un père.~ */
 IF ~~  THEN
  GOTO 4
END

IF ~~ THEN BEGIN 4
 SAY @8 /* ~Vous voilà Héros et Protecteur de Baldur. Malheureusement, un grand pouvoir entraîne de grandes responsabilités. Le peuple vous regarde et prend exemple sur vous.~ */
 IF ~~  THEN
   GOTO 5
END

IF ~~ THEN BEGIN 5
 SAY @9 /* ~Le meilleur conseil que je puisse vous donner, est de faire preuve de sagesse dans vos décisions. Il est toujours plus facile de tomber dans le gouffre des tentations...~ */
 IF ~~  THEN 
   REPLY @10  /* ~Je sais ce que j’ai à faire vieil homme. Je n'ai pas besoin de vos conseils!~ */
   GOTO 6
  
 IF ~~  THEN 
   REPLY @11  /* ~Je saurais me montrer digne de l'enseignement de Gorion, n’ayez pas d’inquiétudes à mon sujet.~ */
   GOTO 6
END

IF ~~ THEN BEGIN 6
 SAY @12 /* ~Bien, je vous félicite pour votre titre. Il est temps de vous laisser, Protecteur.~ */
 IF ~~  THEN 
   DO ~EsCAPEAREA()~
   EXIT   
END