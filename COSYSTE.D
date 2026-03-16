BEGIN ~COSYSTE~

IF ~Global("Systera_rencontre","GLOBAL",1)~ THEN BEGIN 1

  SAY   @1=@2 /*  ~Ils sont donc parvenus jusqu'ici. (son regard vide est posé sur vous)~ ~Vôtre route s'arrête là fidèles du dieu fou. Moi, Systéra la grande prêtresse de Bhaal, je vais mettre un terme à vôtre quête.~  */ 
  IF ~Global("quete_sortir_ici","GLOBAL",1)~ THEN REPLY @3 /* ~Il y a méprise, je suis juste coincé dans votre temple. Massena m'a dit que je devais trouver le crâne de Kept pour en sortir.~  */
           GOTO  2

  IF ~IsGabber(PLAYER1)~ THEN REPLY @4 /* ~Hey doucement, je ne suis pas un fidèle de Cyric mais un enfant de Bhaal. C'est sans doute sa décision si je suis là.~  */
           GOTO  3

  IF ~Global("quete_sortir_ici","GLOBAL",1)~ THEN REPLY @5 /* ~Donnez moi le crâne de Kept.~  */
           GOTO  4
           
  IF ~~ THEN REPLY @11 /* ~Nous ne sommes pas au service de Cyric et nous désirons simplement pouvoir sortir du temple.~  */
           GOTO  5
END

IF ~~ THEN BEGIN 2

  SAY   @6 /*  ~Massena aurait dû tenir sa langue. Quand à la vôtre, vous n'en aurai bientôt plus besoin.~  */ 
  IF ~~ THEN 
      GOTO 5

END

IF ~~ THEN BEGIN 3

  SAY   @7 /*  ~Cyric croit me tromper avec ses douces paroles. Mais je sais reconnaître un fidèle de mon maître lorsque j'en vois un!~  */ 
  IF ~~ THEN 
        DO ~SetGlobal("systera_elu","COM026",1)~        
        GOTO 6

END

IF ~~ THEN BEGIN 4

  SAY   @8 /*  ~Vous croyez être capable de me le prendre mais Vous n'êtes pas de taille.~  */ 
  IF ~~ THEN
        GOTO 5

END

IF ~~ THEN BEGIN 5

  SAY   @9=@10 /*  ~Ces lieux ont été préparés spécialement à vôtre intention. Il est temps de terminer ce que j'ai commencé.~ ~Personne ne troublera le repos de mon maître!~  */ 
  IF ~~ THEN 
        DO ~SetGlobal("Systera_rencontre","GLOBAL",2)
            AddJournalEntry(@201,QUEST)
            ChangeEnemyAlly("COSYSTE",ENEMY)~
        EXIT

END

IF ~~ THEN BEGIN 6

  SAY   @9=@10 /*  ~Ces lieux ont été préparés spécialement à vôtre intention. Il est temps de terminer ce que j'ai commencé.~ ~Personne ne troublera le repos de mon maître!~  */ 
  IF ~~ THEN 
        DO ~SetGlobal("Systera_rencontre","GLOBAL",2)
            AddJournalEntry(@200,QUEST)
            ChangeEnemyAlly("COSYSTE",ENEMY)~
        EXIT

END

