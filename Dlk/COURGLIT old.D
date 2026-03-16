BEGIN ~COTAGUAR~ 

CHAIN ​​IF ~Global("TAGUAR_dies","COM021",1) 
          Global("URGLIT_dies","COM021",0) 
          See("COURGLIT")~ THEN ~COTAGUAR~ 8 
  @1/* ~I'm finally going to be rid of you... Arghhhh.~ */ 
  == ~COURGLIT~ IF ~~ THEN @2/* ~Taguar Nooooo!~ */ 
  == ~COURGLIT~ IF ~~ THEN @3/* ~(She looks at you full of hatred) All of this is YOUR FAULT. I CURSE you all!~ */ 
END IF ~~ THEN 
            DO ~SetGlobal("TAGUAR_dies","COM021",2)~ 
            EXIT 



BEGIN ~COURGLIT~ 

IF ~Global("COURGLIT_init","COM021",0) 
    Global("URGLIT_TAGUAR","COM021",0)~ THEN BEGIN 1 

  SAY @4/* ~Taguar, is that you?~ */ 
  IF ~~ THEN REPLY @5 /* ~Uhh, yes, it's me, Taguar.~ */ 
             DO ~SetGlobal("COURGLIT_init","COM021",1)~ 
             GOTO 2 

  IF ~~ THEN REPLY @6 /* ~No, not really.~ */ 
             DO ~SetGlobal("COURGLIT_init","COM021",1)~ 
             GOTO 3 
END 

IF ~~ THEN BEGIN 2 

  SAY @7/* ~You're finally back, it's wonderful! I've kept your treasure close to me all this time. Come here so I can kiss you!~ */ 
  IF ~~ THEN DO ~SetGlobal("COURGLIT_init","COM021",2)~ 
             EXIT 
END 

IF ~~ THEN BEGIN 3 

  SAY @8=@9/* ~You're not trying to lie like the others. It's interesting, but I don't have time to talk to you.~ ~I'm too COLD. I'm going to suck out every last bit of your warmth!~ */ 
  IF ~~ THEN DO ~SetGlobal("COURGLIT_init","COM021",3) 
                 Enemy()~ 
             EXIT 
END 

IF ~Global("COURGLIT_init","COM021",2)~ THEN BEGIN 4 

  SAY @10=@11/* ~It works every time. You're not Taguar!~ ~Rhhaaa, I can feel your warm body so close to me!~ */ 
  IF ~~ THEN DO ~SetGlobal("COURGLIT_init","COM021",4) 
                 Enemy()~ 
             EXIT 
END 

// Urglit defeated by fire 
IF ~Global("Urglit_dmg_fire","COM021",5) 
    Global("URGLIT_TAGUAR","COM021",0)~ THEN BEGIN 5 

  SAY @12=@13/* ~All this heat is so good. I can finally rest in peace. Thank you.~ */ 
  IF ~~ THEN DO ~Kill("COURGLITE")~   
             EXIT 
END 

/* 
IF ~~ THEN BEGIN 6 

  SAY @21/* ~May you all be CURSED! Arrggghhh.~ */ 
  IF ~~ THEN EXIT 
END 
*/ 

CHAIN ​​IF ~Global("URGLIT_TAGUAR","COM021",1)~ THEN ~COURGLIT~ 7 
  @14/* ~Taguar! Is that you?~ */
  == ~COTAGUAR~ IF ~~ THEN @15/* ~Urglite? They preferred to poison Bhaal's champion rather than face him! All cowards, and it's all your fault!~ */ 
  == ~COURGLIT~ IF ~~ THEN @16/* ~How dare you? You preferred war to our palace. You abandoned me to all those conspirators!~ */ 
  == ~COTAGUAR~ IF ~~ THEN @17/* ~Abandoned? You were never satisfied. You always wanted more wealth and power! I made you a great queen!~ */ 
  == ~COURGLIT~ IF ~~ THEN @18/* ~'YOUR GREAT QUEEN,' they threw her into a vault, claiming I was mad and cursed.~ */ 
  == ~COURGLIT~ IF ~~ THEN @19/* ~I froze to death. YOU KILLED ME!~ */ 
  == ~COTAGUAR~ IF ~~ THEN @20/* ~You filthy, ungrateful little thing. Even dead, you're still here to torment me. I've HAD ENOUGH of you! I'm going to destroy you!~ */ 
END IF ~~ THEN DO ~SetGlobal("URGLIT_TAGUAR","COM021",2)                   
                   ActionOverride("COTAGUAR",ChangeAIScript("COTAGUA3",DEFAULT)) 
                   ActionOverride("COTAGUAR",Enemy()) 
                   ActionOverride("COURGLIT",ChangeAIScript("COURGLI2",DEFAULT)) 
                   ActionOverride("COURGLIT",Enemy())~ 
               EXIT 

CHAIN ​​IF ~Global("URGLIT_meurt","COM021",1) 
          Global("TAGUAR_meurt","COM021",0) 
          See("COTAGUAR")~ THEN ~COURGLIT~ 8 
  @22/* ~(Urglite reaches out to Taguar) I just wanted to be with you...~ */ 
  == ~COTAGUAR~ IF ~~ THEN @23/* ~You were my greatest Plague. Disappear now!~ */ 
END IF ~~ THEN 
            DO ~SetGlobal("URGLIT_meurt","COM021",2)~ 
            EXIT
