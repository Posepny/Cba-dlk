BEGIN ~COKAEL~ 


// Encounter 
IF ~Global("Kael_vaincu","COM022",0) 
    IsGabber(PLAYER1) 
    Global("KAEL_rencontre_P1","COM022",0)~ THEN BEGIN 1 
     SAY @1=@2 /* ~(The man looks you straight in the eyes) It is an honor for me to receive Bhaal blood in my home.~ ~ Did you know that I am the one who designed this place and the tears of blood?~ */ 
     IF ~~ THEN GOTO 2 
END 

IF ~~ THEN BEGIN 2 
  SAY @3 /* ~This is all a long story.~ */ 
  IF ~~ THEN REPLY @4 /* ~You talk too much! Let's get this over with!~ */ 
          DO ~SetGlobal("KAEL_rencontre_P1","COM022",1) 
              SetGlobal("KAEL_rencontre","COM022",2)~ 
          GOTO 3 

  IF ~Global("KAEL_larmes","COM022",0)~ THEN REPLY @5 /* ~What are tears of blood for?~ */ 
          DO ~SetGlobal("KAEL_rencontre_P1","COM022",1) 
              SetGlobal("KAEL_rencontre","COM022",2) 
              SetGlobal("KAEL_larmes","COM022",1)~ 
          GOTO 4 

  IF ~Global("KAEL_nom","COM022",0)~ THEN REPLY @7 /* ~What is your name?~ */ 
          DO ~SetGlobal("KAEL_rencontre_P1","COM022",1) 
              SetGlobal("KAEL_rencontre","COM022",2) 
              SetGlobal("KAEL_nom","COM022",1)~ 
          GOTO 5 

  IF ~Global("KAEL_ici","COM022",0)~ THEN REPLY @8 /* ~What are you doing here?~ */ 
          DO ~SetGlobal("KAEL_rencontre_P1","COM022",1) 
              SetGlobal("KAEL_rencontre","COM022",2) 
              SetGlobal("KAEL_ici","COM022",1)~ 
          GOTO 8 
END 

IF ~~ THEN BEGIN 3 
  SAY @9 /* ~(annoyed) Well then, I'll explain what brings you here.~ */ 
  IF ~~ THEN GOTO 17 
END 

IF ~~ THEN BEGIN 4 
  SAY @10 /* ~You'll make use of it soon if you're capable of reason. To believe you could win without it would be pure madness.~ */ 
  IF ~~ THEN GOTO 2   
END 

IF ~~ THEN BEGIN 5 
  SAY @12 /* ~My name was taken from me when I fell from grace because of this Cespenar. Since then, my mission is clear. To rot here for eternity...~ */ 
  
  IF ~~ THEN 
    REPLY @6 /* ~Who is this Cespernar?~ */ 
    GOTO 6 
  
  IF ~~ THEN 
    REPLY @32 /* ~(No reply) ~ */ 
    GOTO 2 
END 

IF ~~ THEN BEGIN 6 
  SAY @11 /* ~He's a miserable runt with wings. He gained my trust to take my place with the master.~ */ 
  
    REPLY @30 /* ~You were Kael, the master artifact of Bhaal, I read it in a book.~ */
    DO ~SetGlobal("KAEL_reconnu","COM022",1)~ 
    GOTO 7 
 
  IF ~~ THEN 
    REPLY @32 /* ~(No reply) ~ */ 
    GOTO 2    
END 

IF ~~ THEN BEGIN 7 
  SAY @31 /* ~(smile) My past no longer belongs to me. Let's talk about your future.~ */ 
  IF ~~ THEN GOTO 17 
END 

IF ~~ THEN BEGIN 8 
  SAY @13 /* ~(annoyed) Well then, I'll explain what brings you here.~ */ 
  IF ~~ THEN GOTO 2 
END 


// A group member meets Kael *************************************************************************************************************************************************** 
IF ~Global("Kael_vaincu","COM022",0) 
    !IsGabber(PLAYER1)~ THEN BEGIN 16 

  SAY @34 /* ~Only Bhaal's blood is worthy of my interest.~ */ 
  IF ~~ THEN      
      EXIT 
