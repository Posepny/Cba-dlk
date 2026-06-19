BEGIN ~COKAEL~


// Rencontre
IF ~Global("Kael_vaincu","COM022",0)
    IsGabber(PLAYER1)
    Global("KAEL_rencontre_P1","COM022",0)~ THEN BEGIN 1
     SAY @1=@2 /* ~(L'homme vous regarde droit dans les yeux) C'est un honneur pour moi de recevoir un sang de Bhaal dans ma demeure.~ ~ Saviez-vous que je suis celui qui a conçu ces lieux et les larmes de sang?~ */
     IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @3  /* ~Tout ceci est une longue histoire.~ */ 
  IF ~~ THEN REPLY @4 /* ~Tu parles trop! Qu'on en finisse!~ */
          DO ~SetGlobal("KAEL_rencontre_P1","COM022",1)
              SetGlobal("KAEL_rencontre","COM022",2)~
          GOTO 3

  IF ~Global("KAEL_larmes","COM022",0)~ THEN REPLY @5 /* ~A quoi servent les larmes de sang?~ */
          DO ~SetGlobal("KAEL_rencontre_P1","COM022",1)
              SetGlobal("KAEL_rencontre","COM022",2)
              SetGlobal("KAEL_larmes","COM022",1)~
          GOTO 4

  IF ~Global("KAEL_nom","COM022",0)~ THEN REPLY @7 /* ~Quel est vôtre nom?~ */
          DO ~SetGlobal("KAEL_rencontre_P1","COM022",1)
              SetGlobal("KAEL_rencontre","COM022",2)
              SetGlobal("KAEL_nom","COM022",1)~
          GOTO 5

  IF ~Global("KAEL_ici","COM022",0)~ THEN REPLY @8 /* ~Que faites vous ici?~ */
          DO ~SetGlobal("KAEL_rencontre_P1","COM022",1)
              SetGlobal("KAEL_rencontre","COM022",2)
              SetGlobal("KAEL_ici","COM022",1)~
          GOTO 8
END

IF ~~ THEN BEGIN 3
  SAY @9 /* ~(vexé) Bien dans ce cas, je vais vous exposer ce qui vous amène ici.~ */ 
  IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 4
  SAY  @10 /*  ~Vous en ferez usage bientôt si vous êtes doués de raison. Croire que vous pourriez vaincre sans serait pure folie.~  */ 
  IF ~~ THEN GOTO 2  
END

IF ~~ THEN BEGIN 5
  SAY @12 /*  ~Mon nom m'a été retiré lorsque je suis tombé en disgrâce à cause ce Cespenar. Depuis ma mission est claire. Moisir ici pour l'éternité...~  */ 
  
  IF ~~ THEN 
    REPLY @6 /* ~Qui est ce Cespernar?~ */
    GOTO 6
  
  IF ~~ THEN 
    REPLY @32 /* ~(Ne rien répondre) ~ */
    GOTO 2
END

IF ~~ THEN BEGIN 6
  SAY @11 /*  ~C'est un misérable avorton avec des ailes. Il a gagné ma confiance pour prendre ma place auprès du maître.~  */ 
  
  IF ~PartyHasItem("BOKP11")~ THEN 
    REPLY @30 /* ~Vous êtiez Kael le maître artefact de Bhaal, je l'ai lu dans un livre.~ */
    DO ~SetGlobal("KAEL_reconnu","COM022",1)~
    GOTO 7
 
  IF ~~ THEN 
    REPLY @32 /* ~(Ne rien répondre) ~ */
    GOTO 2   
END

IF ~~ THEN BEGIN 7
  SAY @31 /* ~(sourire) Mon passé ne m'appartient plus. Parlons de vôtre avenir.~  */ 
  IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 8
  SAY @13 /* ~(vexé) Bien dans ce cas, je vais vous exposer ce qui vous amène ici.~ */ 
  IF ~~ THEN GOTO 2
