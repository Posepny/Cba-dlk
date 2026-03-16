BEGIN ~Lucinda~


BEGIN ~Elvina~

IF ~Global("statue_elvina_init","COM019",0)~ THEN BEGIN 1

  SAY   @1/*  ~HEY!!! Ca l'écorcherait de dire BONJOUR avec ce qui lui sert de bouche!~  */ 
  IF ~~ THEN REPLY @2 /* ~Bonjour?~  */
             DO ~SetGlobal("statue_elvina_init","COM019",1)~
             GOTO  2

  IF ~~ THEN REPLY @3 /* ~Euhhh, on peut savoir ce que vous êtes au juste?~  */
             DO ~SetGlobal("statue_elvina_init","COM019",1)~
             GOTO  3

END

IF ~~ THEN BEGIN 2

  SAY   @4/*  ~Voilà qui est un peu mieux!~  */ 
  IF ~~ THEN GOTO 6

END

IF ~~ THEN BEGIN 3

  SAY   @5/*  ~Mais ça écoute rien et c'est pas mieux que les autres. Ca va vite m'énerver!~  */ 
  IF ~~ THEN REPLY @6 /* ~Milles excuses, bonjour!~  */
           GOTO  4

  IF ~~ THEN REPLY @7 /* ~Fermes là, t'es qu'une pauvre statue qui parle trop!~  */
           GOTO  5

END

IF ~~ THEN BEGIN 4

  SAY   @8/*  ~Voilà qui est un peu mieux!~  */ 
  IF ~~ THEN GOTO 6

END

IF ~~ THEN BEGIN 5

  SAY   @9/*  ~Là ~Lucinda~, tu peux pas dire qu'il ne l'a pas cherché cette fois! Galik, il est l'heure te t'amuser!~  */ 
  IF ~~ THEN 
         DO ~SetGlobal("statue_elvina_Galik","COM019",1)
             SetGlobal("pas_discut_bijou","COM019",1)
             ActionOverride("COSTATL",DestroySelf())
             ActionOverride("COSTATE",DestroySelf())~
         EXIT

END

IF ~~ THEN BEGIN 15

  SAY   @10/*  ~Et moi, je n'aime pas les voleurs! Galik, il est l'heure te t'amuser!~  */ 
  IF ~~ THEN 
         DO ~SetGlobal("statue_elvina_Galik","COM019",1)
             ActionOverride("COSTATL",DestroySelf())
             ActionOverride("COSTATE",DestroySelf())~
         EXIT

END

IF ~~ THEN BEGIN 16

  SAY   @11=@12/*  ~Pouah, ça veut négocier! Tiens, essaye de négocier avec ça on verra ensuite!~ ~Galik, il est l'heure te t'amuser!~  */  
  IF ~~ THEN  DO ~SetGlobal("statue_elvina_Galik","COM019",1)
                  ActionOverride("COSTATL",DestroySelf())
                  ActionOverride("COSTATE",DestroySelf())~
              EXIT

END

IF ~Global("Galik_vaincu","COM019",1)
    Global("statue_elvina_Galik","COM019",2)~ THEN BEGIN 17

  SAY   @13/*  ~Galik a glissé au mauvais moment. C'est juste un coup de chance... Donnes moi le collier!~  */ 
  IF ~~ THEN REPLY @14 /* ~Donnes moi quelque chose de précieux en échange et tu auras le collier sinon dis lui adieu.~  */
           GOTO  18

END

IF ~~ THEN BEGIN 18

  SAY   @15/*  ~J'aime pas ta grande gueule! Donnes moi le collier et je te dirai où trouver une larme de sang.~  */ 
  IF ~~ THEN REPLY @16 /* ~Je ne sais pas à quoi elle serve.~  */
           GOTO  19

END

