BEGIN ~COEKILIS~ 


// Level 1A: First Encounter 
IF ~Global("ekilis_init","GLOBAL",0)~ THEN BEGIN 0 
  SAY @1=@2 /* ~You thought you could attack me by surprise! (looks around, finally surprised)~ ~Tell me where that bitch Systera is, I don't care about her lackeys!~ */ 
  IF ~~ THEN 
    REPLY @3 /* ~We're nobody's lackeys! What were you doing here in stasis?~ */ 
    DO ~SetGlobal("ekilis_init","GLOBAL",1)~ 
    GOTO 1 
/* 
  IF ~~ THEN 
    REPLY @4 /* ~You're very sure of yourself. Why don't you just show us how you're going to die!~ */ 
    DO ~SetGlobal("ekilis_init","GLOBAL",1) 
        SetGlobal("ekilis_combat","GLOBAL",1) 
    Enemy()~ 
    EXIT     
*/ 
END 

IF ~~ THEN BEGIN 1 
  SAY @5=@6 /* ~Just simple adventurers then...~ ~My name is Karl and I'm here for the same reasons as you. I'm looking for the treasure of Bhaal, the dead god!~ */ 
  IF ~~ THEN 
    GOTO 3 
END 

IF ~~ THEN BEGIN 2 
  SAY @7 /* ~It's all right... Killing has never been a problem for me. (predatory smile)~ */ 
  IF ~~ THEN 
    DO ~Enemy()~ 
    EXIT 
END 

IF ~~ THEN BEGIN 3 
  SAY @8 /* ~You will join me and each of you will have your share of the loot.~ */ 
  IF ~~ THEN 
    REPLY @9 /* ~That's fine with me, but there are more of us, so you're coming with us.~ */ 
    DO ~SetGlobal("ekilis_alliance","GLOBAL",1)~ 
    GOTO 4 

  IF ~~ THEN 
    REPLY @10 /* ~That's fine with me. Let's go!~ */ 
    DO ~SetGlobal("ekilis_alliance","GLOBAL",1) 
        AddJournalEntry(@32,QUEST)~ 
    EXIT 

  IF ~~ THEN 
    REPLY @11 /* ~We don't need you. You can leave.~ */ 
    GOTO 5 

  IF ~~ THEN 
    REPLY @12 /* ~Don't want to. And I don't want you to stay alive either.~ */ 
    DO ~Enemy()~ 
    GOTO 6 

  IF ~IsGabber(PLAYER1)~ THEN 
    REPLY @13 /* ~Being a child of Bhaal, you'll understand that I don't much like it when people come and plunder my temple...~ */ 
    DO ~Enemy()~ 
    GOTO 7 
END 

IF ~~ THEN BEGIN 4 
  SAY @14 /* ~Don't be ridiculous, my friend. I don't want to play the "who has the biggest" game. You'd lose. Let's go! We don't have time to waste.~ */ 
  IF ~~ THEN 
    DO ~SetGlobal("ekilis_alliance","GLOBAL",1) 
        AddJournalEntry(@32,QUEST)~ 
    EXIT 
END 

IF ~~ THEN BEGIN 5
  SAY @15 /* ~I wouldn't bet on your survival without me. In fact, you're already dead. Goodbye!~ */ 
  IF ~~ THEN 
    DO ~SetGlobal("ekilis_partir","GLOBAL",1) 
    AddJournalEntry(@33,QUEST)~ 
    EXIT 
END 

IF ~~ THEN BEGIN 6 
  SAY @16 /* ~It's alright... Killing has never been a problem for me. (predatory smile)~ */ 
  IF ~~ THEN 
    DO ~AddJournalEntry(@34,QUEST) 
    Enemy()~ 
    EXIT 
END 

IF ~~ THEN BEGIN 7 
  SAY @17=@18 /* ~So the rumor was true... Bhaal had kids! (laughs)~ ~For your information, my real name is Ekilis, the Grand Inquisitor. Cyric will generously reward me for your head!~ */ 
  IF ~~ THEN 
    DO ~AddJournalEntry(@35,QUEST) 
    Enemy()~ 
    EXIT 
END 


IF ~~ THEN BEGIN 9 
  SAY @26 /* ~Systera serves Bhaal. She is the guardian of the temple despite her master's disappearance. She prowls the area.~ */ 
  IF ~~ THEN 
    EXIT 
