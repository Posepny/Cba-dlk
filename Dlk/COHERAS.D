BEGIN ~COHERAS~ 

IF ~Global("Heras_init","COM023",0) 
    !PartyHasItem("MISCP35") 
    !PartyHasItem("MISCP36") 
    !PartyHasItem("MISCP37") 
    !PartyHasItem("MISCP38") 
    !PartyHasItem("MISCP39") 
    !PartyHasItem("MISCP40") 
    !PartyHasItem("MISCP41")~ THEN BEGIN 1 
     
  SAY @1=@2=@3 /* ~It's a shame you don't have a single tear of blood, I could have helped you...~ ~ Know that the ultimate test awaits you behind this door and I don't give much for your chances.~ ~ Farewell, Blood of Bhaal! (her eyes close)~ */ 
  IF ~~ THEN 
        DO ~SetGlobal("Heras_init","COM023",1) 
            SetGlobal("Heras_destroy","COM023",1)~ 
        EXIT 

END 

IF ~~ THEN BEGIN 2 

  SAY @5 /* ~ There won't be much left when they're done with you. (smile)~ */ 
  IF ~Global("Heras_Q1","COM023",0)~ THEN REPLY @6 /* ~What's behind this door?~ */ 
           DO ~SetGlobal("Heras_Q1","COM023",1) 
               SetGlobal("Heras_init","COM023",0)~ 
           GOTO 3 

  IF ~Global("Heras_Q2","COM023",0)~ THEN REPLY @7 /* ~And can we know why?~ */ 
             DO ~SetGlobal("Heras_Q2","COM023",1) 
                 SetGlobal("Heras_init","COM023",1)~ 
             GOTO 4 

  IF ~~ THEN REPLY @8 /* ~I don't think I asked for your opinion, stone face.~ */ 
               DO ~SetGlobal("Heras_init","COM023",1)~ 
               GOTO 5 

  IF ~~ THEN REPLY @9 /* ~(continue without listening)~ */ 
               DO ~SetGlobal("Heras_init","COM023",1)~ 
               GOTO 9 

END 

IF ~~ THEN BEGIN 3 

  SAY @10 /* ~Excellent question. What is the next one?~ */ 
  IF ~~ THEN GOTO 2 

END 

IF ~~ THEN BEGIN 4 

  SAY @11 /* ~You don't have the right equipment, but I can turn the situation to your advantage. Know that I don't work for free.~ */ 
  IF ~~ THEN REPLY @12 /* ~Continue, stone face.~ */ 
        GOTO 7 

  IF ~~ THEN REPLY @13 /* ~Nice try, but you won't get anything from me.~ */ 
        GOTO 8 

END 

IF ~~ THEN BEGIN 5 

  SAY @14 /* ~That's right, I've never been able to keep my mouth shut, but it would be a shame for you to end this brilliant adventure like this.~ */ 
  IF ~~ THEN GOTO 7 

END 

IF ~Global("Heras_init","COM023",0)~ THEN BEGIN 6

  SAY @4 /* ~What a beautiful journey! Know that the ultimate test awaits you behind this door and unfortunately you will fail. A most deadly failure, by the way...~ */ 
  IF ~~ THEN GOTO 2 

END 

IF ~~ THEN BEGIN 7 

  SAY @15 /* ~Give me a tear of blood and I will help you emerge victorious.~ */ 
  IF ~~ THEN REPLY @18 /* ~I need no help to defeat my enemies.~ */ 
           GOTO 10 

  IF ~PartyHasItem("MISCP35")~ THEN REPLY @19 /* ~(you give him the Tanari's tear of blood)~ */ 
           DO ~TakePartyItem("MISCP35")~ 
           GOTO 13 

  IF ~PartyHasItem("MISCP36")~ THEN REPLY @20 /* ~(you give him the Bone Golem's tear of blood)~ */ 
           DO ~TakePartyItem("MISCP36")~ 
           GOTO 13 

  IF ~PartyHasItem("MISCP37")~ THEN REPLY @21 /* ~(you give him the half-lich's blood tear)~ */ 
           DO ~TakePartyItem("MISCP37")~ 
           GOTO 13 

  IF ~PartyHasItem("MISCP38")~ THEN REPLY @22 /* ~(you give him the BASEMENT blood tear)~ */ 
           DO ~TakePartyItem("MISCP38")~ 
           GOTO 13 

  IF ~PartyHasItem("MISCP39")~ THEN REPLY @23 /* ~(you give him Taguar's blood tear)~ */ 
           DO ~TakePartyItem("MISCP39")~ 
           GOTO 13 

  IF ~PartyHasItem("MISCP40")~ THEN REPLY @24 /* ~(you give him Kael's blood tear)~ */ 
           DO ~TakePartyItem("MISCP40")~ 
           GOTO 13 

  IF ~PartyHasItem("MISCP41")~ THEN REPLY @25 /* ~(You give her Islendra's Blood Tear)~ */ 
           DO ~TakePartyItem("MISCP41")~ 
           GOTO 13 

END 

IF ~~ THEN BEGIN 8 

  SAY @26=@27 /* ~You will regret your choice, nevertheless I wish you good luck.~ ~Farewell, Blood of Bhaal (her eyes close).~ */ 
  IF ~~ THEN 
           DO ~SetGlobal("Heras_destroy","COM023",1)~ 
           EXIT 
END 

IF ~~ THEN BEGIN 9 

  SAY @28=@29 /* ~You will regret your choice, nevertheless I wish you good luck.~ ~Farewell, Blood of Bhaal (her eyes close).~ */ 
  IF ~~ THEN 
           DO ~SetGlobal("Heras_destroy","COM023",1)~ 
           EXIT 
END 


IF ~~ THEN BEGIN 10 

  SAY @30=@31=@32 /* ~The most important thing is to win and all help is welcome.~ ~ You will regret your choice, nevertheless I wish you good luck.~ ~Farewell, Blood of Bhaal (his eyes close).*/ 
  IF ~~ THEN 
           DO ~SetGlobal("Heras_destroy","COM023",1)~ 
           EXIT 
END

IF ~~ THEN BEGIN 13 

  SAY @33=@34 /* ~(Stone arms emerge from the walls under x's eager gaze). He contemplates the stone with a very satisfied expression.~ ~Retrace your steps and you will find a chest that holds many treasures. Use them wisely. (His eyes close).~ */ 
  IF ~~ THEN 
         DO ~SetGlobal("Heras_chest","COM023",1) 
             SetGlobal("Heras_destroy","COM023",1)~ 
         EXIT 

END
