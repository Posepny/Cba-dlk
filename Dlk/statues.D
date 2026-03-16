BEGIN ~Lucinda~ 


BEGIN ~Elvina~ 

IF ~Global("statue_elvina_init","COM019",0)~ THEN BEGIN 1 

  SAY @1/* ~HEY!!! It would hurt her to say HELLO with what she calls a mouth!~ */ 
  IF ~~ THEN REPLY @2 /* ~Hello?~ */ 
             DO ~SetGlobal("statue_elvina_init","COM019",1)~ 
             GOTO 2 

  IF ~~ THEN REPLY @3 /* ~Uhhh, can we know what you are exactly?~ */ 
             DO ~SetGlobal("statue_elvina_init","COM019",1)~ 
             GOTO 3 

END 

IF ~~ THEN BEGIN 2 

  SAY @4/* ~That's a little better!~ */ 
  IF ~~ THEN GOTO 6 

END 

IF ~~ THEN BEGIN 3 

  SAY @5/* ~But it doesn't listen to anything and it's no better than the others. This is going to annoy me quickly!~ */ 
  IF ~~ THEN REPLY @6 /* ~A thousand apologies, hello!~ */ 
           GOTO 4 

  IF ~~ THEN REPLY @7 /* ~Shut up, you're just a poor statue that talks too much!~ */ 
           GOTO 5 

END 

IF ~~ THEN BEGIN 4 

  SAY @8/* ~That's a little better!~ */ 
  IF ~~ THEN GOTO 6 

END 

IF ~~ THEN BEGIN 5 

  SAY @9/* ~There ~Lucinda~, you can't say he didn't ask for it this time! Galik, it's time to have fun!~ */ 
  IF ~~ THEN 
         DO ~SetGlobal("statue_elvina_Galik","COM019",1) 
             SetGlobal("pas_discut_bijou","COM019",1) 
             ActionOverride("COSTATL",DestroySelf()) 
             ActionOverride("COSTATE",DestroySelf())~ 
         EXIT 

END 

IF ~~ THEN BEGIN 15 

  SAY @10/* ~And I don't like thieves! Galik, it's time to have fun!~ */ 
  IF ~~ THEN 
         DO ~SetGlobal("statue_elvina_Galik","COM019",1) 
             ActionOverride("COSTATL",DestroySelf()) 
             ActionOverride("COSTATE",DestroySelf())~ 
         EXIT 

END 

IF ~~ THEN BEGIN 16 

  SAY @11=@12/* ~Pouah, it wants to negotiate! Hey, try negotiating with this, we'll see what happens! ~ ~Galik, it's time to have some fun!~ */   
  IF ~~ THEN DO ~SetGlobal("statue_elvina_Galik","COM019",1) 
                  ActionOverride("COSTATL",DestroySelf()) 
                  ActionOverride("COSTATE",DestroySelf())~ 
              EXIT 

END 

IF ~Global("Galik_vaincu","COM019",1) 
    Global("statue_elvina_Galik", 
END
"COM019",2)~ THEN BEGIN 17 
  SAY @13/* ~Galik slipped at the wrong moment. It's just a stroke of luck... Give me the necklace!~ */
  IF ~~ THEN REPLY @14 /* ~Give me something precious in exchange and you'll get the necklace, otherwise say goodbye to it.~ */ 
           GOTO 18LastTalkedToBy(Myself)~ THEN REPLY @30/* ~This one? (you show the necklace)~ */ 
                                                   DO ~SetGlobal("Elvina_bijou","COM019",1)~


IF ~~ THEN BEGIN 18 

  SAY @15/* ~I don't like your big mouth! Give me the necklace and I'll tell you where to find a tear of blood.~ */ 
  IF ~~ THEN REPLY @16 /* ~I don't know what it's for.~ */ 
           GOTO 19 

END 

IF ~~ THEN BEGIN 19 

  SAY @17 /* ~That's not my problem, but you'd better have as many as possible if you want to stay alive during the final battle.~ */ 
  IF ~~ THEN REPLY @19 /* ~Yes, here's the necklace.~ */ 
             DO ~ActionOverride(LastTalkedToBy(Myself),DestroyItem("AMUL12")) 
                 AddJournalEntry(@56,INFO)~ 
             GOTO 20 

  IF ~~ THEN REPLY @20 /* ~No, I'm keeping the necklace. (smile)~ */ 
             DO ~SetGlobal("Elvina_bijou","COM019",3) 
                 AddJournalEntry(@56,INFO)~ 
             GOTO 21 
END 

IF ~~ THEN BEGIN 20 

  SAY @21/* ~(Delicate arms emerge from the wall and place the necklace around their necks). There's a tear of blood in the chest. He'll be speechless when he sees me!~ */ 
  IF ~~ THEN EXTERN ~Lucinda~ 10 

END 

IF ~~ THEN BEGIN 21 

  SAY @22/* ~You'll never get out of here alive! Elvina curses you all!~ */ 
  IF ~~ THEN 
    DO ~ActionOverride("COSTATL",DestroySelf()) 
        ActionOverride("COSTATE",DestroySelf())~ 
  EXIT 

END 

CHAIN ​​IF ~~ THEN ~Elvina~ 6 
  @23/* ~Explain it to her yourself... I'm tired of repeating the same thing.~ */ 
  == ~Lucinda~ IF ~~ THEN @24/* ~I am ~Lucinda, concubine of the Grand Master, and this is Elvina, his principal.~ */ 
END 
IF ~~ THEN REPLY @25/* ~Pleased to meet you, ladies!~ */ 
           GOTO 7 

