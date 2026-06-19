// Creator:	C:\2-BG_editeur2\Exe\BG_editor.exe
// Argument:	C:\2-BG_editeur2\exe\Mod\TIAXP.D
// Game:	C:\Jeu_baldur2\
// Source:	C:\2-BG_editeur2\exe\Mod\TIAXP.D
// dialog:	C:\2-BG_editeur2\exe\Mod\\dialog.tlk

BEGIN ~TIAXP~

IF ~!inparty("TIAX")~ THEN BEGIN 1
  SAY @1 /* ~Le grand Cyric savait que vous auriez besoin de TIAX et de son immense pouvoir. Je vous aiderai jusqu'à ce que l'heure de mon sacre soit venu!~ */
  IF ~~ THEN 
    REPLY @2 /* ~Excellent, joignes toi à moi.~ */ 
    DO ~JOINPARTY()~
    EXIT
    
  IF ~~ THEN
    REPLY @3 /* ~Je n'ai pas besoin de toi pour le moment.~  */ 
    EXIT
END
  

