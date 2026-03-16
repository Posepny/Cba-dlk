BEGIN ~COCANDE~

IF ~Global("candelas_init","COM026",1)
    OR(2)
     Global("ekilis_mort","Global",1)
     Global("ekilis_alliance","Global",0)~ THEN BEGIN 1

  SAY   @1 /*  ~Protecteur, je tenais à vous remercier personnellement d'avoir ouvert la porte du temple.~  */ 
  IF ~~ THEN REPLY @2 /* ~Qui êtes-vous?~  */
           GOTO  2

  IF ~~ THEN REPLY @3 /* ~Je n'ai rien fait, la porte s'est ouverte toute seule.~  */
           GOTO  3

END

IF ~~ THEN BEGIN 2

  SAY   @4 /*  ~Je suis Candelas, humble serviteur du dieu des dieux, Cyric.~  */ 
  IF ~~ THEN GOTO 4

END

IF ~~ THEN BEGIN 3

  SAY   @5 /*  ~J'aurai aimé voir celà de mes yeux.~  */ 
  IF ~~ THEN GOTO 4

END

IF ~~ THEN BEGIN 4

  SAY   @6=@7=@8=@9=@10 /*  ~A la mort de Bhaal, beaucoup de ses serviteurs se sont ralliés à Cyric et nous avons appris l'existance de ce temple. Ekilis avait pour mission de le détruire.~ ~Grâce à sa stupidité, le temple s'est trouvé scellé pendant de nombreuses années dans l'attente qu'un enfant de Bhaal se présente à sa porte.~ ~J'allais utiliser Sarevok lorsque vous l'avez tué. Imaginez ma déception quand j'ai appris sa mort...~ ~J'ai supposé que vous êtiez aussi un enfant de Bhaal. Pour cela, il m'a suffit de le vérifier en me servant de Barni pour vous attirer ici et je ne suis pas déçu du résultat.~ ~Voilà Protecteur, je vous ai compté mon histoire. A votre tour, parlez moi de ce temple.~  */ 
  IF ~~ THEN REPLY @11 /* ~(Vous accédez à la demande de Candelas)~  */
         DO ~SetGlobal("candelas_init","COM026",2)~
         GOTO  5

  IF ~~ THEN REPLY @12 /* ~Je vois, vous avez peur d'être enfermé à votre tour et vous avez bien raison. Ce temple est un piège mortel pour les fidèles de Cyric. (air moqueur)~  */
         DO ~SetGlobal("candelas_init","COM026",2)~
         GOTO  6

  IF ~~ THEN REPLY @13 /* ~Cyric est vraiment entouré de crétins. Il est urgent de faire le ménage!~  */
          DO ~SetGlobal("candelas_init","COM026",2)~
		 EXIT

  IF ~Global("Champion_bhaal","GLOBAL",1)~ THEN REPLY @14 /* ~Je vous remercie de m'avoir conduit ici. Mais j'ai autre idée en tête. Vous allez goûter au CHAMPION DE BHAAL!~  */
          DO ~SetGlobal("candelas_init","COM026",2)~
		 EXIT

  IF ~~ THEN REPLY @15 /* ~(ne rien répondre et passer à l'attaque)~  */
          DO ~SetGlobal("candelas_init","COM026",2)~
		 EXIT

END

IF ~~ THEN BEGIN 5

  SAY   @16 /*  ~Excellent, il me tarde d'y pénétrer. Il me reste juste à me débarrasser de vous maintenant.~  */ 
  IF ~~ THEN REPLY @17 /* ~Je tenais à vous rendre la pareille. Finis de jouer! A l'attaque!~  */
          DO ~SetGlobal("candelas_init","COM026",2)~
		 EXIT

  IF ~~ THEN REPLY @18 /* ~Cyric est vraiment entouré de crétins. Il est temps de faire le ménage!~  */
          DO ~SetGlobal("candelas_init","COM026",2)~
		 EXIT

  IF ~~ THEN REPLY @19 /* ~Je vous remercie de m'avoir conduit ici. Mais j'ai autre idée en tête. Vous allez goûter au CHAMPION DE BHAAL!~  */
          DO ~SetGlobal("candelas_init","COM026",2)~
		 EXIT

  IF ~~ THEN REPLY @20 /* ~(ne rien répondre et passer à l'attaque)~  */
          DO ~SetGlobal("candelas_init","COM026",2)~
		 EXIT

END

IF ~~ THEN BEGIN 6
  SAY   @21 /*  ~Comme il vous plaira. Je le découvrirai par moi même. Finissons en!~  */ 
  IF ~~ THEN 
          DO ~SetGlobal("candelas_init","COM026",2)~
          EXIT

END

CHAIN IF ~Global("ekilis_alliance","GLOBAL",1)~ THEN ~COCANDE~ 10
  @100 /*  ~Vous voilà donc enfin de retour et avec Ekilis que nous pensions perdu.~  */ 
  == ~COEKILIS~ IF ~~ THEN @101 /* ~J'aurais dû me douter que vous profiteriez de l'occasion...~ */
END
IF ~~ THEN REPLY @102 /* ~On peut savoir qui vous êtes?~ */
   GOTO  11
   
  
CHAIN IF ~~ THEN ~COCANDE~ 11
  @4=@6=@7=@8=@9=@10 /*  ~A la mort de Bhaal, beaucoup de ses serviteurs se sont ralliés à Cyric et nous avons appris l'existance de ce temple. Ekilis avait pour mission de le détruire.~ ~Grâce à sa stupidité, le temple s'est trouvé scellé pendant de nombreuses années dans l'attente qu'un enfant de Bhaal se présente à sa porte.~ ~J'allais utiliser Sarevok lorsque vous l'avez tué. Imaginez ma déception quand j'ai appris sa mort...~ ~J'ai supposé que vous êtiez aussi un enfant de Bhaal. Pour cela, il m'a suffit de le vérifier en me servant de Barni pour vous attirer ici et je ne suis pas déçu du résultat.~ ~Voilà Protecteur, je vous ai compté mon histoire. A votre tour, parlez moi de ce temple.~  */ 
  == ~COEKILIS~ IF ~~ THEN @103 /* ~Je ne suis pas stupide! Vous devriez faire attention à vos parôles. Je suis Ekilis le grand inquisiteur de Cyric, vous devez me traiter avec respect!~ */
  == ~COCANDE~ IF ~~ THEN @104 /* ~Les choses ont bien changé en votre absence, mon cher Ekilis. Nous réglerons ce point après nous être débarrassé de l'enfant de Bhaal.~ */
  == ~COEKILIS~ IF ~~ THEN @105 /* ~De l'enfant de Bhaal? La rumeur était donc vrai. Nous offrirons son coeur à la gloire de Cyric!~ */
END
  IF ~~ THEN REPLY @13 /* ~Cyric est vraiment entouré de crétins. Il est urgent de faire le ménage!~  */
     DO ~SetGlobal("candelas_init","COM026",2)~
		 EXIT

  IF ~Global("Champion_bhaal","GLOBAL",1) ~ THEN REPLY @14 /* ~Je vous remercie de m'avoir conduit ici. Mais j'ai autre idée en tête. Vous allez goûter au CHAMPION DE BHAAL!~  */
     DO ~SetGlobal("candelas_init","COM026",2)~
		 EXIT

  IF ~~ THEN REPLY @15 /* ~(ne rien répondre et passer à l'attaque)~  */
     DO ~SetGlobal("candelas_init","COM026",2)~
		 EXIT
		 