END 

// Proposal to make equipment for the Charname ****************************************************************************************************************************** 
IF ~~ THEN BEGIN 17 

  SAY @200=@201=@202=@203 /* ~The final battle approaches, Blood of Bhaal.~ ~From the items you must have found, I can craft a powerful combat artifact.~ ~I need the shield guarded by the Bone Golem, the Demon's Heart, the Flail of Taguar, the Blood Cup of Islendra, and finally, the Spectator's Helmet.~ ~May I see your equipment?~ */ 
  IF ~~ THEN 
       REPLY @204 /* ~Do.~ */ 
       DO ~SetGlobal("KAEL_quest_artifact","COM022",1) 
           SetGlobal("KAEL_artifact_creation","COM022",1)~ 
       GOTO 18 

  IF ~~ THEN 
       REPLY @238 /* ~I don't need your artifact, old man.~ */ 
       GOTO 51 
END 

IF ~~ THEN BEGIN 18 
  SAY @205 /* ~Let's see if you have these items. (Kael begins to rummage through your equipment)~ */ 

//@206 /* ~The bulwark guarded by the bone golem is missing.~ */ 
  IF ~!HasItem("SHLP12",LastTalkedToBy(MySelf)) 
      HasItem("MISC6M",LastTalkedToBy(MySelf)) 
      HasItem("BLUP03",LastTalkedToBy(MySelf)) 
      HasItem("MISCP63",LastTalkedToBy(MySelf)) 
      HasItem("HELP01",LastTalkedToBy(MySelf))~ THEN GOTO 206 

//@207 /* ~The demon's heart is missing.~ */ 
  IF ~HasItem("SHLP12",LastTalkedToBy(MySelf)) 
      !HasItem("MISC6M",LastTalkedToBy(MySelf)) 
      HasItem("BLUP03",LastTalkedToBy(MySelf)) 
      HasItem("HELP01",LastTalkedToBy(MySelf))~ THEN GOTO 207 
   
//@208 /* ~Taguar's bane is missing.~ */ 
  IF ~HasItem("SHLP12",LastTalkedToBy(MySelf))







      !HasItem("BLUP03",LastTalkedToBy(MySelf)) 
      HasItem("HELP01",LastTalkedToBy(MySelf))~ THEN GOTO 215 

//@216 /* ~THE Demon's Heart and Islendra's Blood Cup are missing.~ */ 
  IF ~HasItem("SHLP12",LastTalkedToBy(MySelf)) 
      !HasItem("MISC6M",LastTalkedToBy(MySelf)) 
      HasItem("BLUP03",LastTalkedToBy(MySelf)) 
      !HasItem("MISCP63",LastTalkedToBy(MySelf)) 
      HasItem("HELP01",LastTalkedToBy(MySelf))~ THEN GOTO 216 

//@217 /* ~The demon's heart and the spectator's helmet are missing.~ */ 
  IF ~HasItem("SHLP12",LastTalkedToBy(MySelf)) 
      !HasItem("MISC6M",LastTalkedToBy(MySelf)) 
      HasItem("BLUP03",LastTalkedToBy(MySelf)) 
      HasItem("MISCP63",LastTalkedToBy(MySelf)) 
      !HasItem("HELP01",LastTalkedToBy(MySelf))~ THEN GOTO 217 

//@218 /* ~Taguar's Bane and Islendra's Blood Cup are missing.~ */ 
  IF ~HasItem("SHLP12",LastTalkedToBy(MySelf)) 
      HasItem("MISC6M",LastTalkedToBy(MySelf)) 
      !HasItem("BLUP03",LastTalkedToBy(MySelf)) 
      !HasItem("MISCP63",LastTalkedToBy(MySelf)) 
      HasItem("HELP01",LastTalkedToBy(MySelf))~ THEN GOTO 218 

