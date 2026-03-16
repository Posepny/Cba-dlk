// Creator: C:\2-BG_editeur2\Exe\BG_editor.exe 
// Argument: C:\2-BG_editeur2\exe\Mod\FLAMTF.D 
// Game: C:\Jeu_baldur2\ 
// Source: C:\2-BG_editeur2\exe\Mod\FLAMTF.D 
// dialog: C:\2-BG_editeur2\exe\Mod\\dialog.tlk 

BEGIN ~FLAMTF~ 

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0 
  SAY @1 /* ~Halt! To enter, please present your invitation.~ */ 

  IF ~~ THEN // alone 
    REPLY @2 /* ~Here is my invitation.~ */ 
    GOTO 1 

  IF ~~ THEN // with companions 
    REPLY @3 /* ~Here is my invitation.~ */ 
    GOTO 2 

  IF ~~ THEN 
    REPLY @4 /* ~I don't need one, I am the Protector of Baldur.~ */ 
    GOTO 4 

  IF ~~ THEN 
    REPLY @5 /* ~An invitation? I wasn't aware...~ */ 
    GOTO 5 
END 

IF ~~ THEN BEGIN 1 
  SAY @6 /* ~You may enter.~ */ 

  IF ~~ THEN   
    // Charname move to the ground floor of the Iron Throne 
    EXIT 
END 

IF ~~ THEN BEGIN 2 
  SAY @7 /* ~You may enter, but your companions remain outside~ */ 

  IF ~~ THEN   
    REPLY @8 /* ~Very well, they will wait for me here.~ */ 
    // Charname move to the ground floor of the Iron Throne 
    EXIT 

  IF ~~ THEN 
    REPLY @9 /* ~Absolutely not!~ */ 
    GOTO 3 
END 

IF ~~ THEN BEGIN 3 
  SAY @10 /* ~It's simple, no card, no entry.~ */ 

  IF ~~ THEN   
    JOURNAL @11 /* To enter, the guards demand an invitation card issued by Macros for each person... It is necessary that I'll find another way in if I want to enter with my companions.~ */ 
    EXIT 
END 

IF ~~ THEN BEGIN 4 
  SAY @12 /* ~I know who you are. But Macros the black's orders are clear. No card, no entry!~ */ 

  IF ~~ THEN 
    REPLY @13 /* ~Where can I find an invitation card?~ */ 
    GOTO 6 
END 

IF ~~ THEN BEGIN 5 
  SAY @14 /* ~Macros the black's orders are clear. No card, no entry!~ */ 

  IF ~~ THEN   
    REPLY @15 /* ~Where can I find an invitation card?~ */ 
    GOTO 6 
END 

IF ~~ THEN BEGIN 6 
  SAY @16 /* ~Macros himself delivered the cards and he's inside.~ */ 

  IF ~~ THEN   
    REPLY @17 /* ~Grrr, I should have known! Very well, have him look for it...~ */ 
    GOTO 7 

  IF ~~ THEN
    REPLY @18 /* ~I'm sure with a little something, I can get in...~ */ 
    GOTO 8 

  IF ~~ THEN   
    REPLY @19 /* ~I'm not in a laughing mood, let me in or I'll get angry!~ */ 
    GOTO 9 

  IF ~~ THEN 
    REPLY @20 /* ~I am BALDUR'S PROTECTOR! Let me in!~ */ 
    GOTO 10 
END 

IF ~~ THEN BEGIN 7 
  SAY @21 /* ~We are ordered to remain at our posts. Return with an invitation card and you may enter...~ */ 

  IF ~~ THEN   
    JOURNAL @22 /* To enter, the guards demand an invitation card issued by Macros... I must find another way in or get a card. Maybe there's a card for me at the palace...~ */ 
    EXIT 
END 

IF ~~ THEN BEGIN 8 
  SAY @23 /* ~(impassive gaze) Come back with a card and you can enter...~ */ 

  IF ~~ THEN 
    JOURNAL @22 /* To enter, the guards demand an invitation card issued by Macros... I need to find another way out or a card. Maybe there's a card for me at the palace...~ */ 
    EXIT 
END 

IF ~~ THEN BEGIN 9 
  SAY @24 /* ~Me too! (stern gaze) Come back with a card and you can enter!~ */ 

  IF ~~ THEN   
    JOURNAL @22 /* To enter, the guards demand an invitation card issued by Macros... I need to find another way out or a card. Maybe there's a card for me at the palace...~ */ 
     EXIT 
END 

IF ~~ THEN BEGIN 10 
  SAY @25 /* ~Keep calm! Come back with a card and you can enter...~ */ 

  IF ~~ THEN   
    JOURNAL @22 /* To enter, the guards demand an invitation card issued by Macros... I need to find another way out or a card. Maybe there's a card for me at the palace...~ */ 
    EXIT 
END
