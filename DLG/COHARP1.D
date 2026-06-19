BEGIN ~COHARP1~

IF ~Global("init_harpie","COM015",0)~ THEN BEGIN 1

  SAY   @1=@2 /*  ~Ahh me voilà réveillée! (la Harpie regarde autour d'elle et pose son regard sur vous)~ ~Que m'as tu apporté à manger étranger? J'ai dû mal à tenir une conversation le ventre vide.~  */ 
  IF ~~ THEN REPLY @3 /* ~Euhh rien, vous mangez quoi au juste?~  */
     DO ~SetGlobal("init_harpie","COM015",1)~
		 GOTO  4

  IF ~~ THEN REPLY @4 /* ~Je recherche une Rûne. Massena m'a dit que je la trouverai dans un coffre à ce niveau.~  */
     DO ~SetGlobal("init_harpie","COM015",1)~
     GOTO  2

  IF ~~ THEN REPLY @5 /* ~Je me moque de tes envies, il y a quoi la dedans?~  */
     DO ~SetGlobal("init_harpie","COM015",1)~
     GOTO  3

END


IF ~~ THEN BEGIN 2

  SAY   @6=@7 /*  ~Ce gredin dit vrai. C'est très aimable de sa part de vous envoyer jusqu'à moi.~ ~Que me donnes-tu en échange de cette Rune?~  */ 
  IF ~~ THEN REPLY @8 /* ~Je ne sais pas. Que voulez-vous?~  */
		 GOTO  4

END


IF ~~ THEN BEGIN 3

  SAY   @9 /*  ~Ah ah ha, un deux pattes agressif! Nous allons calmer tes ardeurs!~  */ 
  IF ~~ THEN 
    DO~SetGlobal("harpie_combat","COM015",1)~
    EXIT

END


IF ~~ THEN BEGIN 4

  SAY   @12/* ~De la viande évidemment et je la veux fraîche. Dépêches toi, j'ai faim!~ */

  IF ~~ THEN REPLY @13/* ~Ca va être difficle à trouver dans un tel endroit... Autre chose?~ */
		 GOTO  5
END

IF ~~ THEN BEGIN 5

  SAY   @14/* ~Ta race a toujours manqué de sens pratique, deux pates. Cherches bien, il y en a tout près de moi. (elle vous fixe du regard)~ */

  IF ~~ THEN REPLY @15/* ~Je vois... Désolé mais Je ne suis pas au menu.~ */
           GOTO  6
END


IF ~~ THEN BEGIN 6

  SAY   @10=@11 /*  ~Je vois les choses autrement. J'ai dû mal à tenir une conversation le ventre vide et celle-ci a suffisamment duré!~ ~De la viande fraîche mes amies! A table!~  */ 
  IF ~~ THEN 
        DO~SetGlobal("harpie_combat","COM015",1)~
        EXIT

END

