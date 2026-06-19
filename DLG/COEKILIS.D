BEGIN ~COEKILIS~


// Niveau 1A: 1iere rencontre
IF ~Global("ekilis_init","GLOBAL",0)~ THEN BEGIN 0
  SAY @1=@2 /* ~Tu pensais pouvoir m'attaquer par surprise! (regarde autour de lui finalement surpris)~ ~Dites-moi où est cette garce de Systéra, je n'ai que faire de ses laquais!~  */
  IF ~~ THEN 
    REPLY @3 /* ~On est les laquais de personne! Qu'est ce que vous faisiez là en stase?~ */
    DO ~SetGlobal("ekilis_init","GLOBAL",1)~
    GOTO 1
/*
  IF ~~ THEN 
    REPLY @4 /* ~Tu es bien sur de toi. Si tu nous montrais plutôt comment tu vas mourir!~ */
    DO ~SetGlobal("ekilis_init","GLOBAL",1)
        SetGlobal("ekilis_combat","GLOBAL",1)
    Enemy()~
    EXIT    
*/
END

IF ~~ THEN BEGIN 1
  SAY @5=@6 /* ~De simples aventuriers alors...~ ~Mon nom est Karl et je suis ici pour les mêmes raisons que vous. Je cherche le trésor de Bhaal, le dieu mort!~  */
  IF ~~ THEN 
    GOTO 3
END

IF ~~ THEN BEGIN 2
  SAY @7 /* ~Ce n'est pas grave... Tuer ne m'a jamais posé problème. (sourire carnassier)~ */
  IF ~~ THEN 
    DO ~Enemy()~
    EXIT
END

IF ~~ THEN BEGIN 3
  SAY @8 /* ~Vous allez vous joindre à moi et chacun aura sa part du butin.~ */
  IF ~~ THEN 
    REPLY @9 /* ~Ca me va mais on est plus nombreux donc c'est toi qui vient avec nous.~ */
    DO ~SetGlobal("ekilis_alliance","GLOBAL",1)~
    GOTO 4

  IF ~~ THEN 
    REPLY @10 /* ~Ca me va. Allons-y!~ */
    DO ~SetGlobal("ekilis_alliance","GLOBAL",1)
        AddJournalEntry(@32,QUEST)~
    EXIT

  IF ~~ THEN 
    REPLY @11 /* ~On a pas besoin de toi. Tu peux partir.~ */
    GOTO 5

  IF ~~ THEN 
    REPLY @12 /* ~Pas envie. Et pas envie non plus que tu restes en vie.~ */
    DO ~Enemy()~
    GOTO 6

  IF ~IsGabber(PLAYER1)~ THEN 
    REPLY @13 /* ~Etant un enfant de Bhaal, tu comprendras que je n'aime pas trop qu'on vienne piller mon temple...~ */
    DO ~Enemy()~
    GOTO 7
END

IF ~~ THEN BEGIN 4
  SAY @14 /* ~Ne soyez pas ridicule mon ami(e). Je n'ai pas envie de jouer à celui qui a la plus grosse. Vous seriez perdant. Allons-y! On n'a pas de temps à perdre.~ */
  IF ~~ THEN
    DO ~SetGlobal("ekilis_alliance","GLOBAL",1)
        AddJournalEntry(@32,QUEST)~
    EXIT
END

IF ~~ THEN BEGIN 5
  SAY @15 /* ~Je ne donne pas cher de vôtre peau sans moi. En fait, vous êtes déjà mort. Adieu!~ */
  IF ~~ THEN 
    DO ~SetGlobal("ekilis_partir","GLOBAL",1)
    AddJournalEntry(@33,QUEST)~
    EXIT
END

IF ~~ THEN BEGIN 6
  SAY @16 /* ~Ce n'est pas grave... Tuer ne m'a jamais posé problème. (sourire carnassier)~ */
  IF ~~ THEN
    DO ~AddJournalEntry(@34,QUEST)
    Enemy()~
    EXIT
END

IF ~~ THEN BEGIN 7
  SAY @17=@18 /* ~La rumeur était donc vraie... Bhaal a fait des mioches! (rires)~ ~Pour votre gouverne, mon vrai nom est Ekilis, le grand inquisiteur. Cyric va généreusement me récompenser pour ta tête!~  */
  IF ~~ THEN
    DO ~AddJournalEntry(@35,QUEST)
    Enemy()~
    EXIT