//@219 /* ~Taguar's Flail and Beholder's Helm are missing.~ */ 
  IF ~HasItem("SHLP12",LastTalkedToBy(MySelf)) 
      HasItem("MISC6M",LastTalkedToBy(MySelf)) 
      !HasItem("BLUP03",LastTalkedToBy(MySelf)) 
      HasItem("MISCP63",LastTalkedToBy(MySelf)) 
      !HasItem("HELP01",LastTalkedToBy(MySelf))~ THEN GOTO 219 

//@220=/* ~Islendra's blood cup and the spectator's helmet are missing.~ */ 
  IF ~HasItem("SHLP12",LastTalkedToBy(MySelf)) 
      HasItem("MISC6M",LastTalkedToBy(MySelf)) 
      HasItem("BLUP03",LastTalkedToBy(MySelf)) 
      !HasItem("MISCP63",LastTalkedToBy(MySelf)) 
      !HasItem("HELP01",LastTalkedToBy(MySelf))~ THEN GOTO 220 

//@221 /* ~THE bulwark guarded by the bone golem, the demon's heart and the bane of Taguar are missing.~ */ 
  IF ~!HasItem("SHLP12",LastTalkedToBy(MySelf)) 
      !HasItem("MISC6M",LastTalkedToBy(MySelf)) 
      !HasItem("BLUP03",LastTalkedToBy(MySelf)) 
      HasItem("MISCP63",LastTalkedToBy(MySelf)) 
      HasItem("HELP01", LastTalkedToBy(MySelf))~ THEN GOTO 221 

//@222 /* ~The shield guarded by the bone golem is missing,the demon's heart and Islendra's blood cup.~ */ 
  IF ~!HasItem("SHLP12",LastTalkedToBy(MySelf)) 
      !HasItem("MISC6M",LastTalkedToBy(MySelf)) 
      HasItem("BLUP03",LastTalkedToBy(MySelf)) 
      HasItem("HELP01",LastTalkedToBy(MySelf))~ THEN GOTO 222

//@223 /* ~THE bulwark guarded by the bone golem, the demon's heart and the spectator's helmet are missing.~ */ 
  IF ~!HasItem("SHLP12",LastTalkedToBy(MySelf)) 
      !HasItem("MISC6M",LastTalkedToBy(MySelf)) 
      HasItem("BLUP03",LastTalkedToBy(MySelf)) 
      HasItem("MISCP63",LastTalkedToBy(MySelf)) 
      !HasItem("HELP01",LastTalkedToBy(MySelf))~ THEN GOTO 223 

//@224 /* ~THE bulwark guarded by the bone golem, the bane of Taguar and the blood cup of Islendra are missing.~ */ 
  IF ~!HasItem("SHLP12",LastTalkedToBy(MySelf)) 
      HasItem("MISC6M",LastTalkedToBy(MySelf)) 
      !HasItem("BLUP03",LastTalkedToBy(MySelf)) 
      !HasItem("MISCP63",LastTalkedToBy(MySelf)) 
      HasItem("HELP01",LastTalkedToBy(MySelf))~ THEN GOTO 224 

//@225 /* ~The bulwark guarded by the bone golem, the flail of Taguar and the spectator's helmet are missing.~ */ 
  IF ~!HasItem("SHLP12",LastTalkedToBy(MySelf)) 
      HasItem("MISC6M",LastTalkedToBy(MySelf)) 
      !HasItem("BLUP03",LastTalkedToBy(MySelf)) 
      HasItem("MISCP63",LastTalkedToBy(MySelf)) 
      !HasItem("HELP01",LastTalkedToBy(MySelf))~ THEN GOTO 225 

//@226 /* ~THE bulwark guarded by the bone golem, Islendra's blood cup and the spectator's helmet are missing.~ */ 
  IF ~!HasItem("SHLP12",LastTalkedToBy(MySelf)) 
      HasItem("MISC6M",LastTalkedToBy(MySelf)) 
      HasItem("BLUP03",LastTalkedToBy(MySelf)) 
      !HasItem("MISCP63",LastTalkedToBy(MySelf)) 
      !HasItem("HELP01",LastTalkedToBy(MySelf))~ THEN GOTO 226 

