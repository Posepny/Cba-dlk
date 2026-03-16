BEGIN ~COCANDE~ 

IF ~Global("candelas_init","COM026",1) 
    OR(2) 
     Global("ekilis_mort","Global",1) 
     Global("ekilis_alliance","Global",0)~ THEN BEGIN 1 

  SAY @1 /* ~Protector, I wanted to thank you personally for opening the temple door.~ */ 
  IF ~~ THEN REPLY @2 /* ~Who are you?~ */ 
           GOTO 2 

  IF ~~ THEN REPLY @3 /* ~I didn't do anything, the door opened by itself.~ */ 
           GOTO 3 

END 

IF ~~ THEN BEGIN 2 

  SAY @4 /* ~I am Candelas, humble servant of the god of gods, Cyric.~ */ 
  IF ~~ THEN GOTO 4 

END IF 

~~ THEN BEGIN 3 

  SAY @5 /* ~I wish I could have seen this with my own eyes.~ */ 
  IF ~~ THEN GOTO 4 

END 

IF ~~ THEN BEGIN 4 

  SAY @6=@7=@8=@9=@10 /* ~Upon Bhaal's death, many of his servants rallied to Cyric, and we learned of the existence of this temple. Ekilis's mission was to destroy it.~ ~Thanks to his stupidity, the temple remained sealed for many years, waiting for a child of Bhaal to appear at its door.~ ~I was about to use Sarevok when you killed him. Imagine my disappointment when I learned of his death...~ ~I assumed you were also a child of Bhaal. To confirm this, I simply used Barni to lure you here, and I am not disappointed with the result.~ ~There, Protector, I have told you my story. Now it's your turn. Tell me about this temple.~ */ 
  IF ~~ THEN REPLY @11 /* ~(You grant Candelas' request)~ */ 
         DO ~SetGlobal("candelas_init","COM026",2)~ 
         GOTO 5 

  IF ~~ THEN REPLY @12 /* ~I see, you're afraid of being locked up yourself, and you're quite right. This temple is a death trap for Cyric's followers. (mocking tone)~ */ 
         DO ~SetGlobal("candelas_init","COM026",2)~ 
         GOTO 6 

  IF ~~ THEN REPLY @13 /* ~Cyric is truly surrounded by idiots. It's urgent to clean house!~ */ 
          DO ~SetGlobal("candelas_init","COM026",2)~ 
		 EXIT 

  IF ~Global("Champion_bhaal","GLOBAL",1)~ THEN REPLY @14 /* ~Thank you for bringing me here. But I have another idea in mind. You're going to taste the CHAMPION OF BHAAL!~ */ 
          DO ~SetGlobal("candelas_init","COM026",2)~ 
		 EXIT 

  IF ~~ THEN REPLY @15 /* ~(don't reply and go on the attack)~ */ 
          DO ~SetGlobal("candelas_init","COM026",2)~ 
		 EXIT 

END 

IF ~~ THEN BEGIN 5 
 
  SAY @16 /* ~Excellent, I can't wait to get in. Now I just have to get rid of you.~ */
  IF ~~ THEN REPLY @17 /* ~I wanted to return the favor. No more playing around! Let's attack!~ */ 
          DO ~SetGlobal("candelas_init","COM026",2)~ 
		 EXIT 

  IF ~~ THEN REPLY @18 /* ~Cyric is really surrounded by idiots. It's time to clean house!~ */ 
          DO ~SetGlobal("candelas_init","COM026",2)~ 
		 EXIT 

  IF ~~ THEN REPLY @19 /* ~Thank you for leading me here. But I have another idea in mind. You're about to get a taste of BHAAL'S CHAMPION!~ */ 
          DO ~SetGlobal("candelas_init","COM026",2)~ 
		 EXIT 

  IF ~~ THEN REPLY @20 /* ~(don't reply and go on the attack)~ */ 
          DO ~SetGlobal("candelas_init","COM026",2)~ 
		 EXIT 

END 

IF ~~ THEN BEGIN 6 
  SAY @21 /* ~As you please. I'll find out for myself. Let's finish this!~ */ 
  IF ~~ THEN 
          DO ~SetGlobal("candelas_init","COM026",2)~ 
          EXIT 

END 

CHAIN ​​IF ~Global("ekilis_alliance","GLOBAL",1)~ THEN ~COCANDE~ 10 
  @100 /* ~So here you are, finally back with Ekilis, whom we thought was lost.~ */ 
  == ~COEKILIS~ IF ~~ THEN @101 /* ~I should have known you'd take advantage of the situation...~ */ 
END 
IF ~~ THEN REPLY @102 /* ~May we know who you are?~ */ 
   GOTO 11 
   
  
CHAIN ​​IF ~~ THEN ~COCANDE~ 11 
  @4=@6=@7=@8=@9=@10 /* ~After Bhaal's death, many of his servants rallied to Cyric, and we learned of the existence of this temple. Ekilis's mission was to destroy it. ~ ~Thanks to his stupidity, the temple remained sealed for many years, waiting for a child of Bhaal to appear at its gate.~ ~I was about to use Sarevok when you killed him. Imagine my disappointment when I learned of his death...~ ~I assumed you were also a child of Bhaal. To confirm this, I simply used Barni to lure you here, and I am not disappointed with the result.~ ~There you have it, Protector, I have told you my story. Now it's your turn. Tell me about this temple.~ */ 
  == ~COEKILIS~ IF ~~ THEN @103 /* ~I am not stupid! You should watch your words. I am Ekilis, the Grand Inquisitor of Cyric. You must treat me with respect!~ */ 
  == ~COCANDE~ IF ~~ THEN @104 /* ~Things have changed a lot in your absence, my dear Ekilis. We will settle this matter after we get rid of Bhaal's child.~ */ 
  == ~COEKILIS~ IF ~~ THEN @105 /* ~Bhaal's child? So the rumor was true. We will offer his heart to the glory of Cyric!~ */ 
END 
  IF ~~ THEN REPLY @13 /* ~Cyric is really surrounded by idiots. It's urgent to clean house!~ */
     DO ~SetGlobal("candelas_init","COM026",2)~ 
		 EXIT

  IF ~Global("Champion_bhaal","GLOBAL",1) ~ THEN REPLY @14 /* ~Thank you for bringing me here. But I have another idea in mind. You're going to taste the CHAMPION OF BHAAL!~ */ 
     DO ~SetGlobal("candelas_init","COM026",2)~ 
		 EXIT 

  IF ~~ THEN REPLY @15 /* ~(don't reply and go on the attack)~ */ 
     DO ~SetGlobal("candelas_init","COM026",2)~ 
		 EXIT
		 
