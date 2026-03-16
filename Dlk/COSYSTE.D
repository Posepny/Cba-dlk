BEGIN ~COSYSTE~ 

IF ~Global("Systera_rencontre","GLOBAL",1)~ THEN BEGIN 1 

  SAY @1=@2 /* ~So they have reached this far. (Her blank stare is fixed on you)~ ~Your path ends here, followers of the mad god. I, Systera, the high priestess of Bhaal, will put an end to your quest.~ */ 
  IF ~Global("quete_sortir_ici","GLOBAL",1)~ THEN REPLY @3 /* ~There's been a misunderstanding, I'm just stuck in your temple. Massena told me I had to find Kept's skull to get out.~ */ 
           GOTO 2 

  IF ~IsGabber(PLAYER1)~ THEN REPLY @4 /* ~Hey, easy now, I'm not a follower of Cyric but a child of Bhaal. It's probably his decision that I'm here.~ */ 
           GOTO 3 

  IF ~Global("quest_get_out_here","GLOBAL",1)~ THEN REPLY @5 /* ~Give me Kept's skull.~ */ 
           GOTO 4 
           
  IF ~~ THEN REPLY @11 /* ~We are not in Cyric's service and we simply wish to be able to leave the temple.~ */ 
           GOTO 5 
END 

IF ~~ THEN BEGIN 2 

  SAY @6 /* ~Massena should have kept his mouth shut. As for yours, you will soon no longer need it.~ */ 
  IF ~~ THEN 
      GOTO 5 

END 

IF ~~ THEN BEGIN 3 

  SAY @7 /* ~Cyric thinks he can deceive me with his sweet words. But I know a loyal follower of my master when I see one!~ */ 
  IF ~~ THEN 
        DO ~SetGlobal("systera_elu","COM026",1)~         
        GOTO 6 

END 

IF ~~ THEN BEGIN 4 

  SAY @8 /* ~You think you can take it from me, but you are no match for him.~ */ 
  IF ~~ THEN 
        GOTO 5 

END 

IF ~~ THEN BEGIN 5 

  SAY @9=@10 /* ~These places have been prepared especially for you. It is time to finish what I began. ~ No one will disturb my master's rest! ~ */ 
  IF ~~ THEN 
        DO ~SetGlobal("Systera_rencontre","GLOBAL",2) 
            AddJournalEntry(@201,QUEST) 
            ChangeEnemyAlly("COSYSTE",ENEMY)~ 
        EXIT 

END 

IF ~~ THEN BEGIN 6 

  SAY @9=@10 /* ~These places have been prepared especially for you. It is time to finish what I began. ~ No one will disturb my master's rest! ~ */ 
  IF ~~ THEN 
        DO ~SetGlobal("Systera_rencontre","GLOBAL",2) 
            AddJournalEntry(@200,QUEST) 
            ChangeEnemyAlly("COSYSTE",ENEMY)~ 
        EXIT 

END