//@227 /* ~The demon's heart, Taguar's bane, Islendra's blood cup are missing.~ */ 
  IF ~HasItem("SHLP12",LastTalkedToBy(MySelf)) 
      !HasItem("MISC6M",LastTalkedToBy(MySelf)) 
      !HasItem("BLUP03",LastTalkedToBy(MySelf)) 
      !HasItem("MISCP63",LastTalkedToBy(MySelf)) 
      HasItem("HELP01",LastTalkedToBy(MySelf))~ THEN GOTO 227 

//@228 /* ~MISSING: The demon's heart, the bane of Taguar, the beholder's helmet.~ */ 
  IF ~HasItem("SHLP12",LastTalkedToBy(MySelf)) 
      !HasItem("MISC6M",LastTalkedToBy(MySelf)) 
      !HasItem("BLUP03",LastTalkedToBy(MySelf)) 
      HasItem("MISCP63",LastTalkedToBy(MySelf)) 
      !HasItem("HELP01",LastTalkedToBy(MySelf))~ THEN GOTO 228 

//@229 /* ~The demon's heart is missing,Islendra's Goblet of Blood and the Beholder's Helm.~ */ 
  IF ~HasItem("SHLP12",LastTalkedToBy(MySelf)) 
      !HasItem("MISC6M",LastTalkedToBy(MySelf)) 
      !HasItem("MISCP63",LastTalkedToBy(MySelf)) 
      !HasItem("HELP01",LastTalkedToBy(MySelf))~ THEN GOTO 229

//@230 /* ~Missing Taguar's Flail, Islendra's Blood Cup, and Beholder's Helm.~ */ 
  IF ~HasItem("SHLP12",LastTalkedToBy(MySelf)) 
      HasItem("MISC6M",LastTalkedToBy(MySelf)) 
      !HasItem("BLUP03",LastTalkedToBy(MySelf)) 
      !HasItem("MISCP63",LastTalkedToBy(MySelf)) 
      !HasItem("HELP01",LastTalkedToBy(MySelf))~ THEN GOTO 230 

//@231 /* ~THE bulwark guarded by the bone golem, the demon's heart, Taguar's bane and Islendra's blood cup are missing.~ */ 
  IF ~!HasItem("SHLP12",LastTalkedToBy(MySelf)) 
      !HasItem("MISC6M",LastTalkedToBy(MySelf)) 
      !HasItem("BLUP03",LastTalkedToBy(MySelf)) 
      !HasItem("MISCP63",LastTalkedToBy(MySelf)) 
      HasItem("HELP01",LastTalkedToBy(MySelf))~ THEN GOTO 231 

//@232 /* ~THE bulwark guarded by the bone golem, the demon's heart, the bane of Taguar and the spectator's helmet are missing.~ */ 
  IF ~!HasItem("SHLP12",LastTalkedToBy(MySelf)) 
      !HasItem("MISC6M",LastTalkedToBy(MySelf)) 
      !HasItem("BLUP03",LastTalkedToBy(MySelf)) 
      HasItem("MISCP63",LastTalkedToBy(MySelf)) 
      !HasItem("HELP01",LastTalkedToBy(MySelf))~ THEN GOTO 232 

//@233 /* ~THE bulwark guarded by the bone golem, the demon's heart, Islendra's blood cup and the spectator's helmet are missing.~ */ 
  IF ~!HasItem("SHLP12",LastTalkedToBy(MySelf)) 
      !HasItem("MISC6M",LastTalkedToBy(MySelf)) 
      HasItem("BLUP03",LastTalkedToBy(MySelf)) 
      !HasItem("MISCP63",LastTalkedToBy(MySelf)) 
      !HasItem("HELP01",LastTalkedToBy(MySelf))~ THEN GOTO 233 

//@234 /* ~The bulwark guarded by the bone golem, the bane of Taguar, the blood cup of Islendra are missing and the spectator's headset.~ */ 
  IF ~!HasItem("SHLP12",LastTalkedToBy(MySelf)) 
      HasItem("MISC6M",LastTalkedToBy(MySelf)) 
      !HasItem("BLUP03",LastTalkedToBy(MySelf)) 
      !HasItem("MISCP63",LastTalkedToBy(MySelf)) 
      !HasItem("HELP01",LastTalkedToBy(MySelf))~ THEN GOTO 234 