END 

IF ~~ THEN BEGIN 10 
  SAY @27 /* ~My companions died while we were exploring. Their lack of caution was fatal.~ */ 
  IF ~~ THEN 
    EXIT 
END 

IF ~~ THEN BEGIN 11 

  SAY @28 /* ~In that case, we'll find a way out of here once we find the treasure! I'm fed up with this temple...~ */ 
  IF ~~ THEN 
    EXIT 

END 

IF ~~ THEN BEGIN 12 
  SAY @29 /* ~(Contained surprise) That's excellent news. Now all that's left is to find the treasure, then.~ */ 
  IF ~~ THEN 
    EXIT 
END 

IF ~~ THEN BEGIN 13 
  SAY @30 /* ~Beware of the gates and walls; there are often traps, and sometimes creatures appear out of nowhere. I advise you to keep your eyes peeled.~ */ 
  IF ~~ THEN 
    EXIT 
END 

IF ~~ THEN BEGIN 14 
  SAY @31 /* ~The temple's entrance door closed behind me, and I couldn't find another way out. But now that you're here, it means the door is open again!~ */ 
  IF ~~ THEN 
    EXIT 
END 

IF ~~ THEN BEGIN 15 
  SAY @37 /* ~If my experience is anything to go by, when a place is kept secret, it's because it holds riches. All that's left is to find the place.~ */ 
  IF ~~ THEN 
    EXIT 
END 


// Level 1B: Massena demands Ekilis's death ************************************************************************************************************************************** 
IF ~Global("ekilis_mort_demande","Global",2) 
    Global("ekilis_defense","Global",0)~ THEN BEGIN 16
 
  SAY @60 /* ~Your friend the ghost is crazy. Gold is my only master and no one will stop me from finding Bhaal's treasure!~ */ 
  IF ~~ THEN 
    DO ~SetGlobal("ekilis_defense","Global",1)~ 
    GOTO 17         
END 

IF ~~ THEN BEGIN 17 
  SAY @61 /* ~Either you die or we get rid of the ghost and make a fortune. It's up to you, friends.~ */ 
  IF ~~ THEN 
    REPLY @62 /* ~I never liked Cyric's followers. That's a shame...~ */ 
    DO ~SetGlobal("ekilis_deactivate","Global",1) 
        SetGlobal("Ekilis_alliance","GLOBAL",0) 
        ChangeEnemyAlly("COEKILIS",ENEMY)~ 
    EXIT 

  IF ~~ THEN 
    REPLY @63 /* ~We'll stay together and I have his remains with me if that might be useful.~ */ 
    GOTO 18 

  IF ~~ THEN 
    REPLY @64 /* ~I decide we'll continue like this for now!~ */ 
    GOTO 19 
END 

IF ~~ THEN BEGIN 18 
  SAY @65 /* ~Excellent, soon we won't have this parasite on our backs anymore.~ */ 
  IF ~~ THEN 
    DO ~SetGlobal("Massena_reste_brule","GLOBAL",1)~ 
    EXIT 
END 

IF ~~ THEN BEGIN 19 
  SAY @66 /* ~I feel that we'll regret it soon...~ */ 
  IF ~~ THEN 
    DO ~SetGlobal("Ekilis_regret","GLOBAL",1) 
    SetGlobal("ekilis_deactivate","Global",1) 
    SetGlobal("ekilis_follow","GLOBAL",0)~ 
    EXIT 
END 


// Well level: Massena alive has spoken and Ekilis replies ***************************************************************************** 
IF ~~ THEN BEGIN 20 
  SAY @90 /* ~Why continue to serve a god who no longer exists? Recognize Cyric, the god of gods, and enter his service. He will grant you powers far beyond what you imagine...~ */ 
  //SAY@90 /* Ekilis, Cyric's Grand Inquisitor, has come to finish off your pathetic master hiding in this hole...~*/ 
  IF ~~ THEN 
    DO ~SetGlobal("Ekilis_puit","GLOBAL",1)~ 
    EXTERN ~COMASSE3~ 5   
END 

