REPLACE ~SHARTJ~

IF ~~ THEN BEGIN 2
 SAY @0
 IF ~~ THEN DO ~LeaveParty()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 3
 SAY @1
 IF ~~ THEN DO ~LeaveParty()
SetDialog("SharTP")
~ EXIT
END
END

APPEND ~SHARTJ~

IF ~~ THEN BEGIN nejopen1
 SAY @2 
 IF ~InParty("Imoen2")~ THEN EXTERN ~IMOEN2J~ nejstart
 IF ~InParty("Imoen")~ THEN EXTERN ~IMOENJ~ nejstart
END

IF ~~ THEN BEGIN nejopen2
 SAY @3
 IF ~InParty("Imoen2")~ THEN REPLY @4  EXTERN ~IMOEN2J~ VP_FIX7
 IF ~InParty("Imoen")~ THEN REPLY @4  EXTERN ~IMOENJ~ NEJ77
END

IF WEIGHT #-3 ~Global("VP_SharT_VsPomab","LOCALS",1)~ THEN BEGIN vspomab1
 SAY @5 
 IF ~~ THEN REPLY @6 GOTO vspomab2
 IF ~~ THEN REPLY @7 GOTO vspomab2
 IF ~~ THEN REPLY @8 GOTO vspomab3
 IF ~~ THEN REPLY @9 GOTO vspomab3 
END

IF ~~ THEN BEGIN vspomab2
 SAY @10
 IF ~~ THEN DO ~SetGlobal("VP_SharT_VsPomab","LOCALS",2)~ EXIT
END

IF ~~ THEN BEGIN vspomab3
 SAY @11
 IF ~~ THEN DO ~SetGlobal("VP_SharT_VsPomab","LOCALS",2)~ EXIT
END

IF WEIGHT #-4 ~Global("VP_SharT_VsHroth","LOCALS",1)~ THEN BEGIN vshroth
 SAY @12 
 IF ~~ THEN DO ~SetGlobal("VP_SharT_VsHroth","LOCALS",2)~ EXIT
END

IF WEIGHT #-5 ~Global("VP_SharT_VsDar","LOCALS",1)~ THEN BEGIN vsdar1
 SAY @13 
 IF ~~ THEN GOTO vsdar2
END

IF ~~ THEN BEGIN vsdar2
 SAY @14
 IF ~~ THEN DO ~SetGlobal("VP_SharT_VsDar","LOCALS",2)~ EXTERN ~DARJ~ shartdar1
END

IF ~~ THEN BEGIN vsdar3
 SAY @15
=
@16
=
@17
 IF ~~ THEN EXTERN ~DARJ~ shartdar2
END

IF ~~ THEN BEGIN avalanche
 SAY @18
 IF ~True()~ THEN GOTO avalan3
 IF ~OR(3)
Gender(Player1,MALE)
CheckStatLT(Player1,16,STR)
Class(Player1,MAGE)~ THEN GOTO avalan1
 IF ~Gender(Player1,FEMALE)
CheckStatGT(Player1,15,STR)
!Class(Player1,MAGE)~ THEN GOTO avalan2
END

IF ~~ THEN BEGIN avalan1
	SAY @19
	IF ~True()~ THEN EXTERN ~HROTHJ~ 401
	IF ~InParty ("Jaheira")~ THEN EXTERN ~JAHEIRAJ~ sharaval 
	IF ~InParty("Imoen")~ THEN EXTERN ~IMOENJ~ sharaval
	IF ~InParty("Imoen2")~ THEN EXTERN ~IMOEN2J~ sharaval
END

IF ~~ THEN BEGIN avalan2
	SAY @20
	IF ~True()~ THEN EXTERN ~HROTHJ~ 401
	IF ~InParty ("Jaheira")~ THEN EXTERN ~JAHEIRAJ~ sharaval 
	IF ~InParty("Imoen")~ THEN EXTERN ~IMOENJ~ sharaval
	IF ~InParty("Imoen2")~ THEN EXTERN ~IMOEN2J~ sharaval
END

IF ~~ THEN BEGIN avalan3
	SAY @21
	IF ~True()~ THEN EXTERN ~HROTHJ~ 401
	IF ~InParty ("Jaheira")~ THEN EXTERN ~JAHEIRAJ~ sharaval 
	IF ~InParty("Imoen")~ THEN EXTERN ~IMOENJ~ sharaval
	IF ~InParty("Imoen2")~ THEN EXTERN ~IMOEN2J~ sharaval
END

IF WEIGHT #-6 ~Global("VP_SharT_ArunDead","LOCALS",1)~ THEN BEGIN arundead1
	SAY @22 
	IF ~~ THEN GOTO arundead2
END

IF ~~ THEN BEGIN arundead2
 SAY @23
 IF ~~ THEN DO ~SetGlobal("VP_SharT_ArunDead","LOCALS",2)~ EXTERN ~HROTHJ~ stardead
END

IF ~~ THEN BEGIN nearportal
	SAY @24 
	IF ~True()~ THEN EXTERN ~HROTHJ~ 403
	IF ~InParty("Minsc")~ THEN GOTO onminsc1
	IF ~InParty("Accalia")~ THEN GOTO onaccali
	IF ~InParty("Dar")~ THEN GOTO ondar
	IF ~InParty("Jaheira")~ THEN GOTO onjahi
	IF ~OR(2)
InParty("Imoen") 
InParty("Imoen2")~ THEN GOTO onimoen1
END 

IF ~~ THEN BEGIN onimoen1
	SAY @25
	IF ~~ THEN GOTO onimoen2
END

IF ~~ THEN BEGIN onimoen2
	SAY @26
	IF ~True()~ THEN EXTERN ~HROTHJ~ 403
	IF ~InParty("Minsc")~ THEN GOTO onminsc1
	IF ~InParty("Accalia")~ THEN GOTO onaccali
	IF ~InParty("Dar")~ THEN GOTO ondar
	IF ~InParty("Jaheira")~ THEN GOTO onjahi
END

IF ~~ THEN BEGIN onjahi
	SAY @27
	IF ~True()~ THEN EXTERN ~HROTHJ~ 403
	IF ~InParty("Minsc")~ THEN GOTO onminsc1
	IF ~InParty("Accalia")~ THEN GOTO onaccali
	IF ~InParty("Dar")~ THEN GOTO ondar
END

IF ~~ THEN BEGIN ondar
	SAY @28
	IF ~True()~ THEN EXTERN ~HROTHJ~ 403
	IF ~InParty("Minsc")~ THEN GOTO onminsc1
	IF ~InParty("Accalia")~ THEN GOTO onaccali
END
	
IF ~~ THEN BEGIN onaccali
	SAY @29
	IF ~~ THEN GOTO onaccali2
