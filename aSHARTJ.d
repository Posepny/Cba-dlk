APPEND ~SHARTJ~

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
  SAY @0
  IF ~InParty("Imoen2")~ THEN GOTO r2female_im2
  IF ~InParty("Imoen")~ THEN GOTO r2female_im
END

IF WEIGHT #-2 ~Global("VP_SharT_Released","GLOBAL",1)~ THEN BEGIN release6
  SAY @2
  IF ~OR(2)
InParty("Imoen2")
See("Imoen2")~ THEN REPLY @3 GOTO release7_im2
  IF ~OR(2)
InParty("Imoen")
See("Imoen")~ THEN REPLY @3 GOTO release7_im
  IF ~Gender(Player1,MALE)~ THEN REPLY @4 GOTO release10
  IF ~Gender(Player1,FEMALE)~ THEN REPLY @4 GOTO release12
  IF ~Gender(Player1,MALE)~ THEN REPLY @5 GOTO release8
  IF ~Gender(Player1,FEMALE)~ THEN REPLY @5 GOTO release11
END

IF ~~ THEN BEGIN release8
  SAY @6
  IF ~~ THEN GOTO release9
END
 
IF ~~ THEN BEGIN release9
  SAY @7
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN release10
  SAY @8
  IF ~~ THEN GOTO release9
END

IF ~~ THEN BEGIN release11
  SAY @9
  IF ~~ THEN GOTO release9
END

IF ~~ THEN BEGIN release12
  SAY @10
  IF ~~ THEN GOTO release9
END
END

/////////////CHAINs////////////////

CHAIN IF ~~ THEN SHARTJ r3male_im2
  @11
DO ~SetGlobal("VP_ReleaseSharTeel","GLOBAL",2)~
== IMOEN2J
@12
== SHARTJ
@13
EXIT

CHAIN IF ~~ THEN SHARTJ r3male_im
   @11
DO ~SetGlobal("VP_ReleaseSharTeel","GLOBAL",2)~
== IMOENJ
@12
== SHARTJ
@13
EXIT

CHAIN IF ~~ THEN SHARTJ r2female_im2
   @1
DO ~SetGlobal("VP_ReleaseSharTeel","GLOBAL",2)~
== IMOEN2J
@14
== SHARTJ
@15
EXIT

CHAIN IF ~~ THEN SHARTJ r2female_im
@1
DO ~SetGlobal("VP_ReleaseSharTeel","GLOBAL",2)~
== IMOENJ
@14
== SHARTJ
@15
EXIT

CHAIN IF ~~ THEN SHARTJ release7_im2
@16
DO ~SetGlobal("VP_SharT_Released","GLOBAL",2)~
== IMOEN2J
@17
DO ~ActionOverride("SharTeel",JoinParty())~
EXIT

CHAIN IF ~~ THEN SHARTJ release7_im
@16
DO ~SetGlobal("VP_SharT_Released","GLOBAL",2)~
== IMOENJ
@17
DO ~ActionOverride("SharTeel",JoinParty())~
EXIT