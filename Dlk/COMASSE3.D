BEGIN ~COMASSE3~ 

// In front of the well: Massena is resurrected and he prepares to eliminate the group. 
IF ~Global("MASSENA_PUIT_INIT","GLOBAL",1)~ THEN BEGIN 0 

  SAY @1 /* ~So you are still alive. I thought the temple would get the better of you... ~ */ 
    
    // Ekilis is allied with the group 
    IF ~Global("ekilis_alliance","Global",1) 
     Global("ekilis_mort","Global",0)~ THEN 
     REPLY @2 /* ~Massena, is that you?~ */ 
     DO ~SetGlobal("MASSENA_PUIT_INIT","Global",2)~ 
     GOTO 1 
    
    IF ~Global("ekilis_alliance","Global",0)~ THEN 
     REPLY @2 /* ~Massena, is that you?~ */ 
     DO ~SetGlobal("MASSENA_PUIT_INIT","Global",2)~ 
     GOTO 2 

    // Ekilis is allied with the group and is dead 
    IF ~Global("ekilis_alliance","Global",1) 
     Global("ekilis_mort","Global",1)~ THEN 
     REPLY @2 /* ~Massena, is that you?~ */ 
     DO ~SetGlobal("MASSENA_PUIT_INIT","Global",2)~ 
     GOTO 2 

END 

IF ~~ THEN BEGIN 1 

  SAY @3 /* ~I see he is still among you. (Massena points to Karl)~ */ 
  IF ~~ THEN 
    EXTERN ~COEKILIS~ 22 

END 

IF ~~ THEN BEGIN 2 

  SAY @4 /* ~Of flesh and blood this time.~ */ 
  IF ~~ THEN 
    REPLY @5 /* ~How did you do it? You were dead!~ */ 
    GOTO 3 

END 

IF ~~ THEN BEGIN 3 

  SAY @6 /* ~The Temple of Bhaal holds great powers for those who remain faithful to it. ~ */ 
  IF ~~ THEN 
    REPLY @7 /* ~I see. I'll help you, and then the temple was supposed to rid you of us...~ */ 
    GOTO 4 

END 

IF ~~ THEN BEGIN 4 

  SAY @8 /* ~You really thought I'd let strangers leave my master's secret temple. ~ */ 
  IF ~~ THEN 
    GOTO 7 

END 

IF ~~ THEN BEGIN 5 

  //SAY @9 /* ~Bhaal will soon return, and Cyric will tremble before him!~ */ 
  SAY @9 /* ~You dare insult Bhaal, the Lord of Murder, in his lair! Beware his wrath!~ */ 
  IF ~~ THEN 
    EXTERN ~COEKILIS~ 23 

END 

IF ~~ THEN BEGIN 6 

  //SAY @10 /* ~You will be the first to die, Ekilis, Grand Inquisitor of the Mad God!~ */ 
  SAY @10 /* ~I will offer your heads to my master. (He points at Ekilis.) You will be the first to die, a servant of the mad god!~*/ 
  IF ~~ THEN 
    DO ~ChangeEnemyAlly("COMASSE2",ENEMY) 
    SetGlobal("Combat_well","GLOBAL",1)~ 
    EXIT 

END 

IF ~~ THEN BEGIN 7

  SAY @11=@12 /* ~Don't take it personally. Deep down, I like you, but your journey ends here.~ ~Farewell, stranger(s)!~ */ 
  IF ~~ THEN 
    DO ~ChangeEnemyAlly("COMASSE2",ENEMY) 
        SetGlobal("Puit_combat","GLOBAL",1) 
        AddJournalEntry(@100,QUEST)~ 
    EXIT 

END 

// In front of the well: Massena stops the fight. 
IF ~Global("Puit_combat","GLOBAL",2) ~ THEN BEGIN 8 

  SAY @13=@14 /* ~Wait! How is this possible? ~ ~Bhaal's well is communicating with your leader! Cease fighting immediately!~ */ 
  IF ~~ THEN 
    DO ~SetGlobal("Combat_Well","Global",3)~ 
    EXIT 

END 

