REPLACE_STATE_TRIGGER SHARTE 0
~NumberOfTimesTalkedTo(0)
OR(2)
Global("ENDOFBG1","GLOBAL",0)
Global("VP_In_BG1","GLOBAL",1)~

REPLACE_STATE_TRIGGER SHARTE 4
~Global("BeatSharteel","GLOBAL",3)
OR(2)
Global("ENDOFBG1","GLOBAL",0)
Global("VP_In_BG1","GLOBAL",1)~

REPLACE_STATE_TRIGGER SHARTE 5
~Global("BeatSharteel","GLOBAL",2)
OR(2)
Global("ENDOFBG1","GLOBAL",0)
Global("VP_In_BG1","GLOBAL",1)~

REPLACE_STATE_TRIGGER SHARTE 12
~Global("BeatSharteel","GLOBAL",1)
OR(2)
Global("ENDOFBG1","GLOBAL",0)
Global("VP_In_BG1","GLOBAL",1)~

REPLACE_STATE_TRIGGER SHARTE 13
~HPPercentLT(StrongestOf,50)
OR(2)
Global("ENDOFBG1","GLOBAL",0)
Global("VP_In_BG1","GLOBAL",1)~

REPLACE_STATE_TRIGGER SHARTE 17
~Global("Sharhit","GLOBAL",1)
OR(2)
Global("ENDOFBG1","GLOBAL",0)
Global("VP_In_BG1","GLOBAL",1)~

APPEND ~SHARTE~

IF WEIGHT #-1 ~Global("VP_ReleaseSharTeel","GLOBAL",1)
Gender(Player1,MALE)~ THEN BEGIN r1male
  SAY @0
  IF ~~ THEN GOTO r2male
END

IF ~~ THEN BEGIN r2male
  SAY @1
IF ~InParty("Imoen2")~ THEN GOTO r3male_im2
IF ~InParty("Imoen")~ THEN GOTO r3male_im
END

IF WEIGHT #-1 ~Global("VP_ReleaseSharTeel","GLOBAL",1)
Gender(Player1,FEMALE)~ THEN BEGIN r1female
  SAY @2
  IF ~InParty("Imoen2")~ THEN GOTO r2female_im2
  IF ~InParty("Imoen")~ THEN GOTO r2female_im
END

IF WEIGHT #-2 ~Global("VP_SharT_Released","GLOBAL",1)~ THEN BEGIN release6
  SAY @3
  IF ~OR(2)
InParty("Imoen2")
See("Imoen2")~ THEN REPLY @4 GOTO release7_im2
  IF ~OR(2)
InParty("Imoen")
See("Imoen")~ THEN REPLY @4 GOTO release7_im
  IF ~Gender(Player1,MALE)~ THEN REPLY @5 GOTO release10
  IF ~Gender(Player1,FEMALE)~ THEN REPLY @5 GOTO release12
  IF ~Gender(Player1,MALE)~ THEN REPLY @6 GOTO release8
  IF ~Gender(Player1,FEMALE)~ THEN REPLY @6 GOTO release11
END

IF ~~ THEN BEGIN release8
  SAY @7
  IF ~~ THEN GOTO release9
END
 
IF ~~ THEN BEGIN release9
  SAY @8
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN release10
  SAY @9
  IF ~~ THEN GOTO release9
END

IF ~~ THEN BEGIN release11
  SAY @10
  IF ~~ THEN GOTO release9
END

IF ~~ THEN BEGIN release12
  SAY @11
  IF ~~ THEN GOTO release9
END
END

/////////////CHAINs////////////////

CHAIN IF ~~ THEN SHARTE r3male_im2
  @12
DO ~SetGlobal("VP_ReleaseSharTeel","GLOBAL",2)~
== IMOEN2J
@13
== SHARTE
@14
EXIT

CHAIN IF ~~ THEN SHARTE r3male_im
   @12
DO ~SetGlobal("VP_ReleaseSharTeel","GLOBAL",2)~
== IMOENJ
@13
== SHARTE
@14
EXIT

CHAIN IF ~~ THEN SHARTE r2female_im2
   @1
DO ~SetGlobal("VP_ReleaseSharTeel","GLOBAL",2)~
== IMOEN2J
@15
== SHARTE
@16
EXIT

CHAIN IF ~~ THEN SHARTE r2female_im
@1
DO ~SetGlobal("VP_ReleaseSharTeel","GLOBAL",2)~
== IMOENJ
@15
== SHARTE
@16
EXIT

CHAIN IF ~~ THEN SHARTE release7_im2
@17
DO ~SetGlobal("VP_SharT_Released","GLOBAL",2)~
== IMOEN2J
@18
DO ~ActionOverride("SharTeel",JoinParty())~
EXIT

CHAIN IF ~~ THEN SHARTE release7_im
@17
DO ~SetGlobal("VP_SharT_Released","GLOBAL",2)~
== IMOENJ
@18
DO ~ActionOverride("SharTeel",JoinParty())~
EXIT