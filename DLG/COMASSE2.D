BEGIN ~COMASSE2~

// Le groupe est arrivé devant la grille et Ekilis n'est pas présent. Le fantôme se matérialise.****************************************************************
IF ~Global("Massena_sarcophage_demande","Global",1)~ THEN BEGIN 0

  SAY @1 /* ~Excellent, Vous êtes parvenu jusqu'ici! ~  */
  IF ~~ THEN 
    GOTO 3
    
END

// Le groupe est arrivé devant la grille et Ekilis est présent. Il est au courant pour le fantôme. Le fantôme se matérialise. *********************************
IF ~Global("ekilis_mort_demande","Global",1)~ THEN BEGIN 1

  SAY @3 /* ~Votre nouveau compagnon est un serviteur de Cyric! Tuez-le où vous moisirez tous ici!~ */
  IF ~~ THEN 
    DO ~SetGlobal("ekilis_deactivate","Global",1)
    SetGlobal("ekilis_mort_demande","Global",2)    
    AddJournalEntry(@66,QUEST)~
    EXIT
    //EXTERN ~COEKILIS~ 16
END

// COM015 - Ekilis a été tué à la demande de Massena *******************************************************************************************************************
IF ~Global("ekilis_mort_demande","Global",3)
    !Contains("SKELP01","Sarco1")~ THEN BEGIN 2

  SAY @4 /* ~Bien, un fidèle de Cyric n'a rien à faire dans ce temple!~ */
  
  // Massena n'a pas encore donné la mission du sarcophage
  IF ~Global("Massena_sarcophage_demande","Global",0)~ THEN 
    DO ~SetGlobal("ekilis_mort_demande","Global",4)~
    GOTO 3    
   
  // Massena a donné la mission du sarcophage
  IF ~Global("Massena_sarcophage_demande","Global",1)~ THEN 
    DO ~SetGlobal("ekilis_mort_demande","Global",4)
    AddJournalEntry(@67,QUEST)~    
    EXIT    

END

// COM015 - Massena: mission sarcophage **********************************************************************************************************************************
IF ~~ THEN BEGIN 3

  SAY @2=@6 /* ~~Approchez du double-mur et ouvrez le passage secret. A l'intérieur, il y a un sarcophage.~  ~Vous placerez mes restes dans ce sacrophage.~ */
  IF ~~ THEN 
    REPLY @7 /* ~Et si je ne veux pas.~ */
    DO ~SetGlobal("Massena_sarcophage_demande","Global",2)
    SetGlobal("Massena_sarcophage","Global",1)
    AddJournalEntry(@65,QUEST)~
    GOTO 4

  IF ~~ THEN 
    REPLY @8 /* ~Je veux savoir comment sortir d'ici avant.~ */
    DO ~SetGlobal("Massena_sarcophage_demande","Global",2)
    SetGlobal("Massena_sarcophage","Global",1)
    AddJournalEntry(@65,QUEST)~
    GOTO 5

  IF ~~ THEN 
    REPLY @9 /* ~(ne rien répondre)~ */
    DO ~SetGlobal("Massena_sarcophage_demande","Global",2)
    SetGlobal("Massena_sarcophage","Global",1)
    AddJournalEntry(@65,QUEST)~
    EXIT

END

IF ~~ THEN BEGIN 4

  SAY @10 /* ~Libre à vous de refuser et de rester coincé dans ce temple jusqu'à votre mort. ~ */
  IF ~~ THEN 
    DO ~SetGlobal("ekilis_deactivate","Global",1)~
    EXIT

END

IF ~~ THEN BEGIN 5

  SAY @11 /* ~Vous le saurez une fois que mes restes seront dans le sarcophage.~ */
  IF ~~ THEN 
    DO ~SetGlobal("ekilis_deactivate","Global",1)~
    EXIT

END

// COM016 - Si les restes sont placés dans le sarcophage et pas d'alliance avec Ekilis ************************************************************************************
IF ~Contains("SKELP01","Sarco1")
    Global("ekilis_alliance","Global",0)~ THEN BEGIN 6

  SAY @12=@13=@14 /* ~Je vois que vous avez tenu parôle. A moi de tenir la mienne.~ ~Pour ouvrir les portes du temple, il faut placer le crâne de Kept au centre de la salle des prières qui est au niveau inférieur. ~ ~A ce moment là, les pièges de ce niveau seront désactivés et la porte s'ouvrira.~  */

  IF ~~ THEN 
    REPLY @15 /* ~Excellent. Il est où est ce crâne?~ */
    DO ~SetGlobal("Massena_sarcophage","Global",2)
    ActionOverride("Sarco1",DestroyItem("SKELP01"))
    ActionOverride(LastTalkedToBy(Myself),CreateItem("COKEY01",0,0,0))~
    GOTO 7    