END


// Un membre du groupe rencontre Kael ***************************************************************************************************************************************************
IF ~Global("Kael_vaincu","COM022",0)
    !IsGabber(PLAYER1)~ THEN BEGIN 16

  SAY @34 /* ~Seul le sang de Bhaal est digne de mon intérêt.~  */ 
  IF ~~ THEN     
      EXIT
END

// Proposition de fabriquer un équipement pour le Charname ******************************************************************************************************************************
IF ~~ THEN BEGIN 17

  SAY   @200=@201=@202=@203   /* ~L'ultime combat approche, sang de Bhaal.~ ~A partir des objets que vous avez dû trouvé, je peux fabriquer un puissant artéfact de combat.~ ~J'ai besoin du pavois gardé par le golem d'os, du coeur du démon, du fléau de Taguar, de la coupe de sang d'Islendra et enfin du casque du spectateur.~ ~Puis je voir votre équipement?~ */
  IF ~~ THEN 
       REPLY @204 /* ~Faites.~ */
       DO ~SetGlobal("KAEL_quete_artefact","COM022",1)
           SetGlobal("KAEL_artefact_creation","COM022",1)~
       GOTO 18

  IF ~~ THEN 
       REPLY @238 /* ~Je n'ai pas besoin ton artefact vieillard.~ */
       GOTO 51 
END

IF ~~ THEN BEGIN 18
  SAY  @205 /* ~Voyons si vous avez ces objets. (Kael se met à fouiller dans votre équipement)~ */

//@206 /* ~Il manque le pavois gardé par le golem d'os.~ */
  IF ~!HasItem("SHLP12",LastTalkedToBy(MySelf))
      HasItem("MISC6M",LastTalkedToBy(MySelf))
      HasItem("BLUP03",LastTalkedToBy(MySelf))
      HasItem("MISCP63",LastTalkedToBy(MySelf))
      HasItem("HELP01",LastTalkedToBy(MySelf))~ THEN GOTO 206

//@207 /* ~Il manque le coeur du démon.~ */
  IF ~HasItem("SHLP12",LastTalkedToBy(MySelf))
      !HasItem("MISC6M",LastTalkedToBy(MySelf))
      HasItem("BLUP03",LastTalkedToBy(MySelf))
      HasItem("MISCP63",LastTalkedToBy(MySelf))
      HasItem("HELP01",LastTalkedToBy(MySelf))~ THEN GOTO 207
   
//@208 /* ~Il manque le fléau de Taguar.~ */
  IF ~HasItem("SHLP12",LastTalkedToBy(MySelf))
      HasItem("MISC6M",LastTalkedToBy(MySelf))
      !HasItem("BLUP03",LastTalkedToBy(MySelf))
      HasItem("MISCP63",LastTalkedToBy(MySelf))
      HasItem("HELP01",LastTalkedToBy(MySelf))~ THEN GOTO 208

//@209 /* ~Il manque la coupe de sang d'Islendra.~ */
  IF ~HasItem("SHLP12",LastTalkedToBy(MySelf))
      HasItem("MISC6M",LastTalkedToBy(MySelf))
      HasItem("BLUP03",LastTalkedToBy(MySelf))
      !HasItem("MISCP63",LastTalkedToBy(MySelf))
      HasItem("HELP01",LastTalkedToBy(MySelf))~ THEN GOTO 209

//@210 /* ~Il manque le casque du spectateur.~ */
  IF ~HasItem("SHLP12",LastTalkedToBy(MySelf))
      HasItem("MISC6M",LastTalkedToBy(MySelf))
      HasItem("BLUP03",LastTalkedToBy(MySelf))
      HasItem("MISCP63",LastTalkedToBy(MySelf))
      !HasItem("HELP01",LastTalkedToBy(MySelf))~ THEN GOTO 210