IF ~~ THEN BEGIN 19

  SAY   @17 /*  ~C'est pas mon problème mais tu ferais mieux d'en avoir le plus possible si tu veux rester en vie lors de l'ultime combat.~  */ 
  IF ~~ THEN REPLY @19 /* ~Oui, voilà le collier.~  */
             DO ~ActionOverride(LastTalkedToBy(Myself),DestroyItem("AMUL12"))
                 AddJournalEntry(@56,INFO)~
             GOTO  20

  IF ~~ THEN REPLY @20 /* ~Non, je garde le collier. (sourire)~  */
             DO ~SetGlobal("Elvina_bijou","COM019",3)
                 AddJournalEntry(@56,INFO)~
             GOTO  21
END

IF ~~ THEN BEGIN 20

  SAY   @21/*  ~(Des bras délicats surgissent du mur et porte au cou le collier). Il y a une larme de sang dans le coffre. Il sera bouche bée quand il me vera!~  */ 
  IF ~~ THEN EXTERN ~Lucinda~ 10 

END

IF ~~ THEN BEGIN 21

  SAY   @22/*  ~Vous ne sortirez jamais vivant d'ici! Elvina vous maudit tous!~  */ 
  IF ~~ THEN 
    DO ~ActionOverride("COSTATL",DestroySelf())
        ActionOverride("COSTATE",DestroySelf())~
  EXIT

END

CHAIN IF ~~ THEN ~Elvina~ 6
  @23/* ~Expliques lui toi... J'en ai assez de répeter la même chose.~ */
  == ~Lucinda~ IF ~~ THEN @24/* ~Je suis ~Lucinda, comcubine du grand maître et voici Elvina sa principale.~ */
END
IF ~~ THEN REPLY @25/* ~Enchanté de vous rencontrer mesdames!~ */
           GOTO  7

CHAIN IF ~~ THEN ~Elvina~ 7
  @26/* ~Crois-tu que ça aurait pensé à apporter mon bijou?~ */
  == ~Lucinda~ IF ~~ THEN @27/* ~Demandons, ça ne coûte rien.~ */
  == ~Lucinda~ IF ~~ THEN @28/* ~Elvina cherche son bijou, celui avec les grosses pierres qui brillent.~ */
END
IF ~!HasItem("AMUL12",LastTalkedToBy(Myself))~ THEN REPLY @29/* ~Désolé, je n'ai pas vu ce bijou...~ */
                                                    DO ~SetGlobal("Elvina_bijou","COM019",1)~
                                                    GOTO  8

IF ~HasItem("AMUL12",LastTalkedToBy(Myself))~ THEN REPLY @30/* ~Celui-ci? (vous montrez le collier)~ */
                                                   DO ~SetGlobal("Elvina_bijou","COM019",1)~
                                                   GOTO  12


CHAIN IF ~~ THEN ~Elvina~ 8
  @31/* ~Je te l'avais bien dit.J'en ai assez de voir ces mioches à papa qui servent à rien... Je retourne à ma sieste!~ */
  == ~Lucinda~ IF ~~ THEN @32/* ~Excusez ses manières, Elvina n'est pas vraiment méchante et elle tient beaucoup à ce bijou...~ */
END
IF ~~ THEN REPLY @33/* ~Ce n'est rien. Il y a d'autres personnes qui sont déja venus ici?~ */
           EXTERN ~Lucinda~ 9

IF ~~ THEN REPLY @34/* ~Pourriez-vous m'indiquer la meilleure route?~ */
           EXTERN ~Lucinda~ 13

CHAIN IF ~~ THEN ~Elvina~ 12
  @35/* ~C'est à moi! Donnes le!~ */
  == ~Lucinda~ IF ~~ THEN @36/* ~Excusez ses manières, Elvina n'est pas vraiment méchante. Elle a juste tendance à perdre ses affaires... Pourriez-vous lui rendre son collier avant qu'elle ne s'énerve encore?~ */
END
IF ~~ THEN REPLY @37/* ~Avec plaisir, prenez le.~ */
           DO ~ActionOverride(LastTalkedToBy(Myself),DestroyItem("AMUL12"))~
           GOTO  13

IF ~~ THEN REPLY @38/* ~Hors de question, il vaut un paquet d'or et je n'aime pas son ton!~ */
           GOTO  15