END


IF ~~ THEN BEGIN 9
  SAY @26 /* ~Systéra est au service de Bhaal. Elle est la gardienne du temple malgré la disparition de son maître. Elle rôde dans le coin.~ */
  IF ~~ THEN 
    EXIT
END

IF ~~ THEN BEGIN 10
  SAY @27 /* ~Mes compagnons sont morts pendant qu'on visitait. Leur manque de prudence a été fatale.~ */
  IF ~~ THEN 
    EXIT
END

IF ~~ THEN BEGIN 11

  SAY @28 /* ~Dans ce cas, nous trouverons le moyen de sortir d'ici une fois que nous aurons trouvé le trésor! J'en ai assez de ce temple...~ */
  IF ~~ THEN 
    EXIT

END

IF ~~ THEN BEGIN 12
  SAY @29 /* ~(surprise contenue) C'est une excellente nouvelle. Il ne reste plus qu'à trouver le trésor dans ce cas.~ */
  IF ~~ THEN 
    EXIT
END

IF ~~ THEN BEGIN 13
  SAY @30 /* ~Méfiez-vous des grilles et des murs,il y a souvent des pièges et parfois des créatures surgissent de nulle part. Je vous conseille d'ouvrir l'oeil.~ */
  IF ~~ THEN 
    EXIT
END

IF ~~ THEN BEGIN 14
  SAY @31 /* ~La porte d'entrée du temple s'est refermée derrière moi et je n'ai pas trouvé d'autre issue. Mais maintenant que vous êtes là, c'est que la porte elle est à nouveau ouverte!~ */
  IF ~~ THEN
    EXIT
END

IF ~~ THEN BEGIN 15
  SAY @37 /* ~Si j'en crois mon expérience, lorsqu'un lieu est tenu secret c'est qu'il recele des richesses. Il ne reste plus qu'à trouver l'endroit.~ */
  IF ~~ THEN 
    EXIT
END


// Niveau 1B: Massena demande la mort d'Ekilis **************************************************************************************************************************************
IF ~Global("ekilis_mort_demande","Global",2)
    Global("ekilis_defense","Global",0)~ THEN BEGIN 16

  SAY @60 /* ~Vôtre ami le fantôme est fou. L'or est mon seul maître et personne ne m'empêchera pas de trouver le trésor de Bhaal!~ */
  IF ~~ THEN 
    DO ~SetGlobal("ekilis_defense","Global",1)~
    GOTO 17        
END

IF ~~ THEN BEGIN 17
  SAY @61 /* ~Soit vous mourrez soit on se débarrasse du fantôme et on s'en met plein les poches. A vous de décider les amis.~ */
  IF ~~ THEN 
    REPLY @62 /* ~J'ai jamais aimé les fidèles de Cyric. C'est dommage...~ */
    DO ~SetGlobal("ekilis_deactivate","Global",1)
        SetGlobal("Ekilis_alliance","GLOBAL",0)
        ChangeEnemyAlly("COEKILIS",ENEMY)~
    EXIT

  IF ~~ THEN 
    REPLY @63 /* ~On reste ensemble et j'ai ses restes avec moi si ça peut être utile.~ */
    GOTO 18

  IF ~~ THEN
    REPLY @64 /* ~Je décide qu'on continue comme ça pour l'instant!~ */
    GOTO 19
END

IF ~~ THEN BEGIN 18
  SAY @65 /* ~Excellent, sous peu nous n'aurons plus ce parasite sur le dos.~  */
  IF ~~ THEN 
    DO ~SetGlobal("Massena_reste_brule","GLOBAL",1)~
    EXIT
END

IF ~~ THEN BEGIN 19
  SAY @66 /* ~Je sens qu'on va le regretter dans pas longtemps...~ */
  IF ~~ THEN 
    DO ~SetGlobal("Ekilis_regret","GLOBAL",1)
    SetGlobal("ekilis_deactivate","Global",1)
    SetGlobal("ekilis_follow","GLOBAL",0)~
    EXIT
END


