BEGIN ~COCARIS~

// Le charname est sur cette carte
IF ~IsGabber(PLAYER1)
    OpenState("PS2",FALSE)       
    Global("Caris_init","COM021",0)~ THEN BEGIN 1

  SAY   @1 /*  ~Bienvenu parmis les morts, sang de Bhaal.~  */ 
  IF ~~ THEN 
          REPLY @2 /* ~Qui êtes vous?~  */
          DO ~SetGlobal("Caris_init","COM021",1)~
          GOTO  3
END

// Le charname n'est pas sur cette carte
IF ~!IsGabber(PLAYER1)
    OpenState("PS2",FALSE)
    Global("Caris_init","COM021",0)~ THEN BEGIN 2

  SAY  @5 /*  ~Bienvenu parmis les morts, serviteur du sang de Bhaal.~  */ 
  IF ~~ THEN 
          REPLY @6 /* ~Qui êtes vous?~  */
          DO ~SetGlobal("Caris_init","COM021",1)~
          GOTO  3
END

IF ~~ THEN BEGIN 3

  SAY   @3=@4/*  ~Caris, j'étais l'embaumeur personnel du maître.~ ~En ces lieux, je m'assure de trouver une place pour chacun de nos invités. Néanmoins, il existe quatre coffres dans ce niveau réservé aux morts. Trouver les quatres clés et les coffres s'ouvriront sur un objet particulier. Bien placés, ces objets ouvriront un accès vers une autre mort. A mon avis, bien moins plaisante qu'ici. Je vous assure qu'aucuns de nos clients s'est plaint jusqu'à présent! (grand sourire)~  */ 
  IF ~~ THEN 
           DO ~AddJournalEntry(@27,INFO)
               DestroySelf()~
           EXIT
END

IF ~~ THEN BEGIN 5

  SAY @11 /* ~N'ayez pas d'inquiétudes, vous trouverez le vôtre. Nous avons encore pleins de cercueils à vous proposer.~ */
  
   IF ~~ THEN 
           REPLY @12 /* ~Vous avez un drôle d'humour...~  */
           GOTO 6

  IF ~~ THEN 
          REPLY @26 /* ~(Ne rien répondre)~  */
          DO ~DestroySelf()~
          EXIT
END

IF ~~ THEN BEGIN 6

  SAY @15 /*  ~Je suis des plus sérieux. Un meurtre se traite avec le plus grand soin.~  */ 
  IF ~~ THEN 
         DO ~DestroySelf()~
         EXIT
END


// au moins un des coffres est ouvert et la sortie est fermée *******************************************************************************************************************************************************************************
IF ~OpenState("PS2",FALSE)
    Global("Objet_sortie","COM021",0)
    GlobalGT("nb_coffre_ouvert","COM021",0)~ THEN BEGIN 9

  SAY   @18=@16 /*  ~Hey bien, je constate avec grand plaisir qui nous avons à faire à des hôtes de qualité. Vôtre meurtre ne vous à pas encore trouvé.~ ~Soyez un peu patient, nous allons vous trouver un beau meurtre, avec du sang et de la douleur.~  */ 
  IF ~~ THEN 
          EXIT
END


// la sortie est ouverte ********************************************************************************************************************************************************************************************************************
IF ~OpenState("PS2",TRUE)
    Global("Sortie_ouverte","COM021",0)~ THEN BEGIN 13

  SAY   @24 /* ~C'est avec tristesse que je vous allez continuer votre chemin. Armez vous de sagesse, vous en aurez besoin pour vôtre prochaine épreuve. (l'effigie ferme les yeux le sourire aux lèvres)~ */
  IF ~~ THEN 
           DO ~SetGlobal("Sortie_ouverte","COM021",1)~
           GOTO 14
END

IF ~~ THEN BEGIN 14

  SAY   @25 /* ~Ce fût un plaisir de vous voir jouer avec le meurtre. (l'effigie ferme les yeux le sourire aux lèvres)~  */
  IF ~~ THEN 
          DO ~DestroySelf()~
          EXIT  
END


// Ils sont allées à la salle 1: boule de feu **********************************************************************************************************************************************************************************************
IF ~Global("salle_feu","COM021",1)
    Global("Sortie_ouverte","COM021",0)~ THEN BEGIN 15

  SAY   @9 /*  ~Je vois que les cercueils de feu ne vous ont pas plus. Il y en a qui préfèrent rester à même le sol. Personnelement, je pense qu'il est important d'être à son aise pour son trépas éternel.~   */
  IF ~Global("Caris_cerqueil","COM021",0)~ THEN 
          DO ~SetGlobal("salle_feu","COM021",2)~
          GOTO 5
          
  IF ~Global("Caris_cerqueil","COM021",1)~ THEN 
          DO ~SetGlobal("salle_feu","COM021",2)
              DestroySelf()~
          EXIT
END


// Ils sont allées à la salle d'Urglite *****************************************************************************************************************************************************************************************************
IF ~Global("salle_glace","COM021",1)
    Global("Sortie_ouverte","COM021",0)~ THEN BEGIN 16

  SAY   @10 /* ~Je vois que les cercueils d'Urglite ne vous conviennent pas. Un peu trop glacé peut-être?~ */
  IF ~Global("Caris_cerqueil","COM021",0)~ THEN 
          DO ~SetGlobal("salle_glace","COM021",2)~
          GOTO 5
          
  IF ~Global("Caris_cerqueil","COM021",1)~ THEN 
          DO ~SetGlobal("salle_glace","COM021",2)
              DestroySelf()~
          EXIT
END