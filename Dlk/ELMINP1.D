// Creator: C:\2-BG_editeur2\Exe\BG_editor.exe 
// Argument: C:\2-BG_editeur2\exe\Mod\ELMINP1.D 
// Game: C:\Jeu_baldur2\ 
// Source: C:\2-BG_editeur2\exe\Mod\ELMINP1.D 
// dialog: C:\2-BG_editeur2\exe\Mod\\dialog.tlk 

BEGIN ~ELMINP1~ 

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0 
 SAY @1 /* ~Here you are, my child. How many obstacles you have faced since our last meeting. Gorion would be proud of you.~*/ 

 IF ~~ THEN 
   REPLY @2 /* ~I am no longer a child! Gorion was weak, and I defeated Sarevok myself! Now I am a powerful man, feared by all!~ */ 
   GOTO 1 

 IF ~~ THEN 
   REPLY @3 /* ~I am no longer the innocent child of Candlekeep. I have eliminated Sarevok and avenged Gorion!~ */ 
   GOTO 2 

 IF ~~ THEN 
   REPLY @4 /* ~Did you know Gorion?~ */ 
   GOTO 3 
END 

IF ~~ THEN BEGIN 1 
 SAY @5 /* ~Gorion did his best. Unfortunately, he was unable to protect you.~ */ 
 IF ~~ THEN 
  GOTO 4 
END 

IF ~~ THEN BEGIN 2 
 SAY @6 /* ~You are right, but you still have a long way to go.~ */ 
  IF ~~ THEN 
  GOTO 4 
END 

IF ~~ THEN BEGIN 3 
 SAY @7 /* ~Yes, we had a few adventures together before he took you in and loves you like a father.~ */ 
 IF ~~ THEN 
  GOTO 4 
END 

IF ~~ THEN BEGIN 4 
 SAY @8 /* ~So you are now the Hero and Protector of Baldur. Unfortunately, with great power comes great responsibility. The people are watching you and taking you as an example.~ */ 
 IF ~~ THEN 
   GOTO 5 
END 

IF ~~ THEN BEGIN 5 
 SAY @9 /* ~The best advice I can give you is to be wise in your decisions. It's always easier to fall into the abyss of temptation...~ */ 
 IF ~~ THEN 
   REPLY @10 /* ~I know what I have to do, old man. I don't need your advice!~ */ 
   GOTO 6 
  
 IF ~~ THEN 
   REPLY @11 /* ~I will prove myself worthy of Gorion's teachings, have no worries about me.~ */ 
   GOTO 6 
END 

IF ~~ THEN BEGIN 6 
 SAY @12 /* ~Well, I congratulate you on your title. It is time to leave you, Protector.~ */ 
 IF ~~ THEN 
   DO ~EscAPEAREA()~ 
   EXIT    
END
