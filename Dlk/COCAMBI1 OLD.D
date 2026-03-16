BEGIN ~COCAMBI1~ 

/* 
IF ~Global("Quete_demon_coeur","COM018",0) 
    !IsGabber(PLAYER1)~ THEN BEGIN 0 

  SAY @1 /* ~You shall not pass. Let the blood of Bhaal approach.~ */ 
  IF ~~ THEN 
    EXIT 

END 
*/ 

IF ~Global("Quete_demon_coeur","COM018",0) 
    IsGabber(PLAYER1)~ THEN BEGIN 1 

  SAY @2=@3 /* ~Welcome, Blood of Bhaal.~ ~This door is mine. I control its closing as well as its opening...a right of passage is required to leave this place.~ */ 
  IF ~~ THEN 
    DO ~SetGlobal("Quete_demon_coeur","COM018",1)~ 
    REPLY @4 /* ~You have my full attention. I'm listening.~ */ 
    GOTO 2 

  IF ~Global("Quete_cambion_epee","COM018",1)~ THEN 
    REPLY @5 /* ~A demon desires your sword. Give it to me.~ */ 
    GOTO 4 

END 

IF ~~ THEN BEGIN 2 

  SAY @6 /* ~Retrace your steps. You will find a demon in a foul-smelling corner. Bring me its heart and I will let you pass.~ */ 
  IF ~~ THEN     
    REPLY @7 /* ~I will fetch what you ask for. You'd better keep your word.~ */ 
    DO ~SetGlobal("Quete_demon_coeur_OK","COM018",1)~ 
    EXIT 

    IF ~HasItem("MISC6M",LastTalkedToBy(Myself))~ THEN    
      REPLY @8 /* ~Is this what you're looking for? (You show him the demon's heart.)~ */ 
      GOTO 6 
   
    IF ~~ THEN 
      REPLY @9 /* ~I don't have time to waste!~ */ 
      GOTO 3 

END 

IF ~~ THEN BEGIN 3 

  SAY @10 /* ~As you please, blood of Bhaal! Find another way.~ */ 
  IF ~~ THEN 
    DO ~SetGlobal("Quete_demon_coeur_OK","COM018",1)~ 
    EXIT 

END 

IF ~~ THEN BEGIN 4 

  SAY @11=@12 /* ~In that case, come and get it for me. But this passage will be permanently closed to you... ~The simplest thing would be to bring me the heart of this demon in order to pay the toll.~ */ 
  IF ~~ THEN 
    DO ~SetGlobal("Quete_demon_coeur_OK","COM018",1)~ 
    EXIT 
END 

// Demon heart quest successful 
IF ~Global("Quete_demon_coeur","COM018",1) 
    HasItem("MISC6M",LastTalkedToBy(Myself))~ THEN BEGIN 5 

  SAY @13 /* ~Magnificent, the demon heart! Thanks to you, blood of Bhaal, my sword will grow stronger! ~ */ 
  IF ~~ THEN 
    DO ~SetGlobal("Quete_demon_coeur","COM018",2) 
        TakePartyItem("MISC6M") 
        SetGlobal("Boss_salle1","GLOBAL",1)~ 
    // Cutscene 
    GOTO 6 

END 

IF ~~ THEN BEGIN 6

  SAY @14 /* ~The door is open to you.~ */ 
IF ~~ THEN 
    EXIT 

END 

IF ~Global("Quete_demon_coeur","COM018",1) 
    !HasItem("MISC6M",LastTalkedToBy(Myself))~ THEN BEGIN 7 
    
  SAY @15 /* ~No heart, no passage!~ */ 
  
  IF ~Global("Quete_cambion_epee","COM018",1)~ THEN 
    REPLY @5 /* ~A demon desires your sword. Give it to me.~ */ 
    GOTO 4 

  IF ~~ THEN 
    EXIT 

END 


//IsGabber(PLAYER2)