//@211 /* ~IL manque le pavois gardé par le golem d'os et le coeur du démon.~ */
  IF ~!HasItem("SHLP12",LastTalkedToBy(MySelf))
      !HasItem("MISC6M",LastTalkedToBy(MySelf))
      HasItem("BLUP03",LastTalkedToBy(MySelf))
      HasItem("MISCP63",LastTalkedToBy(MySelf))
      HasItem("HELP01",LastTalkedToBy(MySelf))~ THEN GOTO 211

//@212 /* ~IL manque le pavois gardé par le golem d'os et le fléau de Taguar.~ */
  IF ~!HasItem("SHLP12",LastTalkedToBy(MySelf))
      HasItem("MISC6M",LastTalkedToBy(MySelf))
      !HasItem("BLUP03",LastTalkedToBy(MySelf))
      HasItem("MISCP63",LastTalkedToBy(MySelf))
      HasItem("HELP01",LastTalkedToBy(MySelf))~ THEN GOTO 212

//@213 /* ~IL manque le pavois gardé par le golem d'os et la coupe de sang d'Islendra.~ */
  IF ~!HasItem("SHLP12",LastTalkedToBy(MySelf))
      HasItem("MISC6M",LastTalkedToBy(MySelf))
      HasItem("BLUP03",LastTalkedToBy(MySelf))
      !HasItem("MISCP63",LastTalkedToBy(MySelf))
      HasItem("HELP01",LastTalkedToBy(MySelf))~ THEN GOTO 213

//@214 /* ~IL manque le pavois gardé par le golem d'os et le casque du spectateur.~ */
  IF ~!HasItem("SHLP12",LastTalkedToBy(MySelf))
      HasItem("MISC6M",LastTalkedToBy(MySelf))
      HasItem("BLUP03",LastTalkedToBy(MySelf))
      HasItem("MISCP63",LastTalkedToBy(MySelf))
      !HasItem("HELP01",LastTalkedToBy(MySelf))~ THEN GOTO 214

//@215 /* ~IL manque le coeur du démon et le fléau de Taguar.~ */ 
  IF ~HasItem("SHLP12",LastTalkedToBy(MySelf))
      !HasItem("MISC6M",LastTalkedToBy(MySelf))
      !HasItem("BLUP03",LastTalkedToBy(MySelf))
      HasItem("MISCP63",LastTalkedToBy(MySelf))
      HasItem("HELP01",LastTalkedToBy(MySelf))~ THEN GOTO 215

//@216 /* ~IL manque le coeur du démon et la coupe de sang d'Islendra.~ */
  IF ~HasItem("SHLP12",LastTalkedToBy(MySelf))
      !HasItem("MISC6M",LastTalkedToBy(MySelf))
      HasItem("BLUP03",LastTalkedToBy(MySelf))
      !HasItem("MISCP63",LastTalkedToBy(MySelf))
      HasItem("HELP01",LastTalkedToBy(MySelf))~ THEN GOTO 216

//@217 /* ~IL manque le coeur du démon et le casque du spectateur.~ */
  IF ~HasItem("SHLP12",LastTalkedToBy(MySelf))
      !HasItem("MISC6M",LastTalkedToBy(MySelf))
      HasItem("BLUP03",LastTalkedToBy(MySelf))
      HasItem("MISCP63",LastTalkedToBy(MySelf))
      !HasItem("HELP01",LastTalkedToBy(MySelf))~ THEN GOTO 217

//@218 /* ~IL manque le fléau de Taguar et la coupe de sang d'Islendra.~ */
  IF ~HasItem("SHLP12",LastTalkedToBy(MySelf))
      HasItem("MISC6M",LastTalkedToBy(MySelf))
      !HasItem("BLUP03",LastTalkedToBy(MySelf))
      !HasItem("MISCP63",LastTalkedToBy(MySelf))
      HasItem("HELP01",LastTalkedToBy(MySelf))~ THEN GOTO 218

