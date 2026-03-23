BEGIN ~BSHART~

IF WEIGHT #0 ~Global("VP_STB_itscoldhere","LOCALS",2)~ THEN BEGIN 0
 SAY @0
 IF ~~ THEN REPLY @1 GOTO 1 
 IF ~~ THEN REPLY @2 GOTO 5
 IF ~~ THEN REPLY @3 GOTO 8
END

IF ~~ THEN BEGIN 1
 SAY @4 
 IF ~~ THEN REPLY @5 GOTO 2
 IF ~~ THEN REPLY @6 GOTO 3
 IF ~~ THEN REPLY @7 GOTO 4
END

IF ~~ THEN BEGIN 2
 SAY @8
 IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 3
 SAY @9
 IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 4
 SAY @10
	IF ~~ THEN DO ~SetGlobal("VP_STB_itscoldhere","LOCALS",3)~ EXIT
END

IF ~~ THEN BEGIN 5
 SAY @11 
 IF ~~ THEN REPLY @12 GOTO 3
 IF ~~ THEN REPLY @13 GOTO 6
 IF ~~ THEN REPLY @14 GOTO 6 
 IF ~~ THEN REPLY @15 GOTO 7
END

IF ~~ THEN BEGIN 6
 SAY @16
 IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 7
 SAY @17 
 IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 8
 SAY @18
 IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 9
 SAY @19
 IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10
 SAY @20
	IF ~~ THEN DO ~SetGlobal("VP_STB_itscoldhere","LOCALS",3)~ EXIT
END

IF ~~ THEN BEGIN 11
 SAY @21
 IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 12
 SAY @22
 IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 13
 SAY @23
 IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 14
 SAY @24
	IF ~~ THEN DO ~SetGlobal("VP_STB_itscoldhere","LOCALS",3)~ EXIT
END

IF WEIGHT #-1 ~Global("VP_STB_thishadbetter","LOCALS",2)~ THEN BEGIN 15
 SAY @25
 IF ~~ THEN REPLY @26 GOTO 16
 IF ~~ THEN REPLY @27 GOTO 18
 IF ~~ THEN REPLY @28 GOTO 24
 IF ~~ THEN REPLY @29 GOTO 25
END

IF ~~ THEN BEGIN 16
 SAY @30
 IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 17
 SAY @31
  IF ~~ THEN DO ~SetGlobal("VP_STB_thishadbetter","LOCALS",3)~ EXIT
END

IF ~~ THEN BEGIN 18
 SAY @32 
 IF ~~ THEN REPLY @33 GOTO 19
 IF ~~ THEN REPLY @34 GOTO 21
 IF ~~ THEN REPLY @35 GOTO 21
 IF ~~ THEN REPLY @36 GOTO 23
END

IF ~~ THEN BEGIN 19
 SAY @37
 IF ~~ THEN REPLY @38 GOTO 20
 IF ~~ THEN REPLY @39 GOTO 20
 IF ~~ THEN REPLY @40 GOTO 20
END

IF ~~ THEN BEGIN 20
 SAY @41
  IF ~~ THEN DO ~SetGlobal("VP_STB_thishadbetter","LOCALS",3)~ EXIT
END 

IF ~~ THEN BEGIN 21
 SAY @42
 IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 22
 SAY @43
  IF ~~ THEN DO ~SetGlobal("VP_STB_thishadbetter","LOCALS",3)~ EXIT
END 

IF ~~ THEN BEGIN 23
 SAY @44
  IF ~~ THEN DO ~SetGlobal("VP_STB_thishadbetter","LOCALS",3)~ EXIT
END 

IF ~~ THEN BEGIN 24
 SAY @45
  IF ~~ THEN GOTO 25
END

IF ~~ THEN BEGIN 25
 SAY @46
  IF ~~ THEN GOTO 26
END
 
IF ~~ THEN BEGIN 26
 SAY @47
 IF ~~ THEN REPLY @38 GOTO 20
 IF ~~ THEN REPLY @39 GOTO 20
 IF ~~ THEN REPLY @40 GOTO 20
END

IF ~~ THEN BEGIN 27
 SAY @48
  IF ~~ THEN DO ~SetGlobal("VP_STB_thishadbetter","LOCALS",3)~ EXIT
END 

IF ~~ THEN BEGIN LeiSpher1
	SAY @49
	IF ~True()~ THEN EXTERN ~BLEINA~ Sphere10
	IF ~InParty("Yoshimo")
See("Yoshimo")~ THEN EXTERN ~BYOSHIM~ LeiSpher1
	IF ~InParty("Minsc")
See("Minsc")~ THEN EXTERN ~BMINSC~ LeiSpher1
	IF ~InParty("Edwin")
See("Edwin")~ THEN EXTERN ~BEDWIN~ LeiSpher2
	IF ~InParty("Jaheira")
See("Jaheira")~ THEN EXTERN ~BJAHEIR~ LeiSpher1
	IF ~InParty("Korgan")
See("Korgan")~ THEN EXTERN ~BKORGAN~ LeiSpher4
	IF ~InParty("Nalia")