END

IF ~~ THEN BEGIN 7

  SAY @16 /* ~Systéra, la gardienne du temple, en était responsable. Son cadavre traine quelque part dans le temple. Trouvez-le et vous trouverez le crâne.~ */
  IF ~~ THEN 
    REPLY @17 /* ~(ne rien répondre)~ */
    //DO ~AddJournalEntry(@71,QUEST)~
    GOTO 12

  IF ~~ THEN 
    REPLY @18 /* ~Qu'est ce qui s'est passé dans ce temple, il y a des morts partout.~ */
    DO ~SetGlobal("hist_temple","COM016",1)~
    //DO ~AddJournalEntry(@71,QUEST)~
    GOTO 8
END

IF ~~ THEN BEGIN 8

  SAY @19=@20=@21 /* ~Systéra nous a ordonné de garder la foi et de préparer le retour de Bhaal. Certains d'entre nous ne l'on pas écouté et on préfèré Cyric...~ ~Ses fidèles ont attaqué le temple secret. Mais Systèra les attendait! Elle les a laissé entrer puis elle a scellé la porte.~ ~Le temple de Bhaal est devenu leur tombeau! (sourire sadique)~  */
  IF ~~ THEN 
    REPLY @22 /* ~A quoi servait ce temple?~ */
    //DO ~AddJournalEntry(@69,QUEST)~
    GOTO 9

  IF ~~ THEN 
    REPLY @23 /* ~(ne rien dire)~ */
    //DO ~AddJournalEntry(@69,QUEST)~
    GOTO 12
END

IF ~~ THEN BEGIN 9

  SAY @24 /* ~Ne soyez pas trop curieux... Trouvez le crâne et quittez ce temple au plus vite.~ */
  IF ~~ THEN 
      DO ~SetGlobal("hist_curieux","COM016",1)~
    //DO ~AddJournalEntry(@70,QUEST)~
    GOTO 12

END

// Les restes de Massena sont placés dans le sarcophage et Ekilis est allié + en vie: Mort fatale ************************************************************************************
IF ~Contains("SKELP01","Sarco1")
    Global("ekilis_alliance","Global",1)
    Global("ekilis_mort","Global",0)
    Global("MF_temple_bhaal","GLOBAL",0)~ THEN BEGIN 10

  SAY @25=@26 /* ~Vous avez fait un mauvaix choix. Les fidèles de Cyric n'ont pas leur place ici. (sourire)~ ~Bhaal, LE SEIGNEUR DU MEURTRE, vous salue TOUS!~ */

  IF ~~ THEN 
    DO ~SetGlobal("Massena_sarcophage","Global",2)
    SetGlobal("MF_temple_bhaal","GLOBAL",1)
    SetGlobal("ekilis_deactivate","Global",1)~
    EXIT
    
END

// COM016 - Si les restes sont placés dans le sarcophage et Ekilis est mort ************************************************************************************
IF ~Global("ekilis_mort","Global",1)
    Contains("SKELP01","Sarco1")~ THEN BEGIN 11

  SAY @12=@13=@14 /* ~Je vois que vous avez tenu parôle. A moi de tenir la mienne.~ ~Pour ouvrir les portes du temple, il faut placer le crâne de Kept au centre de la salle des prières qui est au niveau inférieur. ~ ~A ce moment là, les pièges de ce niveau seront désactivés et la porte s'ouvrira.~  */

  IF ~~ THEN 
    REPLY @15 /* ~Excellent. Il est où est ce crâne?~ */
    DO ~SetGlobal("Massena_sarcophage","Global",2)
    ActionOverride("Sarco1",DestroyItem("SKELP01"))
    ActionOverride(LastTalkedToBy(Myself),CreateItem("COKEY01",0,0,0))~
    GOTO 7    
END

IF  ~~ THEN BEGIN 12
  SAY @27 /* ~Adieu étranger(s)~ */
  
  IF ~~ THEN
   DO ~SetGlobal("ekilis_deactivate","Global",1)~
   EXIT
    
END