END

IF ~~ THEN BEGIN onaccali2
	SAY @30
	IF ~True()~ THEN EXTERN ~HROTHJ~ 403
	IF ~InParty("Minsc")~ THEN GOTO onminsc1
END
	
IF ~~ THEN BEGIN onminsc1
	SAY @31
	IF ~~ THEN GOTO onminsc2
END

IF ~~ THEN BEGIN onminsc2
	SAY @32
	IF ~~ THEN EXTERN ~MINSCJ~ NEJ342
END

IF ~~ THEN BEGIN onminsc3
	SAY @33
	IF ~~ THEN EXTERN ~HROTHJ~ shargrp
END

IF ~~ THEN BEGIN sevhand1
	SAY @34
	IF ~~ THEN GOTO sevhand2
END	
	
IF ~~ THEN BEGIN sevhand2
	SAY @35
	IF ~~ THEN GOTO sevhand3
END		

IF ~~ THEN BEGIN sevhand3
	SAY @36
	IF ~~ THEN EXTERN ~HROTHJ~ 195
END		 
	
IF ~~ THEN BEGIN kaylsold
	SAY @37
 IF ~~ THEN DO ~SetGlobal("VP_Astrolabe_Talks","GLOBAL",2)
RealSetGlobalTimer("VP_Accalia_Hrothgar","GLOBAL",30)~ EXIT	
END

IF ~~ THEN BEGIN comebck1
	SAY @38
	IF ~~ THEN GOTO comebck2
END

IF ~~ THEN BEGIN comebck2
	SAY @39
	IF ~~ THEN EXTERN ~HROTHJ~ 369
END

IF ~Global("PostCutSpeak","AR0700",1)~ THEN BEGIN imytaken
 SAY @40 
=
	@41
 IF ~~ THEN DO ~SetGlobal("PostCutSpeak","AR0700",2)~ GOTO imytakenfix
END

IF ~~ THEN BEGIN imytakenfix
 SAY @42
 IF ~!IsValidForPartyDialog("Minsc")
!IsValidForPartyDialog("Yoshimo")
!IsValidForPartyDialog("Jaheira")~ THEN EXIT
 IF ~IsValidForPartyDialog("Jaheira")~ THEN EXTERN ~JAHEIRAJ~ 528
 IF ~IsValidForPartyDialog("Yoshimo")
!IsValidForPartyDialog("Jaheira")~ THEN EXTERN ~YOSHJ~ 150
 IF ~IsValidForPartyDialog("Minsc")
!IsValidForPartyDialog("Yoshimo")
!IsValidForPartyDialog("Jaheira")~ THEN EXTERN ~MINSCJ~ 239
END

IF ~~ THEN BEGIN gotoulcr
	SAY @43
=
	@44
=
	@45
	IF ~~ THEN EXTERN ~HROTHJ~ 404
END

IF ~~ THEN BEGIN leavarmo
	SAY @46
	IF ~~ THEN DO ~SetGlobal("VP_Move_To_Halruaa","GLOBAL",1)
GiveItemCreate("TulRobe",Player1,0,0,0)
GiveItemCreate("TulRobe",Player2,0,0,0)
GiveItemCreate("TulRobe",Player3,0,0,0)
GiveItemCreate("TulRobe",Player4,0,0,0)
GiveItemCreate("TulRobe",Player5,0,0,0)
GiveItemCreate("TulRobe",Player6,0,0,0)~ EXIT
END

IF ~~ THEN BEGIN arrivhal
	SAY @47
=
	@48
 IF ~True()~ THEN DO ~SetGlobal("VP_Move_To_Halruaa","GLOBAL",4)~ EXIT
 IF ~InParty("Melora")~ THEN DO ~SetGlobal("VP_Move_To_Halruaa","GLOBAL",4)~ EXTERN ~MELORAJ~ 10
END

IF ~~ THEN BEGIN ezequest1
	SAY @49
= 
	@50
= 
	@51
	IF ~~ THEN EXTERN ~TuEzek~ 7
END

IF ~~ THEN BEGIN ezequest2
	SAY @49
= 
	@52
= 
	@53
	IF ~~ THEN EXTERN ~TuEzek~ 9
END

IF ~~ THEN BEGIN imscared
	SAY @54
	IF ~~ THEN EXTERN ~HROTHJ~ 372
END

IF ~~ THEN BEGIN frellaru
	SAY @55
	IF ~~ THEN EXTERN ~HROTHJ~ shararu1
END

IF ~~ THEN BEGIN frellaru2
	SAY @56
=
@57
	IF ~~ THEN EXTERN ~HROTHJ~ shararu2
END

IF ~~ THEN BEGIN frellaru3
	SAY @58
=
@59
	IF ~~ THEN EXTERN ~HROTHJ~ shararu3
END

IF ~~ THEN BEGIN dragoneye
 SAY @60
 IF ~True()~ THEN DO ~SetGlobal("VP_DragonsEyeNotes","GLOBAL",2)~ EXIT
 IF ~InParty("Imoen")
See("Imoen")~ THEN DO ~SetGlobal("VP_DragonsEyeNotes","GLOBAL",2)~ EXTERN ~IMOENJ~ NEJ147
 IF ~InParty("Imoen2")
See("Imoen2")~ THEN DO ~SetGlobal("VP_DragonsEyeNotes","GLOBAL",2)~ EXTERN ~IMOEN2J~ VP_FIX63
 IF ~InParty("Jaheira")
See("Jaheira")~ THEN DO ~SetGlobal("VP_DragonsEyeNotes","GLOBAL",2)~ EXTERN ~JAHEIRAJ~ NEJ591
 IF ~InParty("Minsc")
See("Minsc")~ THEN DO ~SetGlobal("VP_DragonsEyeNotes","GLOBAL",2)~ EXTERN ~MINSCJ~ NEJ288
END

IF ~~ THEN BEGIN lizardking
 SAY @61
 IF ~True()~ THEN DO ~SetGlobal("VP_LizardKingDead","LOCALS",2)~ EXTERN ~HROTHJ~ 273
 IF ~InParty("Accalia")
See("Accalia")~ THEN DO ~SetGlobal("VP_LizardKingDead","LOCALS",2)~ EXTERN ~ACCALIJ~ 59
 IF ~InParty("Imoen")
See("Imoen")~ THEN DO ~SetGlobal("VP_LizardKingDead","LOCALS",2)~ EXTERN ~IMOENJ~ NEJ148
 IF ~InParty("Imoen2")
See("Imoen2")~ THEN DO ~SetGlobal("VP_LizardKingDead","LOCALS",2)~ EXTERN ~IMOEN2J~ VP_FIX64
 IF ~InParty("Jaheira")
