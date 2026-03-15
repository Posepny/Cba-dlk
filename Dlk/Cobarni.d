BEGIN ~COBARNI~ 

IF ~Global("Barni_quete","GLOBAL",0) 
    IsGabber(PLAYER1)~ THEN BEGIN 0 
  SAY @1=@2=@3 /* ~Hello Protector, thank you for giving me some of your time. Here's what's troubling me.~ ~I have just inherited this inn. In the cellar, there is a trapdoor with a ladder that I opened with my late father's key. Below, I discovered that there were cells and a gallery behind a collapsed wall. I confess I didn't dare go any further.~ */ 

  IF ~~ THEN 
         REPLY @4 /* ~You maintain good order, and justice must reign in Baldur. I'm going to get to the bottom of this.~ */ 
         GOTO 1 
  
  IF ~~ THEN 
         REPLY @5 /* ~Indeed, all of this seems suspicious, or at least mysterious. I'll take a look at this gallery.~ */ 
         GOTO 1 
		 
  IF ~~ THEN 
         REPLY @13 /* ~I don't have time for this matter right now.~ */ 
         GOTO 5 

END 

IF ~~ THEN BEGIN 1 
  SAY @6 /* ~Thank you for doing me this favor, Protector. I know you're very busy. Here is the key to the trapdoor.~ */ 
  
  IF ~~ THEN 
          DO ~SetGlobal("Barni_quete","GLOBAL",1) 
		      EraseJournalEntry(@103) 
              AddJournalEntry(@100,QUEST) 
              GiveItem("Miscp61",PLAYER1)~ 
          EXIT 
END 

IF ~Global("Barni_quete","GLOBAL",1)~ THEN BEGIN 2 
  SAY @7 /* ~Have you visited the gallery?~ */ 
  
  IF ~Global("Crane_place","GLOBAL",0)~ THEN 
         REPLY @8 /* ~I will get back to you as soon as it is done.~ */ 
         EXIT 
           
  IF ~Global("Crane_place","GLOBAL",1)~ THEN 
         REPLY @9 /* ~The place is indeed unhealthy. I invite you to have the trapdoor sealed by a mage.~ */ 
         GOTO 3 
   
  IF ~Global("Crane_place","GLOBAL",1)~ THEN 
         REPLY @10 /* ~The place is indeed unhealthy, I will keep the key. I will regularly check that everything is alright.~ */ 
         GOTO 4         
END 

IF ~~ THEN BEGIN 3 
  SAY @11 /* ~You are right, I will follow your advice. Thank you for your help, Protector.~ */ 
  
  IF ~~ THEN 
         DO ~SetGlobal("Barni_quete","GLOBAL",2)~ 
         EXIT          
END 

IF ~~ THEN BEGIN 4 
  SAY @12 /* ~You would do that for me. I feel better now. Thank you for your help, Protector.~ */ 
  
  IF ~~ THEN 
         DO ~EraseJournalEntry(@100) 
		     EraseJournalEntry(@103)  
             AddJournalEntry(@102,QUEST_DONE)
             AddexperienceParty(6000)
             SetGlobal("Barni_quete","GLOBAL",3)~ 
         EXIT          
END 

IF ~~ THEN BEGIN 5 
  SAY @14 /* ~I'm sorry, but this cellar scares me...~ */ 
  
  IF ~~ THEN 
         REPLY @15 /* ~I'll come back later to deal with your problem.~ */ 

         DO ~AddJournalEntry(@103,INFO) 
             SetGlobal("Barni_quete","GLOBAL",4)~ 
         EXIT          
END 

IF ~Global("Barni_quete","GLOBAL",4)~ THEN BEGIN 6 
  SAY @21 /* ~You've come back for the cellar? (full of hope)~ */ 
  
  IF ~~ THEN 
         REPLY @16 /* ~No, I need your services.~ */ 
         DO ~StartStore("COBARNI",LastTalkedToBy(Myself))~ 
         EXIT   

  IF ~~ THEN 
         REPLY @17 /* ~Yes, I'll explore the area.~ */	 
         GOTO 1		  
END 

// Quest completed 
IF ~GlobalGT("Barni_quest","GLOBAL",2)~ THEN BEGIN 6 
  SAY @18 /* ~Do you need my services?~ */ 
  
  IF ~~ THEN 
         REPLY @19 /* ~Yes, show me.~ */ 
         DO ~StartStore("COBARNI",LastTalkedToBy(Myself))~ 
         EXIT   

  IF ~~ THEN 
         REPLY @20 /* ~No, I'm just passing through.~ */	 
         EXIT		  
END