// Niveau puit: Massena vivant a parlé et Ekilis réplique  *****************************************************************************
IF ~~ THEN BEGIN 20
  SAY @90 /* ~Pourquoi continuer à servir un dieu qui n'existe plus? Reconnais Cyric le dieu des dieux et entre à son service. Il t'accordera des pouvoirs bien au de là de ce que tu imagines...~ */
  //SAY@90 /* Ekilis, le grand inquisiteur de Cyric, est venu achever ton pathétique maître tapis dans ce trou...~*/ 
  IF ~~ THEN 
    DO ~SetGlobal("Ekilis_puit","GLOBAL",1)~
    EXTERN ~COMASSE3~ 5  
END

IF ~Global("Ekilis_puit","GLOBAL",1)
    Global("massena_puit_init","Global",1)~ THEN BEGIN 21
  SAY @91 /* ~Quel gachis vous ne trouvez pas? Cette fois ci on l'élimine!~ */
  //SAY @91 /* ~Cyric reconnaitra mon inéstimable valeur et je serai récompensé!~ */
  IF ~~ THEN 
    DO ~SetGlobal("Ekilis_puit","GLOBAL",2)
	    SetGlobal("Q_tresor_bhaal","GLOBAL",1)~
    EXTERN ~COMASSE3~ 6  
END

// Le groupe arrive au puit ***************************************************************************************************************************
// Massena brulé ou non placé dans le sarcophage et Ekilis est présent
IF ~Global("COEKILIS_PUIT_INIT","GLOBAL",1)~ THEN BEGIN 40

  SAY @92  /* ~C'est donc ici que se cache Bhaal, tapis dans un trou... C'est pathétique (sourire carnassier)~ */
  IF ~~ THEN 
    REPLY @93 /* Bhaal est mort, il ne peut pas être ici.~ */
    DO ~SetGlobal("COEKILIS_PUIT_INIT","GLOBAL",2)~
    GOTO 41
END

IF ~~ THEN BEGIN 41

  SAY @94=@95=@96  /* ~Ses fidèles ont parlé, Il agonise en ces lieux et je suis le seul à le savoir!~ ~(il se tourne vers le puit) Moi, Ekilis le grand inquisiteur de Cyric, je suis venu t'achever et ta descendence immonde mourra en même temps que toi! (il sort une fiole en la brandissant comme un trophé le regard fou)~ ~Cyric reconnaitra mon inestimable valeur et je serai récompensé par de terrifiants pouvoirs!~ */
  IF ~~ THEN 
    REPLY @97 /* ~Mais les trésors et le butin?~ */
    GOTO 42
  
  IF ~~ THEN  
    REPLY @99 /* ~C'est une belle histoire mais j'ai une meilleure fin pour toi. Bhaal est mon père et je vais lui offrir ton cadavre!~ */
    GOTO 43 
END


// Ekilis va lancer l'incantation pour détruire Bhaal
IF ~~ THEN BEGIN 42

  SAY @98  /* ~Ne me dérange pas avec tes questions triviales. Inclines toi devant moi! (regard menaçant) Il ne me reste plus qu'une dernière incantation avant de lancer la fiole et l'heure de mon sacre aura sonné!~  */
  IF ~~ THEN 
    DO ~SetGlobal("Ekilis_incantation_Bhaal","GLOBAL",1)
        SetGlobal("revelation_ekilis","GLOBAL",1) 
        SetGlobal("ekilis_alliance","GLOBAL",0)
        SetGlobal("ekilis_follow","GLOBAL",0)
        Clearactions("COEKILIS")
        ChangeEnemyAlly("COEKILIS",NEUTRAL)~
    EXIT
END

// Eklis va d'abord s'occuper du Charname
IF ~~ THEN BEGIN 43

  SAY @100  /* ~Votre présence n'était donc pas le fruit du hasard. Très bien, je vais commencer avec toi, chiot de Bhaal. Ensuite j'en terminerai avec toute ta famille!~ */
  IF ~~ THEN 
    DO ~SetGlobal("ekilis_alliance","GLOBAL",0)
        SetGlobal("revelation_ekilis","GLOBAL",1) 
        SetGlobal("ekilis_follow","GLOBAL",0)
        Clearactions("COEKILIS")
        ChangeEnemyAlly("COEKILIS",ENEMY)~
    EXIT
END


