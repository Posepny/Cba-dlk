BEGIN ~COMASSE3~

// Devant le puit: Massena est réssucité et il s'aprête à éliminer le groupe.
IF ~Global("MASSENA_PUIT_INIT","GLOBAL",1)~ THEN BEGIN 0

  SAY @1 /* ~Vous êtes donc toujours en vie. Je pensais que le temple aurait raison de vous... ~ */
    
    // Ekilis est allié du groupe
    IF ~Global("ekilis_alliance","Global",1)
     Global("ekilis_mort","Global",0)~ THEN 
     REPLY @2 /* ~Massena, c'est vous?~ */
     DO ~SetGlobal("MASSENA_PUIT_INIT","Global",2)~
     GOTO 1
    
    IF ~Global("ekilis_alliance","Global",0)~ THEN 
     REPLY @2 /* ~Massena, c'est vous?~ */
     DO ~SetGlobal("MASSENA_PUIT_INIT","Global",2)~
     GOTO 2

    // Ekilis est allié du groupe et mort
    IF ~Global("ekilis_alliance","Global",1)
     Global("ekilis_mort","Global",1)~ THEN 
     REPLY @2 /* ~Massena, c'est vous?~ */
     DO ~SetGlobal("MASSENA_PUIT_INIT","Global",2)~
     GOTO 2

END

IF ~~ THEN BEGIN 1

  SAY @3 /* ~Je vois qu'il est toujours parmi vous. (Massena désigne Karl)~ */
  IF ~~ THEN 
    EXTERN ~COEKILIS~ 22

END

IF ~~ THEN BEGIN 2

  SAY @4 /* ~De chair et d'os cette fois.~ */
  IF ~~ THEN 
    REPLY @5 /* ~Comment avez-vous fait? vous étiez mort!~ */
    GOTO 3

END

IF ~~ THEN BEGIN 3

  SAY @6 /* ~Le temple de Bhaal recele de grands pouvoirs pour celui qui sait lui rester fidèle. ~ */
  IF ~~ THEN 
    REPLY @7 /* ~Je vois. Je vous aide et ensuite le temple devait vous débarrasser de nous...~ */
    GOTO 4

END

IF ~~ THEN BEGIN 4

  SAY @8 /* ~Vous pensiez vraiment que j'allais laisser des étrangers sortir du temple secret de mon maître. ~ */
  IF ~~ THEN 
    GOTO 7

END

IF ~~ THEN BEGIN 5

  //SAY @9 /* ~Bhaal sera bientôt de retour et Cyric tremblera devant lui!~ */
  SAY @9 /* ~Tu oses insulter Bhaal le seigneur du meurtre dans son antre! Méfies toi de son courroux!~ */
  IF ~~ THEN 
    EXTERN ~COEKILIS~ 23

END

IF ~~ THEN BEGIN 6

  //SAY @10 /* ~Tu seras le premier à mourir Ekilis grand inquisiteur du dieu fou!~ */
  SAY @10 /* ~Je vais offrir vos têtes à mon maître. (il désigne du doigt Ekilis). Tu seras le premier à mourir serviteur du dieu fou!~*/
  IF ~~ THEN 
    DO ~ChangeEnemyAlly("COMASSE2",ENEMY)
    SetGlobal("Puit_combat","GLOBAL",1)~ 
    EXIT

END

IF ~~ THEN BEGIN 7

  SAY @11=@12 /* ~N'y voyez rien de personnel. Dans le fond je vous aime bien mais vôtre route s'arrête ici.~ ~Adieu étranger(s)!~  */
  IF ~~ THEN 
    DO ~ChangeEnemyAlly("COMASSE2",ENEMY)
        SetGlobal("Puit_combat","GLOBAL",1)
        AddJournalEntry(@100,QUEST)~
    EXIT

END

// Devant le puit: Massena stoppe le combat.
IF ~Global("Puit_combat","GLOBAL",2) ~ THEN BEGIN 8

  SAY @13=@14 /* ~Attendez! Comment est ce possible? ~ ~Le puit de Bhaal communique avec votre chef! Cessez le combat immédiatement!~  */
  IF ~~ THEN 
    DO ~SetGlobal("Puit_combat","Global",3)~
    EXIT

END

