BEGIN ~COMASSE1~


IF ~Global("MASSANE1_INIT","GLOBAL",0)~ THEN BEGIN 0
  SAY @1 /* ~Les portes étant scellées, Celà fait bien longtemps que je n'avais pas vu âme qui vive...~ */

  IF ~~ THEN 
    REPLY @2 /* ~Qui êtes-vous?~ */
    DO ~SetGlobal("MASSANE1_INIT","GLOBAL",1)~
    GOTO 1

END

IF ~~ THEN BEGIN 1
  SAY @6=@7 /* ~Excellente question. Hummm comment y répondre.~ ~J'étais Massena, serviteur de Bhaal avant sa chûte et aujourd'hui, je suis une âme errante qui n'a pas encore sombré dans la folie.~ */

    IF ~~ THEN 
    GOTO 9

END

IF ~~ THEN BEGIN 2
  SAY @11 /* ~Comme toutes les âmes errantes qui rôdent en ces lieux. Libre à vous d'attendre vôtre mort ou d'aller au devant d'elle.~ */

  IF ~~ THEN 
    GOTO 9
END

IF ~~ THEN BEGIN 3
  SAY @12 /* ~Que vous soyez entré(e)s est une énigme pour moi. Mais la porte est à nouveau fermée et la mort vous attend.~ */

  IF ~~ THEN 
    GOTO 9
END

IF ~~ THEN BEGIN 4
  SAY @13=@14=@15 /* ~Ohh il existe toujours un moyen mais pas toujours celui qu'on espère.~ ~Prenez mes os et trouvez le moyen de passer la grande herse. Ensuite, vous arrivez sur une grille circulaire au sol.~ ~Si vous survivez jusque là, je vous aiderai peut-être ou peut-être pas. Je n'ai pas encore décidé en fait. Mais on dirait bien que je suis votre seul espoir de survie. Je vous souhaite une belle promenade dans le temple de mon défunt maître.~  */

  IF ~~ THEN 
    REPLY @16 /* ~J'ai autre chose à faire que de me balader avec vos restes!~ */
    GOTO 5
    
  IF ~~ THEN
    REPLY @18 /* ~Allons y!~ */ 
    DO ~Deactivate(MYSELF)
        SetGlobal("MASSANE1_INIT","GLOBAL",2)
        SetGlobal("temple_sortir","GLOBAL",1)
        AddJournalEntry(@23,QUEST)
        AddJournalEntry(@24,QUEST)~
    EXIT
END

IF ~~ THEN BEGIN 5
  SAY @17 /* ~Pas de soucis, j'ai tout mon temps. Vous par contre le vôtre est compté.~ */

  IF ~~ THEN 
    DO ~Deactivate(MYSELF)
        SetGlobal("MASSANE1_INIT","GLOBAL",2)
        SetGlobal("temple_sortir","GLOBAL",1)
        AddJournalEntry(@23,QUEST)
        AddJournalEntry(@24,QUEST)~
    EXIT
END

IF ~~ THEN BEGIN 6
  SAY @18 /* ~Allons y!~ */

  IF ~~ THEN 
    EXIT
END

IF ~~ THEN BEGIN 7
  SAY @19 /* ~Vous êtes un étranger et par conséquent vous n'avez pas à le savoir.~ */

  IF ~~ THEN 
    GOTO 9
END

IF ~~ THEN BEGIN 8
  SAY @20=@21 /* ~Un enfant de Bhaal! Rien de moins! Mon maître en train de forniquer avec des mortels, en voilà une idée. ~ ~Bien essayé mais il va falloir trouver autre chose.~  */
  
  IF ~~ THEN 
    GOTO 9
END

IF ~~ THEN BEGIN 9
  SAY @22/* ~N'ayez pas d'inquiétudes, ce temple vous accompagnera dans vôtre dernier voyage.~  */
 
  IF ~Global("MASSANE1_rep1","GLOBAL",0)~ THEN 
    REPLY @9 /* ~Je n'ai pas l'intention de mourir ici fantôme!~ */
    DO ~SetGlobal("MASSANE1_rep1","GLOBAL",1)
    IncrementGlobal("Massena_rep","GLOBAL",1)~
    GOTO 2

  IF ~Global("MASSANE1_rep2","GLOBAL",0)~ THEN 
    REPLY @10 /* ~Scellées? Je suis entré il me semble.~ */
    DO ~SetGlobal("MASSANE1_rep2","GLOBAL",1)
    IncrementGlobal("Massena_rep","GLOBAL",1)~
    GOTO 3
    
  IF ~Global("MASSANE1_rep3","GLOBAL",0)~ THEN 
    REPLY @4 /* ~A quoi sert ce temple?~ */
    DO ~SetGlobal("MASSANE1_rep3","GLOBAL",1)
    IncrementGlobal("Massena_rep","GLOBAL",1)~
    GOTO 7

  IF ~Global("MASSANE1_rep4","GLOBAL",0)
      IsGabber(PLAYER1)~ THEN  
    REPLY @5 /* ~Je suis <CHARNAME> et mon père est Bhaal. Ce qui fait de toi mon serviteur!~ */
    DO ~SetGlobal("MASSANE1_rep4","GLOBAL",1)
    IncrementGlobal("Massena_rep","GLOBAL",1)~
    GOTO 8
    
    IF ~Global("MASSANE1_rep5","GLOBAL",0)
       GlobalGT("Massena_rep","GLOBAL",1)~ THEN 
    REPLY @3 /* ~Il y a bien un moyen de sortir d'ici!~ */
    DO ~SetGlobal("MASSANE1_rep5","GLOBAL",1)~
    GOTO 4
END