CHAIN ​​IF ~~ THEN ~Elvina~ 7 
  @26/* ~Do you think she would have thought to bring my jewel?~ */ 
  == ~Lucinda~ IF ~~ THEN @27/* ~Let's ask, it doesn't cost anything.~ */ 
  == ~Lucinda~ IF ~~ THEN @28/* ~Elvina is looking for her jewel, the one with the big, shiny stones.~ */ 
END 
IF ~!HasItem("AMUL12",LastTalkedToBy(Myself))~ THEN REPLY @29/* ~Sorry, I didn't see that jewel...~ */ 
                                                    DO ~SetGlobal("Elvina_bijou","COM019",1)~ 
                                                    GOTO 8 

IF ~HasItem("AMUL12",LastTalkedToBy(Myself))~ THEN REPLY @30/* ~This one? (you point to the necklace)~ */ 
                                                   GOTO 12 


CHAIN ​​IF ~~ THEN ~Elvina~ 8 
  @31/* ~I told you so.I'm fed up with seeing these spoiled daddy's kids who are good for nothing... I'm going back to my nap!~ */ 
  == ~Lucinda~ IF ~~ THEN @32/* ~Excuse her manners, Elvina isn't really mean and she cares a lot about this jewel...~ */ 
END 
IF ~~ THEN REPLY @33/* ~It's nothing. Have other people been here before?~ */ 
           EXTERN ~Lucinda~ 9 

IF ~~ THEN REPLY @34/* ~Could you tell me the best way?~ */ 
           EXTERN ~Lucinda~ 13 

CHAIN ​​IF ~~ THEN ~Elvina~ 12 
  @35/* ~It's mine! Give it to me!~ */ 
  == ~Lucinda~ IF ~~ THEN @36/* ~Excuse her manners, Elvina isn't really mean. She just has a tendency to lose her things... Could you return her necklace before she gets even more upset?~ */ 
END 
IF ~~ THEN REPLY @37/* ~With pleasure, take it.~ */ 
           DO ~ActionOverride(LastTalkedToBy(Myself),DestroyItem("AMUL12"))~ 
           GOTO 13 

IF ~~ THEN REPLY @38/* ~Absolutely not, it's worth a fortune and I don't like its tone!~ */ 
           GOTO 15 

IF ~~ THEN REPLY @39/* ~Offer something in exchange.~ */ 
           GOTO 16 

CHAIN ​​IF ~~ THEN ~Elvina~ 13 
  @40/* ~(Delicate arms emerge from the wall and snatch the necklace). Lucinda, he'll be speechless when he sees me!~ */ 
  == ~Lucinda~ IF ~~ THEN @41/* ~I don't doubt it for a second.~ */ 
  == ~Lucinda~ IF ~~ THEN @42/* ~You shouldn't go down those stairs. It smells bad down there and it's poorly lit. You'll get dirty and catch lice.~ */ 
  == ~Lucinda~ IF ~~ THEN @43/* ~The gate at the back of the room opens with a skull. The realm of the slain awaits you there. As for the gate on the side, it opens with a red stone. The place is heated, there's something to drink, and this charming Kael will be there to welcome you.~ */ 
END 
IF ~~ THEN REPLY @44/* ~Who is this Kael?~ */ 
           GOTO 14 

CHAIN ​​IF ~~ THEN ~Elvina~ 14 
  @45/* ~Ugh, the grand master really kicked his ass, and Cespénar took charge!~ */ 
  == ~Lucinda~ IF ~~ THEN @46/* ~You can be so rude sometimes... We'll let you continue on your way. Farewell, blood of my beloved, and to his escort.~ */ 
END IF ~~ THEN DO ~ActionOverride("COSTATL",DestroySelf()) 
                   ActionOverride("COSTATE",DestroySelf())~ 
               EXIT 


APPEND ~Lucinda~ 
 IF ~~ THEN BEGIN 9 
 
   SAY @47=@48/* ~Of course, you are not the only ones who want to prove your worth to my beloved.~ ~Please excuse me, I am feeling weary. I will take my leave.~ */ 
   IF ~~ THEN 
          DO ~ActionOverride("COSTATL",DestroySelf()) 
              ActionOverride("COSTATE",DestroySelf())~
          EXIT 

 END 

 IF ~~ THEN BEGIN 10 

   SAY @42=@43/* ~You shouldn't go down those stairs. It smells bad and it's poorly lit down there. You'll get dirty and catch lice. Besides, there are lots of disgusting, filthy creatures.~ ~The gate at the back of the room opens with a skull. The realm of the slain awaits you there. As for the gate on the side, it opens with a red stone. The place is heated, there's something to drink, and that charming Kael will be there to welcome you.~ */ 
   IF ~~ THEN REPLY @53 /* ~Thank you for your information.~ */ 
            GOTO 11 

 END 

 IF ~~ THEN BEGIN 11 

   SAY @54/* ~Safe travels, to the blood of my beloved and his escort.~ */ 
   IF ~~ THEN 
          DO ~ActionOverride("COSTATL",DestroySelf()) 
              ActionOverride("COSTATE",DestroySelf())~ 
          EXIT 
 END 

 IF ~HasItem("AMUL12",LastTalkedToBy(Myself))~ THEN BEGIN 12 
 
   SAY @55/* ~Elvina, look. Your necklace is here!~ */ 
   IF ~~ THEN EXTERN ~ELVINA~ 12 

 END 

 IF ~~ THEN BEGIN 13 
 
   SAY @51/* ~Couldn't you help Elvina find her necklace? I'd be happy to help you afterward.~ ~Please excuse me, I'm feeling tired. I'll take my leave.~ */ 
   IF ~~ THEN 
          DO ~ActionOverride("COSTATL",DestroySelf()) 
              ActionOverride("COSTATE",DestroySelf())~ 
          EXIT 

 END 

END