//@219 /* ~IL manque le fléau de Taguar et le casque du spectateur.~ */
  IF ~HasItem("SHLP12",LastTalkedToBy(MySelf))
      HasItem("MISC6M",LastTalkedToBy(MySelf))
      !HasItem("BLUP03",LastTalkedToBy(MySelf))
      HasItem("MISCP63",LastTalkedToBy(MySelf))
      !HasItem("HELP01",LastTalkedToBy(MySelf))~ THEN GOTO 219

//@220=/* ~IL manque la coupe de sang d'Islendra et le casque du spectateur.~ */
  IF ~HasItem("SHLP12",LastTalkedToBy(MySelf))
      HasItem("MISC6M",LastTalkedToBy(MySelf))
      HasItem("BLUP03",LastTalkedToBy(MySelf))
      !HasItem("MISCP63",LastTalkedToBy(MySelf))
      !HasItem("HELP01",LastTalkedToBy(MySelf))~ THEN GOTO 220

//@221 /* ~IL manque le pavois gardé par le golem d'os, le coeur du démon et le fléau de Taguar.~ */
  IF ~!HasItem("SHLP12",LastTalkedToBy(MySelf))
      !HasItem("MISC6M",LastTalkedToBy(MySelf))
      !HasItem("BLUP03",LastTalkedToBy(MySelf))
      HasItem("MISCP63",LastTalkedToBy(MySelf))
      HasItem("HELP01",LastTalkedToBy(MySelf))~ THEN GOTO 221

//@222 /* ~IL manque le pavois gardé par le golem d'os, le coeur du démon et la coupe de sang d'Islendra.~ */
  IF ~!HasItem("SHLP12",LastTalkedToBy(MySelf))
      !HasItem("MISC6M",LastTalkedToBy(MySelf))
      HasItem("BLUP03",LastTalkedToBy(MySelf))
      !HasItem("MISCP63",LastTalkedToBy(MySelf))
      HasItem("HELP01",LastTalkedToBy(MySelf))~ THEN GOTO 222

//@223 /* ~IL manque le pavois gardé par le golem d'os, le coeur du démon et le casque du spectateur.~ */
  IF ~!HasItem("SHLP12",LastTalkedToBy(MySelf))
      !HasItem("MISC6M",LastTalkedToBy(MySelf))
      HasItem("BLUP03",LastTalkedToBy(MySelf))
      HasItem("MISCP63",LastTalkedToBy(MySelf))
      !HasItem("HELP01",LastTalkedToBy(MySelf))~ THEN GOTO 223

//@224 /* ~IL manque le pavois gardé par le golem d'os, le fléau de Taguar et la coupe de sang d'Islendra.~ */
  IF ~!HasItem("SHLP12",LastTalkedToBy(MySelf))
      HasItem("MISC6M",LastTalkedToBy(MySelf))
      !HasItem("BLUP03",LastTalkedToBy(MySelf))
      !HasItem("MISCP63",LastTalkedToBy(MySelf))
      HasItem("HELP01",LastTalkedToBy(MySelf))~ THEN GOTO 224

//@225 /* ~IL manque le pavois gardé par le golem d'os, le fléau de Taguar et le casque du spectateur.~ */
  IF ~!HasItem("SHLP12",LastTalkedToBy(MySelf))
      HasItem("MISC6M",LastTalkedToBy(MySelf))
      !HasItem("BLUP03",LastTalkedToBy(MySelf))
      HasItem("MISCP63",LastTalkedToBy(MySelf))
      !HasItem("HELP01",LastTalkedToBy(MySelf))~ THEN GOTO 225

//@226 /* ~IL manque le pavois gardé par le golem d'os, la coupe de sang d'Islendra et le casque du spectateur.~ */
  IF ~!HasItem("SHLP12",LastTalkedToBy(MySelf))
      HasItem("MISC6M",LastTalkedToBy(MySelf))
      HasItem("BLUP03",LastTalkedToBy(MySelf))
      !HasItem("MISCP63",LastTalkedToBy(MySelf))
      !HasItem("HELP01",LastTalkedToBy(MySelf))~ THEN GOTO 226

