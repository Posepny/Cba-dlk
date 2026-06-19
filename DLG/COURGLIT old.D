BEGIN ~COTAGUAR~

CHAIN IF ~Global("TAGUAR_meurt","COM021",1)
          Global("URGLIT_meurt","COM021",0)
          See("COURGLIT")~ THEN ~COTAGUAR~ 8
  @1/* ~Je vais enfin être débarassé de toi...  Arghhhh.~ */
  == ~COURGLIT~ IF ~~ THEN @2/* ~Taguar Nooonnnn!~ */
  == ~COURGLIT~ IF ~~ THEN @3/* ~(Elle vous regarde plein de haine) Tout ça, c'est votre FAUTE. Je vous MAUDIT tous!~ */
END IF ~~ THEN 
            DO ~SetGlobal("TAGUAR_meurt","COM021",2)~
            EXIT



BEGIN ~COURGLIT~

IF ~Global("COURGLIT_init","COM021",0)
    Global("URGLIT_TAGUAR","COM021",0)~ THEN BEGIN 1

  SAY   @4/*  ~Taguar, c'est toi?~  */ 
  IF ~~ THEN REPLY @5 /* ~Euhh, oui c'est moi Taguar.~  */
             DO ~SetGlobal("COURGLIT_init","COM021",1)~
             GOTO  2

  IF ~~ THEN REPLY @6 /* ~Non pas vraiment.~  */
             DO ~SetGlobal("COURGLIT_init","COM021",1)~
             GOTO  3
END

IF ~~ THEN BEGIN 2

  SAY   @7/*  ~Tu es enfin revenu, c'est merveilleux! J'ai gardé ton trésor près de moi tout ce temps. Approches que je t'embrasse!~  */ 
  IF ~~ THEN DO ~SetGlobal("COURGLIT_init","COM021",2)~
             EXIT
END

IF ~~ THEN BEGIN 3

  SAY   @8=@9/*  ~Vous n'essayez pas de mentir comme les autres. C'est intéressant mais je n'ai pas le temps de m'entretenir avec vous.~ ~J'ai trop FROID. Je vais sucer la moindre parcelle de votre chaleur!~  */ 
  IF ~~ THEN DO ~SetGlobal("COURGLIT_init","COM021",3)
                 Enemy()~
             EXIT
END

IF ~Global("COURGLIT_init","COM021",2)~ THEN BEGIN 4

  SAY   @10=@11/*  ~A chaque fois ça marche. Tu n'es pas Taguar!~ ~Rhhaaa, je sens ton corps tout chaud si près de moi!~  */ 
  IF ~~ THEN DO ~SetGlobal("COURGLIT_init","COM021",4)
                 Enemy()~
             EXIT
END

// Urglit vaincue par le feu
IF ~Global("Urglit_dmg_fire","COM021",5)
    Global("URGLIT_TAGUAR","COM021",0)~ THEN BEGIN 5

  SAY   @12=@13/*  ~Toute cette chaleur, c'est trop bon. Je vais pouvoir enfin reposer en paix. Merci.~  */ 
  IF ~~ THEN DO ~Kill("COURGLITE")~  
             EXIT
END

/*
IF ~~ THEN BEGIN 6

  SAY   @21/* ~Soyez tous MAUDITS! Arrggghhh.~ */
  IF ~~ THEN EXIT
END
*/

CHAIN IF ~Global("URGLIT_TAGUAR","COM021",1)~ THEN ~COURGLIT~ 7
  @14/* ~Taguar! C'est bien toi?~ */
  == ~COTAGUAR~ IF ~~ THEN @15/* ~Urglite? Ils ont préféré empoisonner le champion de Bhaal que de l'affronter! Tous des lâches et tout est de ta faute!~ */
  == ~COURGLIT~ IF ~~ THEN @16/* ~Comment oses-tu? Tu préférais la guerre à notre palais. Tu m'as abandonné à tous ces comploteurs!~ */
  == ~COTAGUAR~ IF ~~ THEN @17/* ~Abandonné? Tu en avais jamais assez. Il fallait toujours plus de richesses et de pouvoir! J'ai fait de toi une grande reine!~ */
  == ~COURGLIT~ IF ~~ THEN @18/* ~'TA GRANDE REINE', ils l'ont jeté dans un caveau prétextant que j'étais folle et maudite.~ */
  == ~COURGLIT~ IF ~~ THEN @19/* ~Je suis morte de froid. TU M'AS TUE!~ */
  == ~COTAGUAR~ IF ~~ THEN @20/* ~Sale petite ingrate. Même morte, Tu es là à me tourmenter. J'en est ASSEZ de toi! Je vais te détruire!~ */
END IF ~~ THEN DO ~SetGlobal("URGLIT_TAGUAR","COM021",2)                  
                   ActionOverride("COTAGUAR",ChangeAIScript("COTAGUA3",DEFAULT))
                   ActionOverride("COTAGUAR",Enemy())
                   ActionOverride("COURGLIT",ChangeAIScript("COURGLI2",DEFAULT))
                   ActionOverride("COURGLIT",Enemy())~
               EXIT

CHAIN IF ~Global("URGLIT_meurt","COM021",1)
          Global("TAGUAR_meurt","COM021",0)
          See("COTAGUAR")~ THEN ~COURGLIT~ 8
  @22/* ~(Urglite tend la main vers Taguar) Je voulais juste être avec toi...~ */
  == ~COTAGUAR~ IF ~~ THEN @23/* ~Tu as été mon plus grand fléau. Disparait maintenant!~ */
END IF ~~ THEN
            DO ~SetGlobal("URGLIT_meurt","COM021",2)~
            EXIT