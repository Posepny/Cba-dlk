BEGIN ~COBARNI~

IF ~Global("Barni_quete","GLOBAL",0)
    IsGabber(PLAYER1)~ THEN BEGIN 0
  SAY   @1=@2=@3 /* ~Bonjour Protecteur, merci à vous de m'accorder un peu de votre temps. Voilà ce qui me tracasse.~ ~Je viens d'hériter de cette auberge. Dans la cave, il y a une trappe avec une échelle que j'ai ouvert avec la clé de mon défunt père. En dessous, j'ai découvert qu'il y avait des cellules et une galerie derrière un mur effondré. J'avoue ne pas avoir osé aller au de là.~ */

  IF ~~ THEN 
         REPLY @4 /* ~Vous faites bien l'ordre et la justice doit régner à Baldur. Je vais tirer cette affaire au clair.~ */
         GOTO  1
  
  IF ~~ THEN 
         REPLY @5 /* ~Effectivement tout celà m'a l'air louche ou pour le moins mystérieux. Je vais jeter un oeil à cette galerie.~ */
         GOTO  1
		 
  IF ~~ THEN 
         REPLY @13 /* ~Je n'ai pas le temps pour cette affaire en ce moment.~ */
         GOTO  5

END

IF ~~ THEN BEGIN 1
  SAY   @6 /*  ~Merci à vous de me rendre ce service Protecteur, je sais que vous êtes très occupé. Voici la clé de la trappe.~  */ 
  
  IF ~~ THEN
          DO ~SetGlobal("Barni_quete","GLOBAL",1)
		      EraseJournalEntry(@103)
              AddJournalEntry(@100,QUEST)
              GiveItem("Miscp61",PLAYER1)~
          EXIT
END

IF ~Global("Barni_quete","GLOBAL",1)~ THEN BEGIN 2
  SAY   @7 /*  ~Avez-vous visité la galerie?~  */ 
  
  IF ~Global("Crane_place","GLOBAL",0)~ THEN
         REPLY @8 /* ~Je reviendrai vers vous dès que ce sera fait.~ */
         EXIT
           
  IF ~Global("Crane_place","GLOBAL",1)~ THEN
         REPLY @9 /* ~Le lieu est effectivement malsain. Je vous invite à sceller la trappe par un mage.~ */
         GOTO 3
   
  IF ~Global("Crane_place","GLOBAL",1)~ THEN
         REPLY @10 /* ~Le lieu est effectivement malsain, je vais garder la clé. Je m'assurerai régulièrement que tout va bien.~ */
         GOTO 4        
END

IF ~~ THEN BEGIN 3
  SAY   @11 /*  ~Vous avez raison, je vais suivre votre conseil. Merci pour votre aide Protecteur.~  */ 
  
  IF ~~ THEN
         DO ~SetGlobal("Barni_quete","GLOBAL",2)~
         EXIT         
END

IF ~~ THEN BEGIN 4
  SAY   @12 /*  ~Vous feriez ça pour moi. Je me sens mieux maintenant. Merci pour votre aide Protecteur.~  */ 
  
  IF ~~ THEN
         DO ~EraseJournalEntry(@100)
		     EraseJournalEntry(@103)
             AddJournalEntry(@102,QUEST_DONE) 
             AddexperienceParty(6000)
             SetGlobal("Barni_quete","GLOBAL",3)~
         EXIT         
END

IF ~~ THEN BEGIN 5
  SAY   @14 /*  ~Je suis désolé mais cette cave me fait peur...~  */ 
  
  IF ~~ THEN
         REPLY @15 /* ~Je reviendrai plus tard m'occuper de votre problème.~ */

         DO ~AddJournalEntry(@103,INFO)
             SetGlobal("Barni_quete","GLOBAL",4)~
         EXIT         
END 

IF ~Global("Barni_quete","GLOBAL",4)~ THEN BEGIN 6
  SAY   @21 /*  ~Vous êtes revenu pour la cave? (plein d'espoir)~  */ 
  
  IF ~~ THEN
         REPLY @16 /* ~Non, j'ai besoin de vos services.~ */
         DO ~StartStore("COBARNI",LastTalkedToBy(Myself))~
         EXIT  

  IF ~~ THEN
         REPLY @17 /* ~Oui, je vais explorer les lieux.~ */	
         GOTO 1		 
END 

// Quête terminée
IF ~GlobalGT("Barni_quete","GLOBAL",2)~ THEN BEGIN 6
  SAY   @18 /*  ~Vous avez besoin de mes services?~  */ 
  
  IF ~~ THEN
         REPLY @19 /* ~Oui, montrez-moi.~ */
         DO ~StartStore("COBARNI",LastTalkedToBy(Myself))~
         EXIT  

  IF ~~ THEN
         REPLY @20 /* ~Non, je ne fais que passer.~ */	
         EXIT		 
END 