See("Jaheira")~ THEN DO ~SetGlobal("VP_LizardKingDead","LOCALS",2)~ EXTERN ~JAHEIRAJ~ NEJ627
 IF ~InParty("Minsc")
See("Minsc")~ THEN DO ~SetGlobal("VP_LizardKingDead","LOCALS",2)~ EXTERN ~MINSCJ~ NEJ291
END

IF ~~ THEN BEGIN erevbody
	SAY @62
	IF ~~ THEN EXTERN ~HROTHJ~ sharerev
END

IF ~~ THEN BEGIN erevbod2
	SAY @63
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN egenia
 SAY @64
 IF ~True()~ THEN EXIT
 IF ~InParty("Minsc")
See("Minsc")
OR(2)
!InParty("Dar")
!See("Dar")~ THEN EXTERN ~MINSCJ~ NEJ326
 IF ~InParty("Minsc")
See("Minsc")
InParty("Dar")
See("Dar")~ THEN EXTERN ~DARJ~ 62
END 

IF ~~ THEN BEGIN nearpor1
	SAY @65
 IF ~InParty("Accalia")~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("VPCutNJ1")~ EXIT
 IF ~!InParty("Accalia")~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("VPCutNJ2")~ EXIT
END

IF ~~ THEN BEGIN nearpor2
	SAY @65
 IF ~InParty("Accalia")~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("VPCutNJ3")~ EXIT
 IF ~!InParty("Accalia")~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("VPCutNJ4")~ EXIT
END

IF ~~ THEN BEGIN onkhbody1
	SAY @66
	IF ~~ THEN EXTERN ~JAHEIRAJ~ insuljah1
END

IF ~~ THEN BEGIN onkhbody2
	SAY @67
	IF ~~ THEN EXTERN ~JAHEIRAJ~ insuljah2
END

IF ~~ THEN BEGIN legacy11
	SAY @68
	IF ~~ THEN GOTO legacy12
END

IF ~~ THEN BEGIN legacy12
	SAY @69
	IF ~~ THEN EXTERN ~FIRKRA01~ shartee1
END

IF ~~ THEN BEGIN legacy13
	SAY @70
	IF ~~ THEN EXTERN ~FIRKRA01~ shartee3
END

IF ~~ THEN BEGIN legacy14
	SAY @71
	IF ~~ THEN EXTERN ~FIRKRA01~ shartee4
END

IF ~~ THEN BEGIN legacy15
	SAY @72
	IF ~~ THEN GOTO legacy16
END

IF ~~ THEN BEGIN legacy16
	SAY @73
	IF ~~ THEN EXTERN ~FIRKRA01~ shartee7
END

IF ~~ THEN BEGIN legacy17
	SAY @74
	IF ~~ THEN EXTERN ~FIRKRA01~ shartee8
END

IF ~~ THEN BEGIN legacy18
	SAY @75
	IF ~~ THEN GOTO legacy19
END	
	
IF ~~ THEN BEGIN legacy19
	SAY @76
	IF ~~ THEN EXTERN ~FIRKRA01~ shartee9
END

IF ~~ THEN BEGIN legacy20
	SAY @77
	IF ~~ THEN GOTO legacy21
END

IF ~~ THEN BEGIN legacy21
	SAY @78
	IF ~~ THEN EXTERN ~FIRKRA01~ shartee12
END

IF WEIGHT #-7 ~Global("VP_AngelosLegacy","GLOBAL",2)~ THEN BEGIN legacy22
	SAY @79 
	IF ~~ THEN GOTO legacy23
END

IF ~~ THEN BEGIN legacy23
	SAY @80
	IF ~~ THEN REPLY @81 GOTO legacy24
	IF ~~ THEN REPLY @82 GOTO legacy25
	IF ~~ THEN REPLY @83 GOTO legacy25
	IF ~~ THEN REPLY @84 GOTO legacy25
	IF ~~ THEN REPLY @85 GOTO legacy30
END