// In front of the well: Massena realizes that Charname is the chosen one. 
IF ~Global("Combat_Well","GLOBAL",4)~ THEN BEGIN 9 

  SAY @15 /* ~Incredible! The essence of my master flows in your veins!~ */ 
  IF ~~ THEN 
    REPLY @16 /* ~I told you so, but you didn't believe me!~ */ 
    DO ~SetGlobal("Combat_Well","GLOBAL",5)~ 
    GOTO 10 

  IF ~~ THEN 
    REPLY @17 /* ~My father is Bhaal. Which makes you my humble servant!~ */ 
    DO ~SetGlobal("Puit_combat","GLOBAL",5)~ 
    GOTO 10 

  IF ~~ THEN 
    REPLY @18 /* ~Bhaal slept with my mother and poof, nine months later here I am!~ */ 
    DO ~SetGlobal("Puit_combat","GLOBAL",5)~ 
    GOTO 10 

  IF ~~ THEN 
    REPLY @19 /* ~That's not your problem! The fight isn't over!~ */ 
    DO ~SetGlobal("Puit_combat","GLOBAL",5)~ 
    GOTO 10 

END 

IF ~~ THEN BEGIN 10 

  SAY @20=@21 /* ~Bhaal has a child and the temple let him in! ~ ~Systera was right... The chosen one exists!~ */ 
  IF ~~ THEN 
    REPLY @22 /* ~You need to make up your mind! Are we fighting or not?~ */ 
    GOTO 11 

  IF ~~ THEN 
    REPLY @23 /* ~I don't understand anything! The chosen one of what!~ */ 
    GOTO 13 

END 

IF ~~ THEN BEGIN 11 

  SAY @24 /* ~A thousand pardons, I didn't know who you were.~ */ 
  IF ~~ THEN 
    GOTO 13 

END 

IF ~~ THEN BEGIN 12 

  SAY @25 /* ~Bhaal has chosen you!~ */ 
  IF ~~ THEN 
    GOTO 13 

END 

IF ~~ THEN BEGIN 13 

  SAY @26 /* ~Bhaal has brought you here to face the trials of the temple. When you succeed, his gift will be yours!~ */ 
  IF ~~ THEN 
    REPLY @27 /* ~Death didn't do you any good! You're completely insane. I just want to get out of this damned temple!~ */ 
    GOTO 14

  If
    ​
    ​
    ​

  ​
    ​ 
    ​@30 /* ~It can't be Bhaal. He's dead!~ */ 
    GOTO 19 

  IF ~~ THEN 
    REPLY @31 /* ~In that case, let the trials begin!~ */ 
    GOTO 18 

END 

IF ~~ THEN BEGIN 14 

  SAY @32 /* ~Your father has a plan for you, and you cannot escape it!~ */ 
  IF ~~ THEN 
    REPLY @33 /* ~There's no question of obeying anyone. I have a plan for you. Find someone else!~ */ 
    GOTO 15 

END 

IF ~~ THEN BEGIN 15 

  SAY @34 /* ~You refuse the trials! In that case, you are not worthy of my master! ~ */ 
  IF ~~ THEN 
    DO ~ChangeEnemyAlly("COMASSE2",ENEMY) 
        AddJournalEntry(@201,QUEST)~ 
    EXIT 

END 

IF ~~ THEN BEGIN 16 

  SAY @35 /* ~~ */ 
  IF ~~ THEN 
    GOTO 13 

END 

IF ~~ THEN BEGIN 17 

  SAY @36 /* ~Yes, and thanks to you, Bhaal will soon be back!~ */ 
  IF ~~ THEN 
    GOTO 13 

END 

IF ~~ THEN BEGIN 18 

  SAY @37 /* ~Behind this gate, the trials of the temple await you. Your servants will assist you.~ */ 
IF ~~ THEN 
    DO~SetGlobal("Bhaal_epreuves","GLOBAL",1) 
       AddJournalEntry(@200,QUEST)~     
    EXIT 
    
END 

IF ~~ THEN BEGIN 19 

  SAY @38 /* ~My master is here asleep in this well. You felt his brief touch, just as I did.~ */ 
IF ~~ THEN 
    REPLY @39 /* ~And what is he waiting for to awaken then?~ */ 
    GOTO 20 
    
END 

IF ~~ THEN BEGIN 20 

  SAY @40 /* ~I do not know his plans, but you are part of them.~ */ 
  IF ~~ THEN 
   GOTO 13 

END
