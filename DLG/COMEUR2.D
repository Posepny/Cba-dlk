BEGIN ~COMEUR2~

IF ~Global("meurtre_appa","COM025",1)~ THEN BEGIN 1

  SAY   @1=@2 /*  ~Vous êtes donc parvenu jusqu'ici.~ ~ Sachez que je n'aurai pas misé une pièce sur vous à votre arrivée.~  */ 
  IF ~~ THEN 
    DO ~SetGlobal("meurtre_appa","COM025",2)~
    GOTO 2

END


IF ~~ THEN BEGIN 2

  SAY   @3 /*  ~Contre toutes attentes vous avez triomphé de mes épreuves...~  */ 
  IF ~Global("MEURTRE2_recompense","COM025",0)~ THEN 
            REPLY @4 /* ~Ai-je le droit à une récompense?~  */
            DO ~SetGlobal("MEURTRE2_recompense","COM025",1)
                IncrementGlobal("MEURTRE2_sortie","COM025",1)~
            GOTO  3
           

  IF ~Global("MEURTRE2_qui","COM025",0)~ THEN  
           REPLY @5 /* ~Qui êtes-vous?~  */
           DO ~SetGlobal("MEURTRE2_qui","COM025",1)
               IncrementGlobal("MEURTRE2_sortie","COM025",1)~
           GOTO  4

  IF ~Global("MEURTRE2_survie","COM025",0)~ THEN  
           REPLY @6 /* ~Je ne meurs pas facilement.~  */
           DO ~SetGlobal("MEURTRE2_survie","COM025",1)
               IncrementGlobal("MEURTRE2_sortie","COM025",1)~
           GOTO  5

  IF ~GlobalGT("MEURTRE2_sortie","COM025",1)~ THEN 
           REPLY @7 /* ~Je veux sortir d'ici.~  */
           GOTO  6

END


IF ~~ THEN BEGIN 3

  SAY   @8=@9 /*  ~Oh de ma part, ça ne fait aucun doute.~ ~J'ai décidé de vous laisser la vie.~  */ 
  IF ~~ THEN GOTO 2

END

IF ~~ THEN BEGIN 4

  SAY   @10=@11 /*  ~Avez-vous déjà oublié notre précédente rencontre dans la salle au damier?~ ~Je suis le meurtre.~  */ 
  IF ~~ THEN GOTO 2

END


IF ~~ THEN BEGIN 5

  SAY   @12 /*  ~Effectivement je constate que vous avez un bel instinct de survie.~  */ 
  IF ~~ THEN GOTO 2

END


IF ~~ THEN BEGIN 6

  SAY   @13=@14=@15 /*  ~Oui il est temps pour vous de quittez ces lieux.~ ~ Néanmoins, il me reste une dernière tache à accomplir Sang de Bhaal.~ ~ Préparez-vous à recevoir la récompense du maître.~  */ 
  IF ~~ THEN 
        DO ~SetGlobal("MEURTRE2_recomp_Bhaal","COM025",1)~
        EXIT

END


IF ~Global("MEURTRE2_recomp_Bhaal","COM025",2)~ THEN BEGIN 7

  SAY   @16 /*  ~J'en ai terminé avec vous. Adieu Sang de Bhaal!~  */ 
  IF ~~ THEN 
         DO ~SetGlobal("MEURTRE2_recomp_Bhaal","COM025",3)~
         EXIT

END