//@227 /* ~IL manque le coeur du démon, le fléau de Taguar, la coupe de sang d'Islendra.~ */
  IF ~HasItem("SHLP12",LastTalkedToBy(MySelf))
      !HasItem("MISC6M",LastTalkedToBy(MySelf))
      !HasItem("BLUP03",LastTalkedToBy(MySelf))
      !HasItem("MISCP63",LastTalkedToBy(MySelf))
      HasItem("HELP01",LastTalkedToBy(MySelf))~ THEN GOTO 227

//@228 /* ~IL manque le coeur du démon, le fléau de Taguar, le casque du spectateur.~ */
  IF ~HasItem("SHLP12",LastTalkedToBy(MySelf))
      !HasItem("MISC6M",LastTalkedToBy(MySelf))
      !HasItem("BLUP03",LastTalkedToBy(MySelf))
      HasItem("MISCP63",LastTalkedToBy(MySelf))
      !HasItem("HELP01",LastTalkedToBy(MySelf))~ THEN GOTO 228

//@229 /* ~IL manque le coeur du démon, la coupe de sang d'Islendra et le casque du spectateur.~ */
  IF ~HasItem("SHLP12",LastTalkedToBy(MySelf))
      !HasItem("MISC6M",LastTalkedToBy(MySelf))
      HasItem("BLUP03",LastTalkedToBy(MySelf))
      !HasItem("MISCP63",LastTalkedToBy(MySelf))
      !HasItem("HELP01",LastTalkedToBy(MySelf))~ THEN GOTO 229

//@230 /* ~Il manque le fléau de Taguar, la coupe de sang d'Islendra et le casque du spectateur.~ */
  IF ~HasItem("SHLP12",LastTalkedToBy(MySelf))
      HasItem("MISC6M",LastTalkedToBy(MySelf))
      !HasItem("BLUP03",LastTalkedToBy(MySelf))
      !HasItem("MISCP63",LastTalkedToBy(MySelf))
      !HasItem("HELP01",LastTalkedToBy(MySelf))~ THEN GOTO 230

//@231 /* ~IL manque le pavois gardé par le golem d'os, le coeur du démon, le fléau de Taguar et la coupe de sang d'Islendra.~ */
  IF ~!HasItem("SHLP12",LastTalkedToBy(MySelf))
      !HasItem("MISC6M",LastTalkedToBy(MySelf))
      !HasItem("BLUP03",LastTalkedToBy(MySelf))
      !HasItem("MISCP63",LastTalkedToBy(MySelf))
      HasItem("HELP01",LastTalkedToBy(MySelf))~ THEN GOTO 231

//@232 /* ~IL manque le pavois gardé par le golem d'os, le coeur du démon, le fléau de Taguar et le casque du spectateur.~ */
  IF ~!HasItem("SHLP12",LastTalkedToBy(MySelf))
      !HasItem("MISC6M",LastTalkedToBy(MySelf))
      !HasItem("BLUP03",LastTalkedToBy(MySelf))
      HasItem("MISCP63",LastTalkedToBy(MySelf))
      !HasItem("HELP01",LastTalkedToBy(MySelf))~ THEN GOTO 232

//@233 /* ~IL manque le pavois gardé par le golem d'os, le coeur du démon, la coupe de sang d'Islendra et le casque du spectateur.~ */
  IF ~!HasItem("SHLP12",LastTalkedToBy(MySelf))
      !HasItem("MISC6M",LastTalkedToBy(MySelf))
      HasItem("BLUP03",LastTalkedToBy(MySelf))
      !HasItem("MISCP63",LastTalkedToBy(MySelf))
      !HasItem("HELP01",LastTalkedToBy(MySelf))~ THEN GOTO 233

