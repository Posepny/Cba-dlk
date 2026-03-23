APPEND ~SHARTP~

IF ~Global("KickedOut","LOCALS",0)
!HappinessLT(Myself,-299)
OR(2)
Global("ENDOFBG1","GLOBAL",2)
Global("VP_In_BG1","GLOBAL",0)~ THEN BEGIN NEJ0
  SAY @0
  IF ~OR(4)
Global("VP_In_IWD_Part1","GLOBAL",1)
Global("VP_InHalruaa","GLOBAL",1)
Global("VP_OnIsland","GLOBAL",1)
InWatchersKeep()~ THEN DO ~SetGlobal("KickedOut","LOCALS",1)
EscapeArea()~ EXIT
IF ~Global("VP_In_IWD_Part1","GLOBAL",0)
Global("VP_InHalruaa","GLOBAL",0)
Global("VP_OnIsland","GLOBAL",0)
!InWatchersKeep()~ THEN DO ~SetGlobal("KickedOut","LOCALS",1)
MoveGlobal("AR0702","Sharteel",[511.465])~ EXIT
END

IF ~Global("KickedOut","LOCALS",0)
HappinessLT(Myself,-299)
OR(2)
Global("ENDOFBG1","GLOBAL",2)
Global("VP_In_BG1","GLOBAL",0)~ THEN BEGIN NEJ1
  SAY @1
  IF ~OR(4)
Global("VP_In_IWD_Part1","GLOBAL",1)
Global("VP_InHalruaa","GLOBAL",1)
Global("VP_OnIsland","GLOBAL",1)
InWatchersKeep()~ THEN DO ~SetGlobal("KickedOut","LOCALS",1)
EscapeArea()~ EXIT
IF ~Global("VP_In_IWD_Part1","GLOBAL",0)
Global("VP_InHalruaa","GLOBAL",0)
Global("VP_OnIsland","GLOBAL",0)
!InWatchersKeep()~ THEN DO ~SetGlobal("KickedOut","LOCALS",1)
MoveGlobal("AR0702","Sharteel",[511.465])~ EXIT
END

IF ~Global("KickedOut","LOCALS",1)
OR(2)
Global("ENDOFBG1","GLOBAL",2)
Global("VP_In_BG1","GLOBAL",0)~ THEN BEGIN NEJ2
  SAY @2
  IF ~~ THEN REPLY @3 GOTO NEJ4
  IF ~~ THEN REPLY @4 GOTO NEJ3
END

IF ~~ THEN BEGIN NEJ3
  SAY @5
  IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",0)
JoinParty()~ EXIT
END

IF ~~ THEN BEGIN NEJ4
  SAY @6
  IF ~~ THEN EXIT
END

IF WEIGHT #-1 ~Global("VP_ReleaseSharTeel","GLOBAL",1)
Gender(Player1,MALE)~ THEN BEGIN r1male
  SAY @7
  IF ~~ THEN GOTO r2male
END

IF ~~ THEN BEGIN r2male
  SAY @8
IF ~InParty("Imoen2")~ THEN GOTO r3male_im2
IF ~InParty("Imoen")~ THEN GOTO r3male_im
END

IF WEIGHT #-1 ~Global("VP_ReleaseSharTeel","GLOBAL",1)
Gender(Player1,FEMALE)~ THEN BEGIN r1female
  SAY @9
  IF ~InParty("Imoen2")~ THEN GOTO r2female_im2
  IF ~InParty("Imoen")~ THEN GOTO r2female_im
END

IF WEIGHT #-2 ~Global("VP_SharT_Released","GLOBAL",1)~ THEN BEGIN release6
  SAY @10
  IF ~OR(2)
!InParty("Imoen2")
!See("Imoen2")~ THEN REPLY @11 GOTO release7_im2
  IF ~OR(2)
!InParty("Imoen")
!See("Imoen")~ THEN REPLY @11 GOTO release7_im
  IF ~Gender(Player1,MALE)~ THEN REPLY @12 GOTO release10
  IF ~Gender(Player1,FEMALE)~ THEN REPLY @12 GOTO release12
  IF ~Gender(Player1,MALE)~ THEN REPLY @13 GOTO release8
  IF ~Gender(Player1,FEMALE)~ THEN REPLY @13 GOTO release11
END

IF ~~ THEN BEGIN release8
  SAY @14
  IF ~~ THEN GOTO release9
END
 
IF ~~ THEN BEGIN release9
  SAY @15
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN release10
  SAY @16
  IF ~~ THEN GOTO release9
END

IF ~~ THEN BEGIN release11
  SAY @17
  IF ~~ THEN GOTO release9
END

IF ~~ THEN BEGIN release12
  SAY @18
  IF ~~ THEN GOTO release9
END
END

/////////////CHAINs////////////////

CHAIN IF ~~ THEN SHARTP r3male_im2
  @19
DO ~SetGlobal("VP_ReleaseSharTeel","GLOBAL",2)~
== IMOEN2J
@20
== SHARTP
@21
EXIT

CHAIN IF ~~ THEN SHARTP r3male_im
   @19
DO ~SetGlobal("VP_ReleaseSharTeel","GLOBAL",2)~
== IMOENJ
@20
== SHARTP
@21
EXIT

CHAIN IF ~~ THEN SHARTP r2female_im2
   @8
DO ~SetGlobal("VP_ReleaseSharTeel","GLOBAL",2)~
== IMOEN2J
@22
== SHARTP
@23
EXIT

CHAIN IF ~~ THEN SHARTP r2female_im
@8
DO ~SetGlobal("VP_ReleaseSharTeel","GLOBAL",2)~
== IMOENJ
@22
== SHARTP
@23
EXIT

CHAIN IF ~~ THEN SHARTP release7_im2
@24
DO ~SetGlobal("VP_SharT_Released","GLOBAL",2)~
== IMOEN2J
@25
DO ~ActionOverride("SharTeel",JoinParty())~
EXIT

CHAIN IF ~~ THEN SHARTP release7_im
@24
DO ~SetGlobal("VP_SharT_Released","GLOBAL",2)~
== IMOENJ
@25
DO ~ActionOverride("SharTeel",JoinParty())~
EXIT