// Devant le puit: Massena réalise que le Charname est p.e l'élu.
IF ~Global("Puit_combat","GLOBAL",4)~ THEN BEGIN 9

  SAY @15 /* ~Incroyable! L'essence de mon maître coule dans vos veines!~ */
  IF ~~ THEN 
    REPLY @16 /* ~Je vous l'avais dit mais vous ne m'avez pas cru!~ */
    DO ~SetGlobal("Puit_combat","GLOBAL",5)~
    GOTO 10

  IF ~~ THEN 
    REPLY @17 /* ~Mon père est Bhaal. Ce qui fait de toi mon humble serviteur!~ */
    DO ~SetGlobal("Puit_combat","GLOBAL",5)~
    GOTO 10

  IF ~~ THEN 
    REPLY @18 /* ~Bhaal a couché avec ma mère et hop neuf mois plus tard me voilà!~ */
    DO ~SetGlobal("Puit_combat","GLOBAL",5)~
    GOTO 10

  IF ~~ THEN 
    REPLY @19 /* ~C'est pas ton problème! Le combat n'est pas terminé!~ */
    DO ~SetGlobal("Puit_combat","GLOBAL",5)~
    GOTO 10

END

IF ~~ THEN BEGIN 10

  SAY @20=@21 /* ~Bhaal a un enfant et le temple l'a laissé entrer! ~ ~Systéra avait raison... L'élu existe!~  */
  IF ~~ THEN 
    REPLY @22 /* ~Il faudrait savoir ce que vous voulez! On se bat ou pas?~ */
    GOTO 11

  IF ~~ THEN 
    REPLY @23 /* ~Je ne comprends rien! L'élu de quoi!~ */
    GOTO 13

END

IF ~~ THEN BEGIN 11

  SAY @24 /* ~Milles pardons, j'ignorai qui vous étiez.~ */
  IF ~~ THEN 
    GOTO 13

END

IF ~~ THEN BEGIN 12

  SAY @25 /* ~Bhaal vous a choisi!~ */
  IF ~~ THEN 
    GOTO 13

END

IF ~~ THEN BEGIN 13

  SAY @26 /* ~Bhaal vous a fait venir ici pour affronter les épreuves du temple. Lorsque vous aurez réussi son présent sera vôtre!~ */
  IF ~~ THEN 
    REPLY @27 /* ~La mort ne vous a pas réussi! Vous êtes complètement malade. Je veux juste sortir de ce maudit temple!~ */
    GOTO 14

  IF ~Global("Bhaal_present","GLOBAL",0)~ THEN 
    DO ~SetGlobal("Bhaal_present","GLOBAL",1)~ 
    REPLY @28 /* ~Un présent?~ */
    GOTO 16

  IF ~Global("Bhaal_sansvie","GLOBAL",0)~ THEN 
    DO ~SetGlobal("Bhaal_sansvie","GLOBAL",1)~ 
    REPLY @30 /* ~Ca ne peut pas être Bhaal. Il est mort!~ */
    GOTO 19

  IF ~~ THEN 
    REPLY @31 /* ~Dans ce cas que les épreuvent commencent!~ */
    GOTO 18

END

IF ~~ THEN BEGIN 14

  SAY @32 /* ~Vôtre père a un plan pour vous et vous ne pouvez vous y soustraire!~ */
  IF ~~ THEN 
    REPLY @33 /* ~Hors de question d'obéir à quiconque. J'ai un plan pour vous. Trouvez quelqu'un d'autre!~ */
    GOTO 15

END

IF ~~ THEN BEGIN 15

  SAY @34 /* ~Vous refusez les épreuves! Dans ce cas, n'êtes pas digne de mon maître! ~ */
  IF ~~ THEN 
    DO ~ChangeEnemyAlly("COMASSE2",ENEMY)
        AddJournalEntry(@201,QUEST)~
    EXIT

END

IF ~~ THEN BEGIN 16

  SAY @35 /* ~~ */
  IF ~~ THEN 
    GOTO 13

END

IF ~~ THEN BEGIN 17

  SAY @36 /* ~Oui et grâce à vous Bhaal sera bientôt de retour!~ */
  IF ~~ THEN 
    GOTO 13

END

IF ~~ THEN BEGIN 18

  SAY @37 /* ~Derrière cette grille, les épreuves du temple vous attendent. Vos serviteurs vous assisteront.~ */
IF ~~ THEN 
    DO~SetGlobal("Bhaal_epreuves","GLOBAL",1)
       AddJournalEntry(@200,QUEST)~    
    EXIT
    
END

IF ~~ THEN BEGIN 19

  SAY @38 /* ~Mon maître est ici en sommeil dans ce puit. Vous avez senti son bref contact tout comme moi.~ */
IF ~~ THEN 
    REPLY @39 /* ~Et il attend quoi pour se réveiller alors?~ */
    GOTO 20
    
END

IF ~~ THEN BEGIN 20

  SAY @40 /* ~J'ignore ses desseins mais vous en faite parti.~ */
  IF ~~ THEN 
   GOTO 13

END