//@235 /* ~MISSING: The Demon's Heart, Taguar's Bane, Islendra's Goblet of Blood, and the Beholder's Helm.~ */ 
  IF ~HasItem("SHLP12",LastTalkedToBy(MySelf)) 
      !HasItem("MISC6M",LastTalkedToBy(MySelf)) 
      !HasItem("BLUP03",LastTalkedToBy(MySelf)) 
      !HasItem("MISCP63",LastTalkedToBy(MySelf)) 
      !HasItem("HELP01",LastTalkedToBy(MySelf))~ THEN GOTO 235 

  IF ~!HasItem("SHLP12",LastTalkedToBy(MySelf)) 
      !HasItem("MISC6M",LastTalkedToBy(MySelf)) 
      !HasItem("BLUP03",LastTalkedToBy(MySelf)) 
      !HasItem("MISCP63",LastTalkedToBy(MySelf))
      !HasItem("HELP01",LastTalkedToBy(MySelf))~ THEN GOTO 236 

//@237 /* ~Magnificent! All the pieces are in your possession. I will be able to create the artifact now!~ */ 
  IF ~HasItem("SHLP12",LastTalkedToBy(MySelf)) 
      HasItem("MISC6M",LastTalkedToBy(MySelf)) 
      HasItem("BLUP03",LastTalkedToBy(MySelf)) 
      HasItem("MISCP63",LastTalkedToBy(MySelf)) 
      HasItem("HELP01",LastTalkedToBy(MySelf))~ THEN GOTO 52 

END 

// Refusal to create the artifact 
IF ~~ THEN BEGIN 51 
  SAY @239 /* ~(annoyed) You are wrong to believe that you are all powerful.~ */ 
  IF ~~ THEN 
      DO ~SetGlobal("KAEL_artefact_creation","COM022",6)~           
      EXIT 
END 

// Creation of the 
IF artifact ~~ THEN BEGIN 52 
  SAY @52 /* ~Magnificent! All the pieces are in your possession. I will be able to create the artifact now!~ */ 
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

// Artifact created 
IF ~Global("KAEL_artifact_creation","COM022",5)~ THEN BEGIN 53 
  SAY @53 /* ~Raaahhhh, there you are! My bloody horror! One of my finest creations! (He looks at the cup of blood and hands you the object). You now possess a powerful combat artifact, and only you can use it, blood of Bhaal!~ */ 
  IF ~~ THEN 
      DO ~SetGlobal("KAEL_artefact_creation","COM022",6)~ 
      EXIT 
END 


// Kael is defeated: offer of a deal ************************************************************************************************************************************************************* 
IF ~IsGabber(PLAYER1) 
  SAY @260=@261=@262 /* ~Perhaps you have a chance to get out of here after all...~ ~During the final battle, you will not use my tear, and I will help you.~ ~In exchange, you will entrust my tear to the Deathmasks upon your return. Tell them that "Kael, the former master of artifacts,would be honored to serve the temple."~ */ 
  IF ~~ THEN 
        REPLY @263 /* ~Deal.~ */ 
		GOTO 55 
		
  IF ~~ THEN











      DO ~SetGlobal("NB_boss_dead","COM024",7)~ 
      EXIT 
END 
 



// announces missing items for the artifact ************************************************************************************************************** 
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
SAY 
      @ 
  225 
  If            
​
  ​
  ​            
      ​
​
​
  ​
  ​            
      ​
​
​
  ​
  ​            
      ​ 
END 
If
  ​
  ​            
      ​
​
​
  ​
  ​            
      ​
​
​
  ​
  ​            
      ​
​
​ 
  ​@232 
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
  SAY @237 /* ~Come back when you have all the pieces of the artifact.~*/          
  IF ~~ THEN    
      EXIT 
END