// Le groupe entame le dialogue avec Karl *********************************************************************************************************************************
IF ~Global("ekilis_alliance","GLOBAL",1)~ THEN BEGIN 100

  SAY @19 /* ~Que puis-je pour vous?~ */
  IF ~Global("info_eki_systera","GLOBAL",0)~ THEN 
    REPLY @20 /* ~C'est qui cette Systéra?~ */
    DO ~SetGlobal("info_eki_systera","GLOBAL",1)
        SetGlobal("ekilis_follow","GLOBAL",0)~
    GOTO 9

  IF ~Global("info_eki_seul","GLOBAL",0)~ THEN 
    REPLY @21 /* ~Vous êtes venu seul dans le temple?~ */
    DO ~SetGlobal("info_eki_seul","GLOBAL",1)
        SetGlobal("ekilis_follow","GLOBAL",0)~
    GOTO 10

  IF ~Global("info_eki_porte","GLOBAL",0)
      Global("info_eki_porte2","GLOBAL",0)~ THEN 
    REPLY @22 /* ~La porte s'est refermée derrière nous, on est bloqué tout comme vous.~ */
    DO ~SetGlobal("info_eki_porte","GLOBAL",1)
        SetGlobal("ekilis_follow","GLOBAL",0)~
    GOTO 11

  IF ~Global("info_eki_porte","GLOBAL",0)
      Global("info_eki_porte2","GLOBAL",0)
      PartyHasItem("Skelp01")~ THEN 
    REPLY @23 /* ~Autant que vous le sachiez, la porte s'est à nouveau fermée. Mais on a rencontré un fantôme qui est près à nous aider. On doit d'abord enmêner ses restes près d'une grille.~ */
    DO ~SetGlobal("info_eki_porte2","GLOBAL",1)
        SetGlobal("ekilis_follow","GLOBAL",0)~
    GOTO 12

  IF ~Global("info_eki_temple","GLOBAL",0)~ THEN 
    REPLY @24 /* ~Que pouvez-vous nous dire sur le temple?~ */
    DO ~SetGlobal("info_eki_temple","GLOBAL",1)
        SetGlobal("ekilis_follow","GLOBAL",0)~
    GOTO 13

  IF ~Global("info_eki_stase","GLOBAL",1)~ THEN 
    REPLY @25 /* ~Pourquoi étiez-vous en stase?~ */
    DO ~SetGlobal("info_eki_stase","GLOBAL",1)
        SetGlobal("ekilis_follow","GLOBAL",0)~
    GOTO 14
  
  IF ~Global("info_eki_tresor","GLOBAL",0)~ THEN 
    REPLY @36 /* ~Comment vous savez qu'il y a un trésor?~ */
    DO ~SetGlobal("info_eki_tresor","GLOBAL",1)
        SetGlobal("ekilis_follow","GLOBAL",0)~
    GOTO 15
      
  //IF ~IsGabber(PLAYER1)~ THEN
  IF ~~ THEN  
    REPLY @38 /* ~Suivez nous!~ */
    DO ~SetGlobal("ekilis_follow","GLOBAL",0)~
    EXIT

/*  
  IF ~IsGabber(PLAYER2)~ THEN 
    REPLY @38 /* ~Suivez-moi!~ */
    DO ~SetGlobal("ekilis_follow","GLOBAL",2)
        NoAction()
        MoveToObjectFollow(PLAYER2)~
    EXIT
 
   IF ~IsGabber(PLAYER3)~ THEN 
    REPLY @38 /* ~Suivez-moi!~ */
    DO ~SetGlobal("ekilis_follow","GLOBAL",3)
        NoAction()
        MoveToObjectFollow(PLAYER3)~
    EXIT
    
  IF ~IsGabber(PLAYER4)~ THEN 
    REPLY @38 /* ~Suivez-moi!~ */
    DO ~SetGlobal("ekilis_follow","GLOBAL",4)
        NoAction()
        MoveToObjectFollow(PLAYER4)~
    EXIT
    
  IF ~IsGabber(PLAYER5)~ THEN 
    REPLY @38 /* ~Suivez-moi!~ */
    DO ~SetGlobal("ekilis_follow","GLOBAL",5)
        NoAction()
        MoveToObjectFollow(PLAYER5)~
    EXIT
    
  IF ~IsGabber(PLAYER6)~ THEN 
    REPLY @38 /* ~Suivez-moi!~ */
    DO ~SetGlobal("ekilis_follow","GLOBAL",6)
        NoAction()
        MoveToObjectFollow(PLAYER6)~
    EXIT
*/

END





/*
// Massena est mort près du puit
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