IF ~Global("Ekilis_puit","GLOBAL",1) 
    Global("massena_puit_init","Global",1)~ THEN BEGIN 21 
  SAY @91 /* ~What a waste, don't you think? This time we'll eliminate him!~ */ 
  //SAY @91 /* ~Cyric will recognize my invaluable worth and I will be rewarded!~ */ 
  IF ~~ THEN 
    DO ~SetGlobal("Ekilis_puit","GLOBAL",2) 
	    SetGlobal("Q_tresor_bhaal","GLOBAL",1)~ 
    EXTERN ~COMASSE3~ 6  
END

// The group arrives at the well *************************************************************************************************************************** 
// Massena, burned or not, placed in the sarcophagus, and Ekilis is present 
IF ~Global("COEKILIS_PUIT_INIT","GLOBAL",1)~ THEN BEGIN 40 

  SAY @92 /* ~So this is where Bhaal is hiding, crouching in a hole... It's pathetic (predatory smile)~ */ 
  IF ~~ THEN 
    REPLY @93 /* Bhaal is dead, he cannot be here.~ */ 
    DO ~SetGlobal("COEKILIS_PUIT_INIT","GLOBAL",2)~ 
    GOTO 41 
END 

IF ~~ THEN BEGIN 41 

  SAY @94=@95=@96 /* ~His faithful have spoken, He agonizes in this place and I am the only one who knows it!~ (He turns towards the well) I, Ekilis, the Grand Inquisitor of Cyric, have come to finish you off, and your foul offspring will die with you! (He pulls out a vial, brandishing it like a trophy, his eyes wild)~ Cyric will recognize my inestimable worth, and I will be rewarded with terrifying powers!~ */ 
  IF ~~ THEN 
    REPLY @97 /* ~But what about the treasures and the loot?~ */ 
    GOTO 42 
  
  IF ~~ THEN   
    REPLY @99 /* ~It's a fine story, but I have a better ending for you. Bhaal is my father, and I will offer him your corpse!~ */ 
    GOTO 43 
END 


// Ekilis will cast the incantation to destroy Bhaal 
IF ~~ THEN BEGIN 42 

  SAY @98 /* ~Don't bother me with your trivial questions. Bow down before me! (threatening look) I only have one last incantation before casting the vial, and the hour of my coronation will have struck!~ */ 
  IF ~~ THEN 
    DO ~SetGlobal("Ekilis_incantation_Bhaal","GLOBAL",1) 
        SetGlobal("revelation_ekilis","GLOBAL",1) 
        SetGlobal("ekilis_alliance","GLOBAL",0) 
        SetGlobal("ekilis_follow","GLOBAL",0) 
        Clearactions("COEKILIS") 
        ChangeEnemyAlly("COEKILIS",NEUTRAL)~ 
    EXIT 
END 

// Eklis will first deal with Charname 
IF ~~ THEN BEGIN 43 

  SAY @100 /* ~So your presence was not a coincidence. Very well, I will begin with you, Bhaal's puppy. Then I'll finish off your whole family!~ */ 
  IF ~~ THEN 
    DO ~SetGlobal("ekilis_alliance","GLOBAL",0) 
        SetGlobal("revelation_ekilis","GLOBAL",1) 
        SetGlobal("ekilis_follow","GLOBAL",0) 
        Clearactions("COEKILIS") 
        ChangeEnemyAlly("COEKILIS",ENEMY)~ 
    EXIT 
END