See("Nalia")~ THEN EXTERN ~BNALIA~ LeiSpher1
	IF ~InParty("Valygar")
See("Valygar")~ THEN EXTERN ~BVALYGA~ LeiSpher1
	IF ~InParty("Viconia")
See("Viconia")~ THEN EXTERN ~BVICONI~ LeiSpher3
	IF ~InParty("Dar")
See("Dar")~ THEN EXTERN ~BDAR~ LeiSpher2	
	IF ~InParty("Melora")
See("Melora")~ THEN EXTERN ~BMELORA~ LeiSpher1	
	IF ~InParty("Taffic")
See("Taffic")~ THEN EXTERN ~BTAFFIC~ LeiSpher1			  
END	

////////////////////////////////
//					CHAINs						//
////////////////////////////////

CHAIN IF ~Global("VP_STB_Minsc","LOCALS",2)~ THEN BSHART STB_Minsc
	@50
=
	@51
DO ~SetGlobal("VP_STB_Minsc","LOCALS",3)~
== BMINSC @52
== BSHART @53
== BMINSC @54
== BSHART @55
== BMINSC @56
=
	@57 
== BSHART @58
== BMINSC @59
= 
	@60 
== BSHART @61
EXIT

CHAIN IF ~Global("VP_STB_Jaheira","LOCALS",2)~ THEN BSHART STB_Jaheira
	@62
DO ~SetGlobal("VP_STB_Jaheira","LOCALS",3)~
== BJAHEIR @63
== BSHART @64

== BJAHEIR @65
=
@66
== BSHART @67
=
	@68 
== BJAHEIR @69
== BSHART @70
=
	@71 
== BJAHEIR @72
== BSHART @73
=
	@74 
== BJAHEIR @75
== BSHART @76
=
	@77
EXIT

CHAIN IF ~Global("VP_STB_Hrothgar","LOCALS",2)~ THEN BSHART STB_Hrothgar
	@78
DO ~SetGlobal("VP_STB_Hrothgar","LOCALS",3)~
== BHROTH @79
== BSHART @80
== BHROTH @81
== BSHART @82
== BHROTH @83
== BSHART @84
== BHROTH @85
= 
	@86
=
	@87
= 
	@88
== BSHART @89 
== BHROTH @90 
== BSHART @91
EXIT

CHAIN IF ~Global("VP_STB_Dar","LOCALS",2)~ THEN BSHART STB_Dar
	@92
DO ~SetGlobal("VP_STB_Dar","LOCALS",3)~
== BDAR @93
== BSHART @94
=
	@95
== BDAR @96
== BSHART @97
=
	@98
= 
	@99
== BDAR @100 
== BSHART @101
EXIT 

CHAIN IF ~Global("VP_STB_Accalia","LOCALS",2)~ THEN BSHART STB_Accalia
	@102
DO ~SetGlobal("VP_STB_Accalia","LOCALS",3)~
== BACCALI @103 
== BSHART @104  
== BACCALI @105
== BSHART @106
== BACCALI @107
== BSHART @108
= 
	@109
EXIT

CHAIN IF ~Global("VP_STB_Imoen","LOCALS",2)
Global("VP_STB_TalkToImmy","LOCALS",1)~ THEN BSHART STB_Imoen
@110
DO ~SetGlobal("VP_STB_Imoen","LOCALS",3)
SetGlobal("VP_STB_TalkToImmy","LOCALS",0)~
== IMOENJ @111
== SHARTJ @112
== IMOENJ @113		
== SHARTJ @114
== IMOENJ @115
== SHARTJ @116
== IMOENJ @117
== SHARTJ @118
== IMOENJ @119
== SHARTJ @120
= 
	@121 
=
	@122
== IMOENJ @123
=
	@124
=
	@125
=
	@126
EXIT

CHAIN IF ~Global("VP_STB_Imoen","LOCALS",2)
Global("VP_STB_TalkToImmy2","LOCALS",1)~ THEN BSHART STB_Imoen
	@110
DO ~SetGlobal("VP_STB_Imoen","LOCALS",3)
SetGlobal("VP_STB_TalkToImmy2","LOCALS",0)~
== IMOEN2J @111
== SHARTJ @112
== IMOEN2J @113		
== SHARTJ @114
== IMOEN2J @115
== SHARTJ @116
== IMOEN2J @117
== SHARTJ @118
== IMOEN2J @119
== SHARTJ @120
= 
	@121 
=
	@122
== IMOEN2J @123
=
	@124
=
	@125
=
	@126
EXIT

CHAIN IF ~Global("VP_STB_Melora","LOCALS",2)~ THEN BSHART STB_Melora
	@127
DO ~SetGlobal("VP_STB_Melora","LOCALS",3)~
== BMELORA @128
=
	@129
== BSHART @130
== BMELORA @131
== BSHART @132
== BMELORA @133
=
	@134
=
	@135
== BSHART @136
== BMELORA @137
=
	@138
=
	@139
== BSHART @140
== BMELORA @141
== BSHART @142
=
	@143
== BMELORA @144
=
	@145
= 
	@146
EXIT