//@234 /* ~IL manque le pavois gardé par le golem d'os, le fléau de Taguar, la coupe de sang d'Islendra et le casque du spectateur.~ */
  IF ~!HasItem("SHLP12",LastTalkedToBy(MySelf))
      HasItem("MISC6M",LastTalkedToBy(MySelf))
      !HasItem("BLUP03",LastTalkedToBy(MySelf))
      !HasItem("MISCP63",LastTalkedToBy(MySelf))
      !HasItem("HELP01",LastTalkedToBy(MySelf))~ THEN GOTO 234

//@235 /* ~IL manque le coeur du démon, le fléau de Taguar, la coupe de sang d'Islendra et le casque du spectateur.~ */
  IF ~HasItem("SHLP12",LastTalkedToBy(MySelf))
      !HasItem("MISC6M",LastTalkedToBy(MySelf))
      !HasItem("BLUP03",LastTalkedToBy(MySelf))
      !HasItem("MISCP63",LastTalkedToBy(MySelf))
      !HasItem("HELP01",LastTalkedToBy(MySelf))~ THEN GOTO 235

//@236 /* ~IL manque le pavois gardé par le golem d'os, le coeur du démon, le fléau de Taguar, la coupe de sang d'Islendra et le casque du spectateur.~ */
  IF ~!HasItem("SHLP12",LastTalkedToBy(MySelf))
      !HasItem("MISC6M",LastTalkedToBy(MySelf))
      !HasItem("BLUP03",LastTalkedToBy(MySelf))
      !HasItem("MISCP63",LastTalkedToBy(MySelf))
      !HasItem("HELP01",LastTalkedToBy(MySelf))~ THEN GOTO 236

//@237 /* ~Magnifique! Toutes les pièces sont en votre possession. Je vais pouvoir créer l'artefact dès maintenant!~ */
  IF ~HasItem("SHLP12",LastTalkedToBy(MySelf))
      HasItem("MISC6M",LastTalkedToBy(MySelf))
      HasItem("BLUP03",LastTalkedToBy(MySelf))
      HasItem("MISCP63",LastTalkedToBy(MySelf))
      HasItem("HELP01",LastTalkedToBy(MySelf))~ THEN GOTO 52

END

// Refus création de l'artefact
IF ~~ THEN BEGIN 51
  SAY @239 /* ~(vexé) Vous avez tord de vous croire tout puissant.~ */
  IF ~~ THEN 
      DO ~SetGlobal("KAEL_artefact_creation","COM022",6)~          
      EXIT
END

// Creation de l'artefact
IF ~~ THEN BEGIN 52
  SAY  @52 /* ~Magnifique! Toutes les pièces sont en votre possession. Je vais pouvoir créer l'artefact dès maintenant!~ */
  IF ~~ THEN 
      DO ~ActionOverride(LastTalkedToBy(Myself),DestroyItem("SHLP12"))
          ActionOverride(LastTalkedToBy(Myself),DestroyItem("MISC6M"))
          ActionOverride(LastTalkedToBy(Myself),DestroyItem("BLUP03"))
          ActionOverride(LastTalkedToBy(Myself),DestroyItem("MISCP63"))
          ActionOverride(LastTalkedToBy(Myself),DestroyItem("HELP01"))
          ActionOverride(LastTalkedToBy(Myself),CreateItem("MISCP64",0,0,0))
          SetGlobal("KAEL_artefact_creation","COM022",2)~          
      EXIT
END

// Artefact créé
IF ~Global("KAEL_artefact_creation","COM022",5)~ THEN BEGIN 53
  SAY  @53 /* ~Raaahhhh, te voilà!  mon horreur sanglante! Une de mes plus belles créations! (il regarde la coupe de sang et vous tend l'ojbet). Vous disposez désormais d'un puissant artefact de combat et vous seul pourrait l'utiliser sang de Bhaal!~ */
  IF ~~ THEN 
      DO ~SetGlobal("KAEL_artefact_creation","COM022",6)~
      EXIT
