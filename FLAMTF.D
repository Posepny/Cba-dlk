// Creator:	C:\2-BG_editeur2\Exe\BG_editor.exe
// Argument:	C:\2-BG_editeur2\exe\Mod\FLAMTF.D
// Game:	C:\Jeu_baldur2\
// Source:	C:\2-BG_editeur2\exe\Mod\FLAMTF.D
// dialog:	C:\2-BG_editeur2\exe\Mod\\dialog.tlk

BEGIN ~FLAMTF~

IF  ~NumTimesTalkedTo(0)~   THEN BEGIN 0
  SAY @1 /* ~Halte! Pour entrer, veuillez me présenter votre carton d'invitation.~ */

  IF ~~ THEN // seul 
    REPLY @2 /* ~Voici mon carton d'invitation.~ */
    GOTO 1

  IF ~~ THEN // avec des compagnons
    REPLY @3 /* ~Voici mon carton d'invitation.~ */
    GOTO 2

  IF ~~ THEN
    REPLY @4 /* ~J'en n'ai pas besoin, je suis le Protecteur de Baldur.~ */
    GOTO 4

  IF ~~ THEN
    REPLY @5 /* ~Un carton d'invitation? Je n'étais pas au courant...~ */
    GOTO 5
END

IF  ~~   THEN BEGIN 1
  SAY @6 /* ~Vous pouvez entrer.~ */

  IF ~~ THEN  
    // Déplacement charname dans le RDC trône de fer
    EXIT
END

IF  ~~  THEN BEGIN 2
  SAY @7 /* ~vous pouvez entrer mais vos compagnons restent à l'extérieur~ */

  IF ~~ THEN  
    REPLY @8 /* ~Très bien, ils vont m'attendre ici.~ */
    // Déplacement charname dans le RDC trône de fer
    EXIT

  IF ~~ THEN
    REPLY @9 /* ~Hors de question!~ */
    GOTO 3
END

IF  ~~   THEN BEGIN 3
  SAY @10 /* ~C'est simple, pas de carton, pas d'entrée.~ */

  IF ~~ THEN  
    JOURNAL @11 /* Pour entrer, les gardes réclament un carton d'invitation délivré par Macros pour chaque personne... Il faut que je trouve une autre issue si je veux entrer avec mes compagnons.~ */
    EXIT
END

IF  ~~   THEN BEGIN 4
  SAY @12 /* ~Je sais qui vous êtes. Mais les ordres de Macros le noir sont clairs. Pas de carton, pas d'entrée!~ */

  IF ~~ THEN
    REPLY @13 /* ~Où puis je trouver un carton d'invitation?~ */
    GOTO 6
END

IF  ~~   THEN BEGIN 5
  SAY @14 /* ~Les ordres de Macros le noir sont clairs. Pas de carton, pas d'entrée!~ */

  IF ~~ THEN  
    REPLY @15 /* ~Où puis je trouver un carton d'invitation?~ */
    GOTO 6
END

IF  ~~   THEN BEGIN 6
  SAY @16 /* ~C'est Macros lui même qui a délivré les cartons et il se trouve à l'intérieur.~ */

  IF ~~ THEN  
    REPLY @17 /* ~Grrr j'aurai dû m'en douter! Très bien, faites le chercher...~ */
    GOTO 7

  IF ~~ THEN
    REPLY @18 /* ~Je suis sur qu'avec un petit quelque chose, je peux entrer...~ */
    GOTO 8

  IF ~~ THEN  
    REPLY @19 /* ~Je ne suis pas d'humeur à rire, laissez moi entrer où je me fache!~ */
    GOTO 9

  IF ~~ THEN
    REPLY @20 /* ~Le PROTECTEUR DE BALDUR c'est moi! Laissez moi entrer!~ */
    GOTO 10
END

IF  ~~   THEN BEGIN 7
  SAY @21 /* ~Nous avons pour ordre de rester à notre poste. Revenez avec un carton et vous pourrez entrer...~ */

  IF ~~ THEN  
    JOURNAL @22 /* Pour entrer, les gardes réclament un carton d'invitation délivré par Macros... Il faut que je trouve une autre issue ou un carton. Peut être qu'au palais, il y a un carton pour moi...~ */
    EXIT
END

IF  ~~   THEN BEGIN 8
  SAY @23 /* ~(regard impassible) Revenez avec un carton et vous pourrez entrer...~ */

  IF ~~ THEN 
    JOURNAL @22 /* Pour entrer, les gardes réclament un carton d'invitation délivré par Macros... Il faut que je trouve une autre issue ou un carton. Peut être qu'au palais, il y a un carton pour moi...~ */
    EXIT
END

IF  ~~   THEN BEGIN 9
  SAY @24 /* ~Moi de même! (regard sévère) Revenez avec un carton et vous pourrez entrer!~ */

  IF ~~ THEN  
    JOURNAL @22 /* Pour entrer, les gardes réclament un carton d'invitation délivré par Macros... Il faut que je trouve une autre issue ou un carton. Peut être qu'au palais, il y a un carton pour moi...~ */
     EXIT
END

IF  ~~   THEN BEGIN 10
  SAY @25 /* ~Gardez votre calme! Revenez avec un carton et vous pourrez entrer...~ */

  IF ~~ THEN  
    JOURNAL @22 /* Pour entrer, les gardes réclament un carton d'invitation délivré par Macros... Il faut que je trouve une autre issue ou un carton. Peut être qu'au palais, il y a un carton pour moi...~ */
    EXIT
END