IF ~~ THEN BEGIN legacy24
	SAY @86
	IF ~~ THEN DO ~SetGlobal("VP_AngelosLegacy","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN legacy25
	SAY @87
	IF ~~ THEN REPLY @88 GOTO legacy26
	IF ~~ THEN REPLY @89 GOTO legacy27
	IF ~~ THEN REPLY @90 GOTO legacy27
	IF ~~ THEN REPLY @91 GOTO legacy29
END

IF ~~ THEN BEGIN legacy26
	SAY @92
	IF ~~ THEN GOTO legacy24
END

IF ~~ THEN BEGIN legacy27
	SAY @93
	IF ~~ THEN GOTO legacy28
END

IF ~~ THEN BEGIN legacy28
	SAY @94
	IF ~~ THEN REPLY @95 GOTO legacy26 
	IF ~~ THEN REPLY @96 GOTO legacy29
	IF ~~ THEN REPLY @97 GOTO legacy30
	IF ~~ THEN REPLY @98 GOTO legacy31
END

IF ~~ THEN BEGIN legacy29
	SAY @99
	IF ~!IsValidForPartyDialog("Minsc")
!IsValidForPartyDialog("Yoshimo")
!IsValidForPartyDialog("Jaheira")~ THEN DO ~SetGlobal("VP_AngelosLegacy","GLOBAL",3)~ EXIT
 IF ~IsValidForPartyDialog("Minsc")~ THEN DO ~SetGlobal("VP_AngelosLegacy","GLOBAL",3)~ UNSOLVED_JOURNAL @5275 EXTERN ~MINSCJ~ 96
 IF ~!IsValidForPartyDialog("Minsc")
IsValidForPartyDialog("Yoshimo")~ THEN DO ~SetGlobal("VP_AngelosLegacy","GLOBAL",3)~ UNSOLVED_JOURNAL @5275 EXTERN ~YOSHJ~ 42
 IF ~!IsValidForPartyDialog("Minsc")
!IsValidForPartyDialog("Yoshimo")
IsValidForPartyDialog("Jaheira")~ THEN DO ~SetGlobal("VP_AngelosLegacy","GLOBAL",3)~ UNSOLVED_JOURNAL @5275 EXTERN ~JAHEIRAJ~ 356
END

IF ~~ THEN BEGIN legacy30
	SAY @101
	IF ~!IsValidForPartyDialog("Minsc")
!IsValidForPartyDialog("Yoshimo")
!IsValidForPartyDialog("Jaheira")~ THEN DO ~SetGlobal("VP_AngelosLegacy","GLOBAL",3)~ EXIT
 IF ~IsValidForPartyDialog("Minsc")~ THEN DO ~SetGlobal("VP_AngelosLegacy","GLOBAL",3)~ UNSOLVED_JOURNAL @5275 EXTERN ~MINSCJ~ 96
 IF ~!IsValidForPartyDialog("Minsc")
IsValidForPartyDialog("Yoshimo")~ THEN DO ~SetGlobal("VP_AngelosLegacy","GLOBAL",3)~ UNSOLVED_JOURNAL @5275 EXTERN ~YOSHJ~ 42
 IF ~!IsValidForPartyDialog("Minsc")
!IsValidForPartyDialog("Yoshimo")
IsValidForPartyDialog("Jaheira")~ THEN DO ~SetGlobal("VP_AngelosLegacy","GLOBAL",3)~ UNSOLVED_JOURNAL @5275 EXTERN ~JAHEIRAJ~ 356
END

IF ~~ THEN BEGIN legacy31
	SAY @102
	IF ~~ THEN DO ~SetGlobal("VP_AngelosLegacy","GLOBAL",3)
ChangeAIScript("",DEFAULT)
SetLeavePartyDialogFile()
SetGlobal("KickedOut","LOCALS",1)
LeaveParty()
EscapeAreaMove("AR0086",9,9,9)~ EXIT
END

IF ~~ THEN BEGIN legacy201
	SAY @103
	IF ~~ THEN EXTERN ~GARREN~ shartee15
END

IF ~~ THEN BEGIN legacy202
	SAY @104
	IF ~~ THEN EXTERN ~GARREN~ shartee17
END

IF ~~ THEN BEGIN legacy203
	SAY @105
	IF ~~ THEN GOTO legacy204
END

IF ~~ THEN BEGIN legacy204
	SAY @106
	IF ~~ THEN GOTO legacy205
END

IF ~~ THEN BEGIN legacy205
	SAY @107
	IF ~~ THEN EXTERN ~GARREN~ shartee19
END

IF ~~ THEN BEGIN legacy211
	SAY @108
	IF ~~ THEN EXTERN ~VAELASA~ shartee20
END

IF ~~ THEN BEGIN legacy212
	SAY @109
	IF ~~ THEN EXTERN ~VAELASA~ shartee23
END

IF ~~ THEN BEGIN legacy213
	SAY @110
	IF ~~ THEN EXTERN ~VAELASA~ shartee24
END

IF ~~ THEN BEGIN legacy214
	SAY @111
	IF ~~ THEN GOTO legacy215
END

IF ~~ THEN BEGIN legacy215
	SAY @112
	IF ~~ THEN EXTERN ~VAELASA~ shartee25
END

IF ~~ THEN BEGIN legacy216
	SAY @113
	IF ~~ THEN GOTO legacy217
END
	
IF ~~ THEN BEGIN legacy217
	SAY @114
	IF ~~ THEN EXTERN ~VAELASA~ shartee27
END

IF ~~ THEN BEGIN legacy218
	SAY @115
	IF ~~ THEN GOTO legacy219
END	
	 
IF ~~ THEN BEGIN legacy219
	SAY @116
	IF ~True()~ THEN DO ~SetGlobal("frLeaveDryads","ar1200",1)
EraseJournalEntry(34092)
EraseJournalEntry(34093)
ActionOverride("vaelasa",EscapeArea())~ SOLVED_JOURNAL @5276 EXIT
	IF ~InParty("Edwin")
See("Edwin")~ THEN EXTERN ~EDWINJ~ driadsint_edw1
	IF ~InParty("Jan")
See("Jan")~ THEN EXTERN ~JANJ~ driadsint_jan
	IF ~InParty("Korgan")
See("Korgan")~ THEN EXTERN ~KORGANJ~ driadsint_kor
	IF ~InParty("Viconia")
See("Viconia")~ THEN EXTERN ~VICONIJ~ driadsint_vic
END

IF ~~ THEN BEGIN legacy220
	SAY @118
	IF ~~ THEN GOTO legacy221
END

IF ~~ THEN BEGIN legacy221
	SAY @119
	IF ~~ THEN EXTERN ~EDWINJ~ driadsint_edw2
END

IF ~~ THEN BEGIN legacy222
	SAY @120
	IF ~~ THEN EXTERN ~EDWINJ~ driadsint_edw3
END

IF ~~ THEN BEGIN legacy223
	SAY @121
	IF ~~ THEN DO ~SetGlobal("frLeaveDryads","ar1200",1)
EraseJournalEntry(34092)
EraseJournalEntry(34093)
ActionOverride("vaelasa",EscapeArea())~ SOLVED_JOURNAL @5276 EXIT
END

IF ~~ THEN BEGIN legacy224
	SAY @122
	IF ~~ THEN EXTERN ~LEINAJ~ driadsint_lei2
END

IF ~~ THEN BEGIN legacy225
	SAY @123
	IF ~~ THEN DO ~SetGlobal("frLeaveDryads","ar1200",1)
EraseJournalEntry(34092)
EraseJournalEntry(34093)
ActionOverride("vaelasa",EscapeArea())~ SOLVED_JOURNAL @5276 EXIT
END

IF ~~ THEN BEGIN legacy226
	SAY @124
	IF ~~ THEN EXTERN ~MELORAJ~ driadsint_mel4
END

IF ~~ THEN BEGIN legacy227
	SAY @125
	IF ~~ THEN REPLY @126 GOTO legacy228
	IF ~~ THEN REPLY @127 GOTO legacy228
	IF ~~ THEN REPLY @128 GOTO legacy228
	IF ~~ THEN REPLY @129 GOTO legacy228
END

IF ~~ THEN BEGIN legacy228
	SAY @130
	IF ~~ THEN EXTERN ~MELORAJ~ driadsint_mel5
END

IF WEIGHT #-8 ~Global("VP_STB_orcsambush","LOCALS",1)~ THEN BEGIN legacy300
	SAY @131
	IF ~~ THEN DO ~SetGlobal("VP_STB_orcsambush","LOCALS",2)~ EXIT
END

IF ~~ THEN BEGIN legacy310
	SAY @132
	IF ~~ THEN EXTERN ~FIRORC02~ orcsflee2
END

IF ~~ THEN BEGIN legacy311
	SAY @133
	IF ~See(Player1)~ THEN REPLY @134 EXTERN ~FIRORC02~ orcsflee3
	IF ~See(Player1)~ THEN REPLY @135 GOTO legacy314
	IF ~!See(Player1)~ THEN EXTERN ~FIRORC02~ 2 
END

IF ~~ THEN BEGIN legacy312
	SAY @136
	IF ~~ THEN GOTO legacy313
END	
	
IF ~~ THEN BEGIN legacy313
	SAY @137
	IF ~~ THEN DO ~ActionOverride("firorc02",EscapeArea())
ActionOverride("firorc03",EscapeArea())~ EXIT
END

IF ~~ THEN BEGIN legacy314
	SAY @138
	IF ~~ THEN EXTERN ~FIRORC02~ 2 
END

IF WEIGHT #-9 ~Global("VP_STB_orcsflees","LOCALS",1)~ THEN BEGIN legacy315
	SAY @139
	IF ~~ THEN DO ~SetGlobal("VP_STB_orcsflees","LOCALS",2)~ EXIT
END

IF ~~ THEN BEGIN legacy320
	SAY @140
	IF ~~ THEN GOTO legacy321
END

IF ~~ THEN BEGIN legacy321
	SAY @141
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN legacy322
	SAY @142
	IF ~~ THEN DO ~SetGlobal("SamiaPreempted","GLOBAL",1)
EraseJournalEntry(7167)
CreateCreatureObject("Akae",Myself,0,0,0)
CreateCreatureObject("Kaol",Myself,0,0,0)
CreateCreatureObject("Chak",Myself,0,0,0)
CreateCreatureObject("Legdor",Myself,0,0,0)
CreateCreatureObject("Deshar",Myself,0,0,0)
ActionOverride("Akae",Enemy())
ActionOverride("Kaol",Enemy())
ActionOverride("Chak",Enemy())
ActionOverride("Legdor",Enemy())
ActionOverride("Deshar",Enemy())
ActionOverride("Samia",Enemy())~ EXIT 
END

IF WEIGHT #-10 ~Global("VP_STB_samiadead","LOCALS",1)~ THEN BEGIN legacy323
	SAY @143
	IF ~~ THEN GOTO legacy324
END	
	
IF ~~ THEN BEGIN legacy324
	SAY @144
	IF ~~ THEN DO ~SetGlobal("VP_STB_samiadead","LOCALS",2)~ EXIT
END

IF ~~ THEN BEGIN durbin1
	SAY @145
	IF ~~ THEN EXTERN ~DURBIN~ D8
END

IF ~~ THEN BEGIN durbin2
	SAY @146
	IF ~~ THEN EXTERN ~DURBIN~ D9
END

IF ~~ THEN BEGIN durbin3
	SAY @147
	IF ~~ THEN EXTERN ~DURBIN~ D10
END

IF ~~ THEN BEGIN durbin4
	SAY @148
	IF ~~ THEN EXTERN ~DURBIN~ D11
END

IF ~~ THEN BEGIN durbin5
	SAY @149
=
	@150
	IF ~~ THEN EXTERN ~DURBIN~ D12
END

IF ~~ THEN BEGIN durbin6
	SAY @151
	IF ~~ THEN EXTERN ~DURBIN~ D13
END

IF ~~ THEN BEGIN durbin7
	SAY @152
	IF ~~ THEN EXTERN ~DURBIN~ D14
END

IF ~~ THEN BEGIN durbin8
	SAY @153
	IF ~~ THEN EXTERN ~DURBIN~ D15
END

IF ~~ THEN BEGIN durbin9
	SAY @154
	IF ~~ THEN EXTERN ~DURBIN~ D16
END

IF ~~ THEN BEGIN durbin10
	SAY @155
=
	@156
	IF ~~ THEN DO ~ActionOverride("durbin",EscapeArea())~ EXIT
END

IF ~~ THEN BEGIN durbin11
	SAY @157
	IF ~~ THEN EXTERN ~DURBIN~ D17
END

IF ~~ THEN BEGIN durbin12
	SAY @158
	IF ~~ THEN EXTERN ~DURBIN~ D20
END

IF ~~ THEN BEGIN durbin13
	SAY @159
	IF ~~ THEN EXTERN ~DURBIN~ D21
END

IF ~~ THEN BEGIN durbin14
	SAY @160
=
	@161
	IF ~~ THEN EXTERN ~DURBIN~ D21a
END

IF ~~ THEN BEGIN durbin15
	SAY @162
	IF ~~ THEN EXTERN ~DURBIN~ D22
END

IF ~~ THEN BEGIN durbin16
	SAY @163
=
	@164
	IF ~~ THEN DO ~ActionOverride("durbin",EscapeArea())~ EXIT
END

IF ~~ THEN BEGIN durbin17
	SAY @165
	IF ~~ THEN EXTERN ~DURBIN~ D19
END

IF ~~ THEN BEGIN durbin18
	SAY @166
	IF ~~ THEN EXTERN ~DURBIN~ D24
END

IF ~~ THEN BEGIN durbin19
	SAY @167
=
	@168
	IF ~~ THEN EXTERN ~DURBIN~ D21a
END

IF ~~ THEN BEGIN durbin20
	SAY @169
	IF ~~ THEN EXTERN ~DURBIN~ D24
END

IF ~~ THEN BEGIN legacy401
	SAY @170
	IF ~~ THEN EXTERN ~FIRKRA02~ firecr02
END

IF ~~ THEN BEGIN legacy402
	SAY @171
	IF ~~ THEN EXTERN ~FIRKRA02~ firecr03
END

IF ~~ THEN BEGIN legacy403
	SAY @172
	IF ~~ THEN EXTERN ~FIRKRA02~ firecr04
END

IF ~~ THEN BEGIN legacy404
	SAY @173
	IF ~~ THEN EXTERN ~FIRKRA02~ firecr05
END

IF ~~ THEN BEGIN legacy405
	SAY @174
	IF ~~ THEN EXTERN ~FIRKRA02~ firecr05
END

IF ~~ THEN BEGIN legacy405a
	SAY @175
	IF ~~ THEN EXTERN ~FIRKRA02~ 25
END

IF ~~ THEN BEGIN legacy406
	SAY @176
	IF ~True()~ THEN GOTO legacy406a
	IF ~InParty("Hrothgar")
See("Hrothgar")~ THEN EXTERN ~HROTHJ~ firattak
	IF ~InParty("Viconia")
See("Viconia")~ THEN EXTERN ~VICONIJ~ firattak
	IF ~InParty("Edwin")
See("Edwin")~ THEN EXTERN ~EDWINJ~ firattak
	IF ~InParty("Dar")
See("Dar")~ THEN EXTERN ~DARJ~ firattak
	IF ~InParty("Taffic")
See("Taffic")~ THEN EXTERN ~TAFFICJ~ firattak
	IF ~InParty("Leina")
See("Leina")~ THEN EXTERN ~LEINAJ~ firattak
	IF ~InParty("Melora")
See("Melora")~ THEN EXTERN ~MELORAJ~ firattak
	IF ~InParty("Korgan")
See("Korgan")~ THEN EXTERN ~KORGANJ~ firattak
	IF ~InParty("Minsc")
See("Minsc")~ THEN EXTERN ~MINSCJ~ firattak
END

IF ~~ THEN BEGIN legacy406a
	SAY @177
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN legacy407
	SAY @178
	IF ~~ THEN EXTERN ~FIRKRA02~ firecr06
END

IF ~~ THEN BEGIN legacy408
	SAY @179
	IF ~~ THEN DO ~SetGlobal("VP_AngelosLegacy","GLOBAL",4)
RealSetGlobalTimer("VP_FirAttacksParty","GLOBAL",60)~ EXIT //Firkraag's quest accepted - escape from the area within half a minute and do not come back untill the quest is finished.
END

IF ~Global("VP_Firkrag_Is_Dead","GLOBAL",1)~ THEN BEGIN legacy409
	SAY @180
	IF ~OR(2)
!InParty("Leina")
Dead("Leina")~ THEN DO ~SetGlobal("VP_Firkrag_Is_Dead","GLOBAL",2)~ EXIT
	IF ~InParty("Leina")
!Dead("Leina")~ THEN EXTERN ~LEINAJ~ firkdead1
END
END

EXTEND_BOTTOM ~FIRKRA01~ 9
 IF ~InParty("Sharteel")
See("Sharteel")~ THEN EXTERN ~SHARTJ~ legacy11
END

APPEND ~FIRKRA01~

IF ~~ THEN BEGIN shartee1
	SAY @181
	IF ~~ THEN GOTO shartee2
END
	 
IF ~~ THEN BEGIN shartee2
	SAY @182
	IF ~~ THEN EXTERN ~SHARTJ~ legacy13
END

IF ~~ THEN BEGIN shartee3
	SAY @183
	IF ~~ THEN EXTERN ~SHARTJ~ legacy14
END

IF ~~ THEN BEGIN shartee4
	SAY @184
	IF ~~ THEN GOTO shartee5
END

IF ~~ THEN BEGIN shartee5
	SAY @185
	IF ~~ THEN GOTO shartee6
END

IF ~~ THEN BEGIN shartee6
	SAY @186
	IF ~~ THEN EXTERN ~SHARTJ~ legacy15
END

IF ~~ THEN BEGIN shartee7
	SAY @187
	IF ~~ THEN EXTERN ~SHARTJ~ legacy17
END

IF ~~ THEN BEGIN shartee8
	SAY @188
	IF ~~ THEN EXTERN ~SHARTJ~ legacy18
END

IF ~~ THEN BEGIN shartee9
	SAY @189
	IF ~~ THEN GOTO shartee10
END

IF ~~ THEN BEGIN shartee10
	SAY @190
	IF ~~ THEN GOTO shartee11
END

IF ~~ THEN BEGIN shartee11
	SAY @191
	IF ~~ THEN EXTERN ~SHARTJ~ legacy20
END

IF ~~ THEN BEGIN shartee12
	SAY @192
	IF ~~ THEN GOTO shartee13
END

IF ~~ THEN BEGIN shartee13
	SAY @193
	IF ~~ THEN GOTO shartee14
END

IF ~~ THEN BEGIN shartee14
	SAY @194
	IF ~~ THEN DO ~SetGlobal("VP_AngelosLegacy","GLOBAL",1)
RevealAreaOnMap("AR1200")
EscapeArea()~ UNSOLVED_JOURNAL @5275 EXIT
END
END

EXTEND_BOTTOM ~GARREN~ 35
 IF ~InParty("Sharteel")
See("Sharteel")~ THEN EXTERN ~SHARTJ~ legacy201
END

EXTEND_BOTTOM ~GARREN~ 36
 IF ~InParty("Sharteel")
See("Sharteel")~ THEN EXTERN ~SHARTJ~ legacy201
END

EXTEND_BOTTOM ~GARREN~ 37
 IF ~InParty("Sharteel")
See("Sharteel")~ THEN EXTERN ~SHARTJ~ legacy201
END

APPEND ~GARREN~

IF ~~ THEN BEGIN shartee15
	SAY @195
	IF ~~ THEN GOTO shartee16
END

IF ~~ THEN BEGIN shartee16
	SAY @196
	IF ~~ THEN EXTERN ~SHARTJ~ legacy202
END

IF ~~ THEN BEGIN shartee17
	SAY @197
	IF ~~ THEN GOTO shartee18
END

IF ~~ THEN BEGIN shartee18
	SAY @198
	IF ~~ THEN EXTERN ~SHARTJ~ legacy203
END

IF ~~ THEN BEGIN shartee19
	SAY @199
 IF ~!IsValidForPartyDialog("Minsc")
!IsValidForPartyDialog("Aerie")
!IsValidForPartyDialog("Jan")~ THEN DO ~SetGlobal("Kidnap","GLOBAL",3)
SetGlobalTimer("ddKidnapTimer","GLOBAL",THREE_DAYS)
~ UNSOLVED_JOURNAL @5277 EXIT
 IF ~IsValidForPartyDialog("Minsc")~ THEN DO ~SetGlobal("Kidnap","GLOBAL",3)
SetGlobalTimer("ddKidnapTimer","GLOBAL",THREE_DAYS)~ UNSOLVED_JOURNAL @5277 EXTERN ~MINSCJ~ 99
 IF ~!IsValidForPartyDialog("Minsc")
IsValidForPartyDialog("Aerie")~ THEN DO ~SetGlobal("Kidnap","GLOBAL",3)
SetGlobalTimer("ddKidnapTimer","GLOBAL",THREE_DAYS)~ UNSOLVED_JOURNAL @5277 EXTERN ~AERIEJ~ 57
 IF ~!IsValidForPartyDialog("Minsc")
!IsValidForPartyDialog("Aerie")
IsValidForPartyDialog("Jan")~ THEN DO ~SetGlobal("Kidnap","GLOBAL",3)
SetGlobalTimer("ddKidnapTimer","GLOBAL",THREE_DAYS)~ UNSOLVED_JOURNAL @5277 EXTERN ~JANJ~ 98
END
END

EXTEND_BOTTOM ~VAELASA~ 8
 IF ~InParty("Sharteel")
See("Sharteel")~ THEN EXTERN ~SHARTJ~ legacy211
END

APPEND ~VAELASA~

IF ~~ THEN BEGIN shartee20
	SAY @201
	IF ~~ THEN GOTO shartee21
END
	
IF ~~ THEN BEGIN shartee21
	SAY @202
	IF ~~ THEN GOTO shartee22
END
	
IF ~~ THEN BEGIN shartee22
	SAY @203
	IF ~~ THEN EXTERN ~SHARTJ~ legacy212
END

IF ~~ THEN BEGIN shartee23
	SAY @204
	IF ~~ THEN EXTERN ~SHARTJ~ legacy213
END

IF ~~ THEN BEGIN shartee24
	SAY @205
	IF ~~ THEN EXTERN ~SHARTJ~ legacy214
END

IF ~~ THEN BEGIN shartee25
	SAY @206
	IF ~~ THEN GOTO shartee26
END

IF ~~ THEN BEGIN shartee26
	SAY @207
	IF ~~ THEN EXTERN ~SHARTJ~ legacy216
END

IF ~~ THEN BEGIN shartee27
	SAY @208
	IF ~~ THEN EXTERN ~SHARTJ~ legacy218
END
END

APPEND ~VICONIJ~

IF ~~ THEN BEGIN driadsint_vic
	SAY @209
	IF ~True()~ THEN DO ~SetGlobal("frLeaveDryads","ar1200",1)
EraseJournalEntry(34092)
EraseJournalEntry(34093)
ActionOverride("vaelasa",EscapeArea())~ SOLVED_JOURNAL @5276 EXIT
	IF ~InParty("Edwin")
See("Edwin")~ THEN EXTERN ~EDWINJ~ driadsint_edw1
	IF ~InParty("Jan")
See("Jan")~ THEN EXTERN ~JANJ~ driadsint_jan
	IF ~InParty("Korgan")
See("Korgan")~ THEN EXTERN ~KORGANJ~ driadsint_kor
END
END

APPEND ~KORGANJ~

IF ~~ THEN BEGIN driadsint_kor
	SAY @210
	IF ~True()~ THEN DO ~SetGlobal("frLeaveDryads","ar1200",1)
EraseJournalEntry(34092)
EraseJournalEntry(34093)
ActionOverride("vaelasa",EscapeArea())~ SOLVED_JOURNAL @5276 EXIT
	IF ~InParty("Edwin")
See("Edwin")~ THEN EXTERN ~EDWINJ~ driadsint_edw1
	IF ~InParty("Jan")
See("Jan")~ THEN EXTERN ~JANJ~ driadsint_jan
END
END

APPEND ~JANJ~

IF ~~ THEN BEGIN driadsint_jan
	SAY @211
	IF ~~ THEN GOTO driadsint_jan1
END

IF ~~ THEN BEGIN driadsint_jan1
	SAY @212
	IF ~True()~ THEN DO ~SetGlobal("frLeaveDryads","ar1200",1)
EraseJournalEntry(34092)
EraseJournalEntry(34093)
ActionOverride("vaelasa",EscapeArea())~ SOLVED_JOURNAL @5276 EXIT
	IF ~InParty("Edwin")
See("Edwin")~ THEN EXTERN ~EDWINJ~ driadsint_edw1
END
END

APPEND ~EDWINJ~

IF ~~ THEN BEGIN driadsint_edw1
	SAY @213
	IF ~True()~ THEN EXTERN ~SHARTJ~ legacy220
	IF ~InParty("Melora")
See("Melora")~ THEN EXTERN ~MELORAJ~ driadsint_mel1
END

IF ~~ THEN BEGIN driadsint_edw2
	SAY @214
	IF ~~ THEN EXTERN ~SHARTJ~ legacy222
END

IF ~~ THEN BEGIN driadsint_edw3
	SAY @215
	IF ~~ THEN GOTO driadsint_edw4
END	

IF ~~ THEN BEGIN driadsint_edw4
	SAY @216
	IF ~~ THEN GOTO driadsint_edw5
END	

IF ~~ THEN BEGIN driadsint_edw5
	SAY @217	
	IF ~~ THEN EXTERN ~SHARTJ~ legacy223
END

IF ~~ THEN BEGIN driadsint_edw6
	SAY @218	
	IF ~~ THEN EXTERN ~MELORAJ~ driadsint_mel2
END
END

APPEND ~MINSCJ~

IF ~~ THEN BEGIN driadsint_min1
	SAY @219 
	IF ~True()~ THEN EXTERN ~MELORAJ~ driadsint_mel8
	IF ~InParty("Hrothgar")
See("Hrothgar")~ THEN EXTERN ~HROTHJ~ driadsint_hrt1
	IF ~InParty("Leina")
See("Leina")~ THEN EXTERN ~LEINAJ~ driadsint_lei1
END

IF ~~ THEN BEGIN driadsint_min2
	SAY @220
	IF ~~ THEN EXTERN ~SHARTJ~ legacy224
END

IF ~~ THEN BEGIN driadsint_min3
	SAY @221
	IF ~~ THEN DO ~SetGlobal("frLeaveDryads","ar1200",1)
EraseJournalEntry(34092)
EraseJournalEntry(34093)
ActionOverride("vaelasa",EscapeArea())~ SOLVED_JOURNAL @5276 EXIT
END
END

APPEND ~FIRORC02~

IF WEIGHT #-1 ~NumTimesTalkedTo(0)~ THEN BEGIN orcsflee1
 SAY @222
 IF ~OR(2)
!InParty("Sharteel")
!See("Sharteel")~ THEN REPLY @223 GOTO 2
 IF ~OR(2)
!InParty("Sharteel")
!See("Sharteel")~ THEN REPLY @224 GOTO 1
 IF ~OR(2)
!InParty("Sharteel")
!See("Sharteel")~ THEN REPLY @225 GOTO 3
 IF ~OR(2)
InParty("Sharteel")
See("Sharteel")~ THEN EXTERN ~SHARTJ~ legacy310 
END

IF ~~ THEN BEGIN orcsflee2
 SAY @226
 IF ~~ THEN EXTERN ~FIRORC03~ orcs2flee1 
END

IF ~~ THEN BEGIN orcsflee3
 SAY @227
 IF ~~ THEN EXTERN ~FIRORC03~ orcs2flee2 
END
END

APPEND ~FIRORC03~

IF ~~ THEN BEGIN orcs2flee1
	SAY @228
	IF ~~ THEN EXTERN ~SHARTJ~ legacy311
END

IF ~~ THEN BEGIN orcs2flee2
	SAY @229
	IF ~~ THEN EXTERN ~SHARTJ~ legacy312
END
END

EXTEND_BOTTOM ~SAMIA~ 14
 IF ~InParty("Sharteel")
See("Sharteel")~ THEN UNSOLVED_JOURNAL @5278 EXTERN ~SHARTJ~ legacy320

END

EXTEND_BOTTOM ~SAMIA~ 18
 IF ~InParty("Sharteel")
See("Sharteel")~ THEN SOLVED_JOURNAL @5279 EXTERN ~SHARTJ~ legacy322
END

REPLACE_ACTION_TEXT FIRWLF01
~OpenDoor("DOOR43")[^!]*OpenDoor("DOOR44")[^!]*ActionOverride("firwlf02",MoveToPointNoInterrupt([986.2033]))[^!]*MoveToPointNoInterrupt([1066.2095])[^!]*SetGlobal("WerewolfMove","LOCALS",1)~
~OpenDoor("DOOR43")
OpenDoor("DOOR44")
CreateCreature("durbin",[717.407],10)
ActionOverride("firwlf02",MoveToPointNoInterrupt([986.2033]))
MoveToPointNoInterrupt([1066.2095])
SetGlobal("WerewolfMove","LOCALS",1)~

REPLACE_ACTION_TEXT FIRWLF01
~CreateCreature("wolfwe02",[1093.1867],0)[^!]*CreateCreature("wolfwe02",[1267.1986],0)[^!]*ActionOverride("firwlf02",ForceSpell(Myself,WOLFWERE_CHANGE))[^!]*ForceSpell(Myself,GREATER_WOLFWERE_CHANGE)~
~CreateCreature("durbin",[717.407],10)
CreateCreature("wolfwe02",[1093.1867],0)
CreateCreature("wolfwe02",[1267.1986],0)
ActionOverride("firwlf02",ForceSpell(Myself,WOLFWERE_CHANGE))
ForceSpell(Myself,GREATER_WOLFWERE_CHANGE)~

EXTEND_BOTTOM ~FIRKRA02~ 21
 IF ~InParty("Sharteel")
See("Sharteel")
Global("VP_Lit_Firecracker","GLOBAL",0)
!Global("VP_AngelosLegacy","GLOBAL",0)~ THEN DO ~SetGlobal("VP_Lit_Firecracker","GLOBAL",1)~ GOTO firecr01
END

REPLACE ~FIRKRA02~

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #43191 /* ~Do you still demand a battle? You shall have one, if you wish, but you will not win. Do not be foolish, <PRO_GIRLBOY>.~ */
  IF ~OR(3)
!InParty("Sharteel")
!See("Sharteel")
!Global("VP_Lit_Firecracker","GLOBAL",0)~ THEN REPLY #43192 /* ~I will leave for now, but I will return.~ */ GOTO 20
  IF ~OR(3)
!InParty("Sharteel")
!See("Sharteel")
!Global("VP_Lit_Firecracker","GLOBAL",0)~ THEN REPLY #43193 /* ~I will fight you, and I shall win. I can do no other.~ */ GOTO 25
  IF ~InParty("Sharteel")
See("Sharteel")
Global("VP_Lit_Firecracker","GLOBAL",0)
!Global("VP_AngelosLegacy","GLOBAL",0)~ THEN DO ~SetGlobal("VP_Lit_Firecracker","GLOBAL",1)~ GOTO firecr01
END
END

EXTEND_BOTTOM ~FIRKRA02~ 32
 IF ~InParty("Sharteel")
See("Sharteel")
Global("VP_Lit_Firecracker","GLOBAL",0)
!Global("VP_AngelosLegacy","GLOBAL",0)~ THEN DO ~SetGlobal("VP_Lit_Firecracker","GLOBAL",1)~ GOTO firecr01
END

APPEND ~FIRKRA02~

IF ~~ THEN BEGIN firecr01
	SAY @232
	IF ~~ THEN EXTERN ~SHARTJ~ legacy401
END

IF ~~ THEN BEGIN firecr02
	SAY @233
	IF ~~ THEN EXTERN ~SHARTJ~ legacy402
END

IF ~~ THEN BEGIN firecr03
	SAY @234
=
	@235
=
	@236
	IF ~~ THEN EXTERN ~SHARTJ~ legacy403
END

IF ~~ THEN BEGIN firecr04
	SAY @237
=
	@238
=
	@239
=
	@240
	IF ~Global("VP_Know_Durbin","GLOBAL",1)~ THEN EXTERN ~SHARTJ~ legacy404
	IF ~Global("VP_Know_Durbin","GLOBAL",0)~ THEN EXTERN ~SHARTJ~ legacy405
END

IF ~~ THEN BEGIN firecr05
	SAY @241
=
	@242
= 
	@243
	IF ~~ THEN REPLY @244 EXTERN ~SHARTJ~ legacy406
	IF ~~ THEN REPLY @245 EXTERN ~SHARTJ~ legacy406
	IF ~~ THEN REPLY @246 EXTERN ~SHARTJ~ legacy407
	IF ~~ THEN REPLY @247 EXTERN ~SHARTJ~ legacy405a
END

IF ~~ THEN BEGIN firecr06
	SAY @248
=
	@249
=
	@250
	IF ~Global("VP_Know_Durbin","GLOBAL",0)~ THEN REPLY @251 GOTO firecr07
	IF ~Global("VP_Know_Durbin","GLOBAL",0)~ THEN REPLY @252 GOTO firecr07
	IF ~Global("VP_Know_Durbin","GLOBAL",0)~ THEN REPLY @253 GOTO firecr07
	IF ~Global("VP_Know_Durbin","GLOBAL",0)~ THEN REPLY @254 GOTO firecr09
	IF ~Global("VP_Know_Durbin","GLOBAL",1)~ THEN REPLY @255 GOTO firecr10
	IF ~Global("VP_Know_Durbin","GLOBAL",1)~ THEN REPLY @256 GOTO firecr10
	IF ~Global("VP_Know_Durbin","GLOBAL",1)~ THEN REPLY @257 GOTO firecr10
	IF ~~ THEN REPLY @254 GOTO firecr09
END

IF ~~ THEN BEGIN firecr07
	SAY @258
=
	@259
=
	@260
=
	@261
	IF ~~ THEN REPLY @262 GOTO firecr08
	IF ~~ THEN REPLY @263 GOTO firecr08
	IF ~~ THEN REPLY @264 GOTO firecr08
	IF ~~ THEN REPLY @265 EXTERN ~SHARTJ~ legacy405a
END

IF ~~ THEN BEGIN firecr08
	SAY @266
= 
	@267
	IF ~~ THEN EXTERN ~SHARTJ~ legacy408
END

IF ~~ THEN BEGIN firecr09
	SAY @268
=
	@269
	IF ~~ THEN REPLY @251 GOTO firecr07
	IF ~~ THEN REPLY @270 GOTO firecr07
	IF ~~ THEN REPLY @253 GOTO firecr07
END

IF ~~ THEN BEGIN firecr10
	SAY @100
=
	@117
=
	@200
=
	@230
	IF ~~ THEN REPLY @262 GOTO firecr08
	IF ~~ THEN REPLY @231 GOTO firecr08
	IF ~~ THEN REPLY @264 GOTO firecr08
	IF ~~ THEN REPLY @265 EXTERN ~SHARTJ~ legacy405a
END
END