END


// Kael est vaincu: proposition d'un marché *******************************************************************************************************************************************************
IF ~IsGabber(PLAYER1)
    !Global("Kael_vaincu","COM022",0)~ THEN BEGIN 54
  SAY @260=@261=@262 /* ~Vous avez peut être une chance de sortir d'ici finalement...~ ~Durant l'ultime combat, vous n'utiliserez pas ma larme et je vous aiderai.~ ~En échange, vous confierez ma larme aux masques de mort à votre retour. Dites leurs que "Kael, l'ancien maître des artéfacts, serait honnoré de servir le temple."~  */
  IF ~~ THEN 
        REPLY @263 /* ~Marché conclu.~ */
		GOTO 55
		
  IF ~~ THEN 
        REPLY @264 /* ~Disparais, je n'ai pas besoin de toi!~ */
		GOTO 56
END

IF ~~ THEN BEGIN 55
  SAY @265 /* ~Trouvez les six autres larmes et vous vaincrez!~  */
  IF ~~ THEN 
        DO ~SetGlobal("CO_KAEL_ALLIE","GLOBAL",1)
		    AddJournalEntry(@267,INFO)
		    SetGlobal("Kael_vaincu","COM022",3)            
			DestroySelf()~
        EXIT
END

IF ~~ THEN BEGIN 56
  SAY @266 /* ~J'aurai dû me douter de votre réponse. L'intelligence vous fait défaut...~  */
  IF ~~ THEN 
        DO ~SetGlobal("CO_KAEL_ALLIE","GLOBAL",0)
      		AddJournalEntry(@268,INFO)
		    SetGlobal("Kael_vaincu","COM022",3)            
			DestroySelf()~
        EXIT
END


// Kael vaincu et Charname absent de la carte ***************************************************************************************************************************************************
IF ~!Global("Kael_vaincu","COM022",0)
    !IsGabber(PLAYER1)~ THEN BEGIN 57

  SAY @34 /* ~Seul le sang de Bhaal est digne de mon intérêt.~  */ 
  IF ~~ THEN     
      EXIT
END

// Xième discussion avec Kael *******************************************************************************************************************************************
IF ~IsGabber(PLAYER1)
    Global("KAEL_rencontre_P1","COM022",1)~ THEN BEGIN 100
  SAY @244 /* ~Que désirez vous sang de Bhaal?~ */
  IF ~Global("KAEL_artefact_creation","COM022",1)~ THEN 
       REPLY @245 /* ~Je veux l'artéfact.~ */
       GOTO 18

  IF ~~ THEN 
       REPLY @247 /* ~Je veux la larme de sang de ce niveau.~ */
       GOTO 101

  IF ~OpenState("GRILLE1",FALSE)~ THEN 
       REPLY @249 /* ~Comment abaisser la herse qui bloque le passage?~ */
       GOTO 102
END

IF ~~ THEN BEGIN 101
  SAY @248 /* ~Il y a une seule issue à cette demande. Vous devez me vaincre pour l'obtenir. Chose dont je doute en vous voyant...~ */
  IF ~~ THEN            
      EXIT
END

IF ~~ THEN BEGIN 102
  SAY @250 /* ~La herse s'abaissera si je suis vaincu. Chose dont je doute en vous voyant...~ */
  IF ~~ THEN            
      EXIT
END

// Combat Ultime + Kael allié + 6 autres boss vaincus: dial de finisse
IF ~Global("KAEL_FIN","COM024",1)~ THEN BEGIN 103
  SAY @251 /* ~C'est à mon tour de disparaître et vous sortirez vainqueur de l'ultime combat. Vôtre récompense vous attend. Ne m'oubliez pas!~ */
  IF ~~ THEN            
      DO ~SetGlobal("NB_boss_dead","COM024",7)~
      EXIT