IF ~~ THEN REPLY @39/* ~Proposez quelque chose en échange.~ */
           GOTO  16

CHAIN IF ~~ THEN ~Elvina~ 13
  @40/* ~(Des bras délicats surgissent du mur et s'empare du collier). Luncida, il sera bouche bée quand il me vera!~ */
  == ~Lucinda~ IF ~~ THEN @41/* ~Je n'en doute pas un seul instant.~ */
  == ~Lucinda~ IF ~~ THEN @42/* ~Vous ne devriez pas descendre cet escalier. En dessous, ca sent mauvais et c'est mal éclairée. Vous allez vous salir et attraper des poux.~ */
  == ~Lucinda~ IF ~~ THEN @43/* ~La grille au fond de la salle s'ouvre avec un crâne. Le royaume des tués vous y attend. Quand à la grille sur le coté, elle s'ouvre avec une pierre rouge. L'endroit est chauffé, il y a de quoi boire et ce charmant Kael sera là pour vous accueillir.~ */
END
IF ~~ THEN REPLY @44/* ~Qui est ce Kael?~ */
           GOTO  14

CHAIN IF ~~ THEN ~Elvina~ 14
  @45/* ~Pouah, le grand maître lui a bien botté le cul et Cespénar a repris les choses en main!~ */
  == ~Lucinda~ IF ~~ THEN @46/* ~Qu'est ce que tu peux être grossière des fois... Nous vous laissons poursuivre votre route. Adieu sang de mon bienaimé et à son escorte.~ */
END IF ~~ THEN DO ~ActionOverride("COSTATL",DestroySelf())
                   ActionOverride("COSTATE",DestroySelf())~ 
               EXIT


APPEND ~Lucinda~
 IF ~~ THEN BEGIN 9
 
   SAY   @47=@48/*  ~Bien sur, vous n'êtes pas les seuls à vouloir prouver votre valeur à mon bienaimé.~ ~Veuillez m'excuser, je me sens lasse. Je vais prendre congé.~ */ 
   IF ~~ THEN 
          DO ~ActionOverride("COSTATL",DestroySelf())
              ActionOverride("COSTATE",DestroySelf())~ 
          EXIT

 END

 IF ~~ THEN BEGIN 10

   SAY   @42=@43/*  ~Vous ne devriez pas descendre cet escalier. En dessous, ca sent mauvais et c'est mal éclairée. Vous allez vous salir et attraper des poux. De plus, il y a plein de sales bestioles répugnantes.~ ~La grille au fond de la salle s'ouvre avec un crâne. Le royaume des tués vous y attend. Quand à la grille sur le coté, elle s'ouvre avec une pierre rouge. L'endroit est chauffé, il y a de quoi boire et ce charmant Kael sera là pour vous accueillir.~  */ 
   IF ~~ THEN REPLY @53 /* ~Merci pour vos renseignements.~  */
            GOTO  11

 END

 IF ~~ THEN BEGIN 11

   SAY   @54/*  ~Bonne route, au sang de mon bienaimé et à son escorte.~  */ 
   IF ~~ THEN 
          DO ~ActionOverride("COSTATL",DestroySelf())
              ActionOverride("COSTATE",DestroySelf())~
          EXIT
 END

 IF ~HasItem("AMUL12",LastTalkedToBy(Myself))~ THEN BEGIN 12
 
   SAY   @55/*  ~Elvina regardes. Ton collier est là!~  */ 
   IF ~~ THEN EXTERN ~ELVINA~ 12

 END

 IF ~~ THEN BEGIN 13
 
   SAY   @51/*  ~Ne pourriez-vous pas aider Elvina à trouver son collier? Je serai ravi ensuite de vous aider.~ ~Veuillez m'excuser, je me sens lasse. Je vais prendre congé.~  */ 
   IF ~~ THEN 
          DO ~ActionOverride("COSTATL",DestroySelf())
              ActionOverride("COSTATE",DestroySelf())~ 
          EXIT

 END

END