// The group begins the dialogue with Karl ********************************************************************************************************************************* 
IF ~Global("ekilis_alliance","GLOBAL",1)~ THEN BEGIN 100 

  SAY @19 /* ~What can I do for you?~ */ 
  IF ~Global("info_eki_systera","GLOBAL",0)~ THEN 
    REPLY @20 /* ~Who is this Systera?~ */ 
    DO ~SetGlobal("info_eki_systera","GLOBAL",1) 
        SetGlobal("ekilis_follow","GLOBAL",0)~ 
    GOTO 9 

  IF ~Global("info_eki_seul","GLOBAL",0)~ THEN 
    REPLY @21 /* ~Did you come to the temple alone?~ */ 
    DO ~SetGlobal("info_eki_seul","GLOBAL",1) 
        SetGlobal("ekilis_follow","GLOBAL",0)~ 
    GOTO 10 

  IF ~Global("info_eki_porte","GLOBAL",0) 
      Global("info_eki_porte2","GLOBAL",0)~ THEN 
    REPLY @22 /* ~The door closed behind us, we're stuck just like you.~ */ 
    DO ~SetGlobal("info_eki_porte","GLOBAL",1) 
        SetGlobal("ekilis_follow","GLOBAL",0)~ 
    GOTO 11 

  IF ~Global("info_eki_porte","GLOBAL",0) 
      Global("info_eki_porte2","GLOBAL",0) 
      PartyHasItem("Skelp01")~ THEN 
    REPLY @23 /* ~Just so you know, the door It closed again. But we met a ghost who is ready to help us. First, you must take your remains near a grid.~ */ 
    DO ~SetGlobal("info_eki_porte2","GLOBAL",1) 
        SetGlobal("ekilis_follow","GLOBAL",0)~ 
    GOTO 12 

  IF ~Global("info_eki_temple","GLOBAL",0)~ THEN 
    REPLY @24 /* ~What can you tell us about the temple?~ */ 
    DO ~SetGlobal("info_eki_temple","GLOBAL",1) 
        SetGlobal("ekilis_follow","GLOBAL",0)~ 
    GOTO 13 

  IF ~Global("info_eki_stase","GLOBAL",1)~ THEN 
    REPLY @25 /* ~Why were you in stasis?~ */ 
    DO ~SetGlobal("info_eki_stase","GLOBAL",1) 
        SetGlobal("ekilis_follow","GLOBAL",0)~ 
    GOTO 14 
  
  IF ~Global("info_eki_tresor","GLOBAL",0)~ THEN 
    REPLY @36 /* ~How do you know there's treasure?~ */ 
    DO ~SetGlobal("info_eki_tresor","GLOBAL",1) 
        SetGlobal("ekilis_follow","GLOBAL",0)~ 
    GOTO 15 
      
  //IF ~IsGabber(PLAYER1)~ THEN 
  IF ~~ THEN   
    REPLY @38 /* ~Follow us!~ */ 
    DO ~SetGlobal("ekilis_follow","GLOBAL",0)~ 
    EXIT 

/*   
  IF ~IsGabber(PLAYER2)~ THEN 
    REPLY @38 /* ~Follow me!~ */ 
    DO ~SetGlobal("ekilis_follow","GLOBAL",2)  
        NoAction()
        MoveToObjectFollow(PLAYER2)~
    EXIT 
 
   IF ~IsGabber(PLAYER3)~ THEN 
    REPLY @38 /* ~Follow me!~ */ 
    DO ~SetGlobal("ekilis_follow","GLOBAL",3) 
        NoAction() 
        MoveToObjectFollow(PLAYER3)~ 
    EXIT 
    
  IF ~IsGabber(PLAYER4)~ THEN 
    REPLY @38 /* ~Follow me!~ */ 
    DO ~SetGlobal("ekilis_follow","GLOBAL",4) 
        NoAction() 
        MoveToObjectFollow(PLAYER4)~ 
    EXIT 
    
  IF ~IsGabber(PLAYER5)~ THEN 
    REPLY @38 /* ~Follow me!~ */ 
    DO ~SetGlobal("ekilis_follow","GLOBAL",5) 
        NoAction() 
        MoveToObjectFollow(PLAYER5)~ 
    EXIT 
    
  IF ~IsGabber(PLAYER6)~ THEN 
    REPLY @38 /* ~Follow me!~ */ 
    DO ~SetGlobal("ekilis_follow","GLOBAL",6) 
        NoAction() 
        MoveToObjectFollow(PLAYER6)~ 
    EXIT 
*/ 

END 





/* 
// Massena died near the well 
IF ~GlobalGT("Puit_combat","GLOBAL",0) 
    Global("Massena_mort","GLOBAL",1) 
    Global("Massena_rejeton_bhaal","GLOBAL",0)~ THEN BEGIN 22 
  SAY @92=@94 
  IF ~~ THEN 
   DO ~SetGlobal("Ekilis_tuer_Charname","GLOBAL",1) 
       ChangeEnemyAlly("COEKILIS",ENEMY)~   
   EXIT 
END 

IF ~GlobalGT("Puit_combat","GLOBAL",0) 
    Global("Massena_mort","GLOBAL",1) 
    Global("Massena_rejeton_bhaal","GLOBAL",1)~ THEN BEGIN 23 
  SAY @92=@93 
  IF ~~ THEN 
   DO ~SetGlobal("Ekilis_tuer_Charname","GLOBAL",1) 
       ChangeEnemyAlly("COEKILIS",ENEMY)~   
   EXIT 
END 
*/