END
 



// annonce des objets manquants pour l'artefact ************************************************************************************************************************
IF ~~ THEN BEGIN 206
  SAY @206
  IF ~~ THEN            
      GOTO 237
END

IF ~~ THEN BEGIN 207
  SAY @207
  IF ~~ THEN            
      GOTO 237
END

IF ~~ THEN BEGIN 208
  SAY @208
  IF ~~ THEN            
      GOTO 237
END

IF ~~ THEN BEGIN 209
  SAY @209
  IF ~~ THEN            
      GOTO 237
END

IF ~~ THEN BEGIN 210
  SAY @210
  IF ~~ THEN            
      GOTO 237
END

IF ~~ THEN BEGIN 211
  SAY @211
  IF ~~ THEN            
      GOTO 237
END

IF ~~ THEN BEGIN 212
  SAY @212
  IF ~~ THEN            
      GOTO 237
END

IF ~~ THEN BEGIN 213
  SAY @213
  IF ~~ THEN            
      GOTO 237
END

IF ~~ THEN BEGIN 214
  SAY @214
  IF ~~ THEN            
      GOTO 237
END

IF ~~ THEN BEGIN 215
  SAY @215
  IF ~~ THEN            
      GOTO 237
END

IF ~~ THEN BEGIN 216
  SAY @216
  IF ~~ THEN            
      GOTO 237
END

IF ~~ THEN BEGIN 217
  SAY @217
  IF ~~ THEN            
      GOTO 237
END

IF ~~ THEN BEGIN 218
  SAY @218
  IF ~~ THEN            
      GOTO 237
END

IF ~~ THEN BEGIN 219
  SAY @219
  IF ~~ THEN            
      GOTO 237
END

IF ~~ THEN BEGIN 220
  SAY @220
  IF ~~ THEN            
      GOTO 237
END

IF ~~ THEN BEGIN 221
  SAY @221
  IF ~~ THEN            
      GOTO 237
END

IF ~~ THEN BEGIN 222
  SAY @222
  IF ~~ THEN            
      GOTO 237
END

IF ~~ THEN BEGIN 223
  SAY @223
  IF ~~ THEN            
      GOTO 237
END

IF ~~ THEN BEGIN 224
  SAY @224
  IF ~~ THEN            
      GOTO 237
END

IF ~~ THEN BEGIN 225
  SAY @225
  IF ~~ THEN            
      GOTO 237
END

IF ~~ THEN BEGIN 226
  SAY @226
  IF ~~ THEN            
      GOTO 237
END

IF ~~ THEN BEGIN 227
  SAY @227
  IF ~~ THEN            
      GOTO 237
END

IF ~~ THEN BEGIN 228
  SAY @228
  IF ~~ THEN            
      GOTO 237
END

IF ~~ THEN BEGIN 229
  SAY @229
  IF ~~ THEN            
      GOTO 237
END

IF ~~ THEN BEGIN 230
  SAY @230
  IF ~~ THEN            
      GOTO 237
END

IF ~~ THEN BEGIN 231
  SAY @231
  IF ~~ THEN            
      GOTO 237
END

IF ~~ THEN BEGIN 232
  SAY @232
  IF ~~ THEN            
      GOTO 237
END

IF ~~ THEN BEGIN 233
  SAY @233
  IF ~~ THEN            
      GOTO 237
END

IF ~~ THEN BEGIN 234
  SAY @234
  IF ~~ THEN            
      GOTO 237
END

IF ~~ THEN BEGIN 235
  SAY @235
  IF ~~ THEN            
      GOTO 237
END

IF ~~ THEN BEGIN 236
  SAY @236
  IF ~~ THEN            
      GOTO 237
END

IF ~~ THEN BEGIN 237
  SAY @237 /* ~Revenez lorsque vous aurez toutes les pièces de l'artefact.~*/         
  IF ~~ THEN   
      EXIT
END



