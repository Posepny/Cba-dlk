BACKUP \~CDB/backup\~ AUTHOR
\~\"https://www.baldursgateworld.fr/lacouronne/le-champion-de-bhaal/\"\~
VERSION \~BGT v1.1 - 2019\~

LANGUAGE \~Francais\~ \~french\~ \~CDB\\LANGUAGE\\French\\Setup.tra\~

BEGIN \@4

COMPILE \~CDB\\CRE\\BCS\\COEKILI2.baf\~ \~override\~ USING
\~CDB\\DLG\\COEKILIS.tra\~ // gestion du combat COMPILE
\~CDB\\CRE\\BCS\\COEKILI3.baf\~ \~override\~ USING
\~CDB\\DLG\\COEKILIS.tra\~ // Ekilis allié du groupe

COMPILE \~CDB\\AREA\\BCS\\COT014TP.baf\~ \~override\~ // Activation TP
COM014 COMPILE \~CDB\\AREA\\BCS\\COT015TP.baf\~ \~override\~ //
Activation TP COM015 COMPILE \~CDB\\AREA\\BCS\\COT01515.baf\~
\~override\~ COMPILE \~CDB\\AREA\\BCS\\COM015.baf\~ \~override\~ USING
\~CDB\\LANGUAGE\\FRENCH\\COM015.TRA\~

LOAD_TRA \~CDB\\LANGUAGE\\FRENCH\\OBJETS.TRA\~ // Message d\'Entar COPY
\~CDB\\ITM\\SCRP06.itm\~ \~override\~ SAY NAME2 \@5132 SAY DESC \@5133

ADD_PROJECTILE \~CDB\\PRO\\COSKUF1.pro\~ \~crâne de Feu\~ COPY
\~CDB\\PRO\\COSKUF1.pro\~ \~override\~

// Crâne de feu COPY \~CDB\\ITM\\MISCP57.itm\~ \~override\~ LPF
ALTER_SPELL_HEADER INT_VAR projectile = (IDS_OF_SYMBOL (projectl
COSKUF1) + 1) END WRITE_SHORT 0x09C \~%COSKUF1%\~ SAY NAME1 \@5114 SAY
NAME2 \@5114 SAY DESC \@5115 //SAY UNIDENTIFIED_DESC BUT_ONLY

COMPILE \~CDB\\CRE\\BCS\\COMASSE1.baf\~ \~override\~ USING
\~CDB\\DLG\\COMASSE4.tra\~

COPY \~CDB\\SPELL\\COM017TP.spl\~ \~override\~ // Téléport épreuves

EXTEND_TOP \~AR7216.bcs\~ \~CDB\\AREA\\BCS\\AR7216.baf\~ USING
\~CDB\\LANGUAGE\\FRENCH\\AR7216.TRA\~ // Auberge Heaume et la cape
COMPILE \~AR7217.bcs\~ \~CDB\\AREA\\BCS\\AR7217.baf\~ // Auberge Heaume
et la cape: chambre double EXTEND_TOP \~AR7218.bcs\~
\~CDB\\AREA\\BCS\\AR7218.baf\~ USING
\~CDB\\LANGUAGE\\FRENCH\\AR0000.TRA\~ //Auberge Heaume et la cape:
chambre du Protecteur

COMPILE \~CDB\\AREA\\BCS\\COM026.baf\~ \~override\~ USING
\~CDB\\LANGUAGE\\FRENCH\\COM026.TRA\~ COMPILE
\~CDB\\AREA\\BCS\\COM027.baf\~ \~override\~ USING
\~CDB\\LANGUAGE\\FRENCH\\COM027.TRA\~ COMPILE \~CDB\\DLG\\COBARNI.d\~
\~override\~ USING \~CDB\\DLG\\COBARNI.tra\~

// Pnj BG1 COPY_EXISTING \~EDWINP.dlg\~ \~override\~ DECOMPILE_AND_PATCH
BEGIN REPLACE_TEXTUALLY \~GlobalLT(\"ENDOFBG1\",\"GLOBAL\",2)\~
\~GlobalLT(\"ENDOFBG1\",\"GLOBAL\",2)
Global(\"Protecteur_baldur\",\"GLOBAL\",0)\~ REPLACE_TEXTUALLY
\~Global(\"ENDOFBG1\",\"GLOBAL\",2)\~
\~Global(\"ENDOFBG1\",\"GLOBAL\",2)
Global(\"Protecteur_baldur\",\"GLOBAL\",0)\~ END BUT_ONLY_IF_IT_CHANGES
COMPILE \~CDB\\DLG\\PNJ_heros\\EDWINP.d\~ \~override\~ USING
\~CDB\\DLG\\PNJ_heros\\EDWINP.tra\~

COPY_EXISTING \~AJANTP.dlg\~ \~override\~ DECOMPILE_AND_PATCH BEGIN
REPLACE_TEXTUALLY \~GlobalLT(\"ENDOFBG1\",\"GLOBAL\",2)\~
\~GlobalLT(\"ENDOFBG1\",\"GLOBAL\",2)
Global(\"Protecteur_baldur\",\"GLOBAL\",0)\~ END BUT_ONLY_IF_IT_CHANGES
COMPILE \~CDB\\DLG\\PNJ_heros\\AJANTP.d\~ \~override\~ USING
\~CDB\\DLG\\PNJ_heros\\AJANTP.tra\~

COPY_EXISTING \~SHARTP.dlg\~ \~override\~ DECOMPILE_AND_PATCH BEGIN
REPLACE_TEXTUALLY \~GlobalLT(\"ENDOFBG1\",\"GLOBAL\",2)\~
\~GlobalLT(\"ENDOFBG1\",\"GLOBAL\",2)
Global(\"Protecteur_baldur\",\"GLOBAL\",0)\~ END BUT_ONLY_IF_IT_CHANGES
COMPILE \~CDB\\DLG\\PNJ_heros\\SHARTP.d\~ \~override\~ USING
\~CDB\\DLG\\PNJ_heros\\SHARTP.tra\~

COPY_EXISTING \~CORANP.dlg\~ \~override\~ DECOMPILE_AND_PATCH BEGIN
REPLACE_TEXTUALLY \~GlobalLT(\"ENDOFBG1\",\"GLOBAL\",2)\~
\~GlobalLT(\"ENDOFBG1\",\"GLOBAL\",2)
Global(\"Protecteur_baldur\",\"GLOBAL\",0)\~ END BUT_ONLY_IF_IT_CHANGES
COMPILE \~CDB\\DLG\\PNJ_heros\\CORANP.d\~ \~override\~ USING
\~CDB\\DLG\\PNJ_heros\\CORANP.tra\~

COPY_EXISTING \~YESLIP.dlg\~ \~override\~ DECOMPILE_AND_PATCH BEGIN
REPLACE_TEXTUALLY \~GlobalLT(\"ENDOFBG1\",\"GLOBAL\",2)\~
\~GlobalLT(\"ENDOFBG1\",\"GLOBAL\",2)
Global(\"Protecteur_baldur\",\"GLOBAL\",0)\~ END BUT_ONLY_IF_IT_CHANGES
COMPILE \~CDB\\DLG\\PNJ_heros\\YESLIP.d\~ \~override\~ USING
\~CDB\\DLG\\PNJ_heros\\YESLIP.tra\~

COPY_EXISTING \~IMOENP.dlg\~ \~override\~ DECOMPILE_AND_PATCH BEGIN
REPLACE_TEXTUALLY \~GlobalLT(\"ENDOFBG1\",\"GLOBAL\",2)\~
\~GlobalLT(\"ENDOFBG1\",\"GLOBAL\",2)
Global(\"Protecteur_baldur\",\"GLOBAL\",0)\~ REPLACE_TEXTUALLY
\~NumberOfTimesTalkedTo(0)\~ \~NumberOfTimesTalkedTo(0)
Global(\"Protecteur_baldur\",\"GLOBAL\",0)\~ REPLACE_TEXTUALLY
\~True()\~ \~True() Global(\"Protecteur_baldur\",\"GLOBAL\",0)\~ END
BUT_ONLY_IF_IT_CHANGES COMPILE \~CDB\\DLG\\PNJ_heros\\IMOENP.d\~
\~override\~ USING \~CDB\\DLG\\PNJ_heros\\IMOENP.tra\~

COPY_EXISTING \~XANP.dlg\~ \~override\~ DECOMPILE_AND_PATCH BEGIN
REPLACE_TEXTUALLY \~GlobalLT(\"ENDOFBG1\",\"GLOBAL\",2)\~
\~GlobalLT(\"ENDOFBG1\",\"GLOBAL\",2)
Global(\"Protecteur_baldur\",\"GLOBAL\",0)\~ REPLACE_TEXTUALLY
\~Global(\"IWasKickedOut\",\"LOCALS\",0) HappinessLT(Myself,0)\~
\~Global(\"IWasKickedOut\",\"LOCALS\",0) HappinessLT(Myself,0)
Global(\"Protecteur_baldur\",\"GLOBAL\",0)\~ END BUT_ONLY_IF_IT_CHANGES
COMPILE \~CDB\\DLG\\PNJ_heros\\XANP.d\~ \~override\~ USING
\~CDB\\DLG\\PNJ_heros\\XANP.tra\~

COPY_EXISTING \~JAHEIRAP.dlg\~ \~override\~ DECOMPILE_AND_PATCH BEGIN
REPLACE_TEXTUALLY \~GlobalLT(\"ENDOFBG1\",\"GLOBAL\",2)\~
\~GlobalLT(\"ENDOFBG1\",\"GLOBAL\",2)
Global(\"Protecteur_baldur\",\"GLOBAL\",0)\~ REPLACE_TEXTUALLY
\~Global(\"ENDOFBG1\",\"GLOBAL\",2)\~
\~Global(\"ENDOFBG1\",\"GLOBAL\",2)
Global(\"Protecteur_baldur\",\"GLOBAL\",0)\~ REPLACE_TEXTUALLY
\~False()\~ \~False() Global(\"Protecteur_baldur\",\"GLOBAL\",0)\~
REPLACE_TEXTUALLY \~Global(\"Leave_Jaheira\",\"GLOBAL\",1)\~
\~Global(\"Leave_Jaheira\",\"GLOBAL\",1)
Global(\"Protecteur_baldur\",\"GLOBAL\",0)\~ END BUT_ONLY_IF_IT_CHANGES
COMPILE \~CDB\\DLG\\PNJ_heros\\JAHEIRAP.d\~ \~override\~ USING
\~CDB\\DLG\\PNJ_heros\\JAHEIRAP.tra\~

COPY_EXISTING \~KHALIP.dlg\~ \~override\~ DECOMPILE_AND_PATCH BEGIN
REPLACE_TEXTUALLY \~GlobalLT(\"ENDOFBG1\",\"GLOBAL\",2)\~
\~GlobalLT(\"ENDOFBG1\",\"GLOBAL\",2)
Global(\"Protecteur_baldur\",\"GLOBAL\",0)\~ REPLACE_TEXTUALLY
\~False()\~ \~False() Global(\"Protecteur_baldur\",\"GLOBAL\",0)\~
REPLACE_TEXTUALLY \~Dead(\"Jaheira\")
Global(\"IWasKickedOut\",\"LOCALS\",0)\~ \~Dead(\"Jaheira\")
Global(\"IWasKickedOut\",\"LOCALS\",0)
Global(\"Protecteur_baldur\",\"GLOBAL\",0)\~ REPLACE_TEXTUALLY
\~!Dead(\"Jaheira\") Global(\"IWasKickedOut\",\"LOCALS\",0)\~
\~Dead(\"Jaheira\") Global(\"IWasKickedOut\",\"LOCALS\",0)
Global(\"Protecteur_baldur\",\"GLOBAL\",0)\~ END BUT_ONLY_IF_IT_CHANGES
COMPILE \~CDB\\DLG\\PNJ_heros\\KHALIP.d\~ \~override\~ USING
\~CDB\\DLG\\PNJ_heros\\KHALIP.tra\~

COPY_EXISTING \~KIVANP.dlg\~ \~override\~ DECOMPILE_AND_PATCH BEGIN
REPLACE_TEXTUALLY \~GlobalLT(\"ENDOFBG1\",\"GLOBAL\",2)\~
\~GlobalLT(\"ENDOFBG1\",\"GLOBAL\",2)
Global(\"Protecteur_baldur\",\"GLOBAL\",0)\~ END BUT_ONLY_IF_IT_CHANGES
COMPILE \~CDB\\DLG\\PNJ_heros\\KIVANP.d\~ \~override\~ USING
\~CDB\\DLG\\PNJ_heros\\KIVANP.tra\~

COPY_EXISTING \~KAGAIP.dlg\~ \~override\~ DECOMPILE_AND_PATCH BEGIN
REPLACE_TEXTUALLY \~GlobalLT(\"ENDOFBG1\",\"GLOBAL\",2)\~
\~GlobalLT(\"ENDOFBG1\",\"GLOBAL\",2)
Global(\"Protecteur_baldur\",\"GLOBAL\",0)\~ END BUT_ONLY_IF_IT_CHANGES
COMPILE \~CDB\\DLG\\PNJ_heros\\KAGAIP.d\~ \~override\~ USING
\~CDB\\DLG\\PNJ_heros\\KAGAIP.tra\~

COPY_EXISTING \~VICONIP.dlg\~ \~override\~ DECOMPILE_AND_PATCH BEGIN
REPLACE_TEXTUALLY \~GlobalLT(\"ENDOFBG1\",\"GLOBAL\",2)\~
\~GlobalLT(\"ENDOFBG1\",\"GLOBAL\",2)
Global(\"Protecteur_baldur\",\"GLOBAL\",0)\~ REPLACE_TEXTUALLY
\~Global(\"ENDOFBG1\",\"GLOBAL\",2)\~
\~Global(\"ENDOFBG1\",\"GLOBAL\",2)
Global(\"Protecteur_baldur\",\"GLOBAL\",0)\~ END BUT_ONLY_IF_IT_CHANGES
COPY_EXISTING \~BGVICONI.dlg\~ \~override\~ DECOMPILE_AND_PATCH BEGIN
REPLACE_TEXTUALLY \~NumberOfTimesTalkedTo(0)\~
\~NumberOfTimesTalkedTo(0) Global(\"Protecteur_baldur\",\"GLOBAL\",0)\~
REPLACE_TEXTUALLY \~True()\~ \~True()
Global(\"Protecteur_baldur\",\"GLOBAL\",0)\~ END BUT_ONLY_IF_IT_CHANGES
COMPILE \~CDB\\DLG\\PNJ_heros\\VICONIP.d\~ \~override\~ USING
\~CDB\\DLG\\PNJ_heros\\VICONIP.tra\~

COPY_EXISTING \~MINSCP.dlg\~ \~override\~ DECOMPILE_AND_PATCH BEGIN
REPLACE_TEXTUALLY \~GlobalLT(\"ENDOFBG1\",\"GLOBAL\",2)\~
\~GlobalLT(\"ENDOFBG1\",\"GLOBAL\",2)
Global(\"Protecteur_baldur\",\"GLOBAL\",0)\~ REPLACE_TEXTUALLY
\~Global(\"ENDOFBG1\",\"GLOBAL\",2)\~
\~Global(\"ENDOFBG1\",\"GLOBAL\",2)
Global(\"Protecteur_baldur\",\"GLOBAL\",0)\~ END BUT_ONLY_IF_IT_CHANGES
COMPILE \~CDB\\DLG\\PNJ_heros\\MINSCP.d\~ \~override\~ USING
\~CDB\\DLG\\PNJ_heros\\MINSCP.tra\~

COPY_EXISTING \~DYNAP.dlg\~ \~override\~ DECOMPILE_AND_PATCH BEGIN
REPLACE_TEXTUALLY \~GlobalLT(\"ENDOFBG1\",\"GLOBAL\",2)\~
\~GlobalLT(\"ENDOFBG1\",\"GLOBAL\",2)
Global(\"Protecteur_baldur\",\"GLOBAL\",0)\~ END BUT_ONLY_IF_IT_CHANGES
COMPILE \~CDB\\DLG\\PNJ_heros\\DYNAP.d\~ \~override\~ USING
\~CDB\\DLG\\PNJ_heros\\DYNAP.tra\~

COPY_EXISTING \~MONTAP.dlg\~ \~override\~ DECOMPILE_AND_PATCH BEGIN
REPLACE_TEXTUALLY \~GlobalLT(\"ENDOFBG1\",\"GLOBAL\",2)\~
\~GlobalLT(\"ENDOFBG1\",\"GLOBAL\",2)
Global(\"Protecteur_baldur\",\"GLOBAL\",0)\~ END BUT_ONLY_IF_IT_CHANGES
COMPILE \~CDB\\DLG\\PNJ_heros\\MONTAP.d\~ \~override\~ USING
\~CDB\\DLG\\PNJ_heros\\MONTAP.tra\~

COPY_EXISTING \~XZARP.dlg\~ \~override\~ DECOMPILE_AND_PATCH BEGIN
REPLACE_TEXTUALLY \~GlobalLT(\"ENDOFBG1\",\"GLOBAL\",2)\~
\~GlobalLT(\"ENDOFBG1\",\"GLOBAL\",2)
Global(\"Protecteur_baldur\",\"GLOBAL\",0)\~ END BUT_ONLY_IF_IT_CHANGES
COMPILE \~CDB\\DLG\\PNJ_heros\\XZARP.d\~ \~override\~ USING
\~CDB\\DLG\\PNJ_heros\\XZARP.tra\~

// Nouveaux PNJ COMPILE \~CDB\\DLG\\OSWALP.d\~ \~override\~ USING
\~CDB\\DLG\\OSWALP.tra\~ APPEND \~PDIALOG.2da\~ \~OSWALD OSWALP OSWALJ
\*\*\* OSWALP OSWALJ \*\*\* \*\*\*\~ UNLESS \~OSWALD\~

COMPILE \~CDB\\DLG\\GEOFFRP.d\~ \~override\~ USING
\~CDB\\DLG\\GEOFFRP.tra\~

APPEND \~PDIALOG.2da\~ \~GEOFFRO GEOFFRP GEOFFRJ \*\*\* GEOFFRP GEOFFRJ
\*\*\* \*\*\*\~ UNLESS \~GEOFFRO\~

COMPILE \~CDB\\DLG\\ALINEP.d\~ \~override\~ USING
\~CDB\\DLG\\ALINEP.tra\~

APPEND \~PDIALOG.2da\~ \~ALINEA ALINEP ALINEJ \*\*\* ALINEP ALINEJ
\*\*\* \*\*\*\~ UNLESS \~ALINEA\~

// Vérification installation
\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*
// Pré-requis: installation de BGT //REQUIRE_PREDICATE (GAME_IS \~bgt\~)
\@5

/\* // Pré-requis: installation de TOB REQUIRE_PREDICATE (FILE_EXISTS
\~tobex.dll\~) \@6 \*/

// Vérification de l\'installation de NI et chargement des créatures
avec animations optionnelles // MOD IA installée ACTION_IF
(FILE_EXISTS_IN_GAME \"setup-infinityanimations.tp2\") BEGIN PRINT \@7
LOAD_TRA \~CDB\\LANGUAGE\\Noms.TRA\~

// Partie 1 \*\*\*\*\*\*\*\*\*\*\*\*\*\*\* // Animation Marchand -\>
Marchand Eau profonde (auberge du Heaume et de la cape) - AR7216 /
0xc800 -\> 0x5d57 ACTION_IF (FILE_EXISTS_IN_GAME \"µbag1.bam\") BEGIN
PRINT \~Marchand\~ COPY \~CDB\\CRE\\Animation\\COMER01.cre\~
\~override\~ // Marchand SAY NAME1 \@6

COPY \~CDB\\CRE\\Animation\\COMER02.cre\~ \~override\~ // Marchand SAY
NAME1 \@6

END ELSE BEGIN COPY \~CDB\\CRE\\COMER01.cre\~ \~override\~ // Marchand
SAY NAME1 \@6

COPY \~CDB\\CRE\\COMER02.cre\~ \~override\~ // Marchand SAY NAME1 \@6
END

// Animation Momie\> Harpie (Niveau 1B) - COM015 / x -\> 0x5269
ACTION_IF (FILE_EXISTS_IN_GAME \"µbsa1.bam\") BEGIN PRINT \~Harpie\~
COPY \~CDB\\CRE\\Animation\\COHARP1.cre\~ \~override\~ // Harpie SAY
NAME1 \@303

END ELSE BEGIN COPY \~CDB\\CRE\\COHARP1.cre\~ \~override\~ // Harpie -\>
momie SAY NAME1 \@304 END

// Animation Ombre Roche -\> Ombre Roche ICEWIND (Niveau 1B) - COM015 /
0x7f11 -\> 0xe0d0 ACTION_IF (FILE_EXISTS_IN_GAME \"mumba1.bam\") BEGIN
PRINT \~OMbre roche\~ COPY \~CDB\\CRE\\Animation\\COUMBER.cre\~
\~override\~ // UmberHulk

END ELSE BEGIN COPY \~CDB\\CRE\\COUMBER.cre\~ \~override\~ // UmberHulk
END

// Animation Liche Systéra -\> Liche Systéra ICEWIND (Niveau 2) - COM017
/ 0x7f0d -\> 0xe060 ACTION_IF (FILE_EXISTS_IN_GAME \"\") BEGIN PRINT
\~Liche\~ COPY \~CDB\\CRE\\Animation\\COSYSTE.cre\~ \~override\~ //
Systéra SAY NAME1 \@298 SAY NAME2 \@298

END ELSE BEGIN COPY \~CDB\\CRE\\COSYSTE.cre\~ \~override\~ // Systéra
SAY NAME1 \@298 SAY NAME2 \@298 END

// Partie 2 \*\*\*\*\*\*\*\*\*\*\*\*\*\*\* // Animation Sorcière Maladie
-\> socière Maladie ICEWIND () - COM024 / x -\> 0xe0f2 wailing_virgin
ACTION_IF (FILE_EXISTS_IN_GAME \"\") BEGIN PRINT \~Sorcière\~ COPY
\~CDB\\CRE\\Animation\\COMALAD.cre\~ \~override\~ // MALADIE SAY NAME1
\@290 SAY NAME2 \@290

END ELSE BEGIN COPY \~CDB\\CRE\\COMALAD.cre\~ \~override\~ // MALADIE
SAY NAME1 \@290 SAY NAME2 \@290 END

// Animation Araignée -\> Araignée géante () - COM024 / x -\> 0x5032
ACTION_IF (FILE_EXISTS_IN_GAME \"µbya1.bam\") BEGIN PRINT \~Araignée
géante\~ COPY \~CDB\\CRE\\Animation\\COSPIDG.cre\~ \~override\~ //
Araignée géante (Maladie transormée) SAY NAME1 \@290 SAY NAME2 \@290

END ELSE BEGIN COPY \~CDB\\CRE\\COSPIDG.cre\~ \~override\~ // Araignée
géante (Maladie transformée) SAY NAME1 \@290 SAY NAME2 \@290 END

// Animation Basilik -\> Basilik ICEWIND () - COM022 / 0x7101
basilisk_greater -\> 0x557B ACTION_IF (FILE_EXISTS_IN_GAME
\"£jxg1.bam\") BEGIN PRINT \~Basilik\~ COPY
\~CDB\\CRE\\Animation\\cobasil1.cre\~ \~override\~ // Basilik Glabuk SAY
NAME1 \@297

END ELSE BEGIN COPY \~CDB\\CRE\\cobasil1.cre\~ \~override\~ // Basilik
Glabuk SAY NAME1 \@297 END

// Animation Cafard -\> \[ID\]Beetle Fire- COM021 / -\> 0xe210
beetle_fire ACTION_IF (FILE_EXISTS_IN_GAME \"mbfi.2da\") BEGIN PRINT
\~Cafard\~ COPY \~CDB\\CRE\\Animation\\cobeet1.cre\~ \~override\~ //
beetle_fire SAY NAME1 \@297

END ELSE BEGIN COPY \~CDB\\CRE\\cobeet1.cre\~ \~override\~ // SAY NAME1
\@297 END

// Infinity animation non installée
\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*
END ELSE BEGIN PRINT \@9 //Le mod Infinity Animation n\'est pas
installé. Vous ne bénéficierez pas des ajouts d\'animation. Vous
désirez? //\[1\] Arrêter l\'installation et installer le mod IA avant.
//\[2\] Installer sans le mod IA.

ACTION_READLN \~reply2\~ OUTER_WHILE ((\~%reply2%\~ STRING_EQUAL_CASE
\~1\~ = 0) AND (\~%reply2%\~ STRING_EQUAL_CASE \~2\~ = 0)) BEGIN PRINT
\@9 ACTION_READLN \~reply2\~ END

// Choix \[1\] effectué ACTION_IF (\~%reply2%\~ STRING_EQUAL_CASE \~1\~
= 1) BEGIN PRINT \@2 // Choix \[1\] effectué END

// Choix \[2\] effectué ACTION_IF (\~%reply2%\~ STRING_EQUAL_CASE \~2\~
= 1) BEGIN PRINT \@3 // Choix \[2\] effectué

PRINT \@8

LOAD_TRA \~CDB\\LANGUAGE\\Noms.TRA\~ // Animation Marchand -\> Marchand
Eau profonde (auberge du Heaume et de la cape) - AR7216 COPY
\~CDB\\CRE\\COMER01.cre\~ \~override\~ // Marchand SAY NAME1 \@6

COPY \~CDB\\CRE\\COMER02.cre\~ \~override\~ // Marchand SAY NAME1 \@6

// Animation Momie\> Harpie (Niveau 1B) - COM015 COPY
\~CDB\\CRE\\COHARP1.cre\~ \~override\~ // Harpie -\> momie SAY NAME1
\@304

// Animation Ombre Roche -\> Ombre Roche ICEWIND (Niveau 1B) - COM015
COPY \~CDB\\CRE\\COUMBER.cre\~ \~override\~ // UmberHulk

// Animation Liche Systéra -\> Liche Systéra ICEWIND (Niveau 2) - COM016
COPY \~CDB\\CRE\\COSYSTE.cre\~ \~override\~ // Systéra SAY NAME1 \@298
SAY NAME2 \@298

// Animation Sorcière Maladie -\> socière Maladie ICEWIND () - COM024
COPY \~CDB\\CRE\\COMALAD.cre\~ \~override\~ // MALADIE SAY NAME1 \@290
SAY NAME2 \@290

// Animation Araignée -\> Araignée géante () - COM024 COPY
\~CDB\\CRE\\COSPIDG.cre\~ \~override\~ // Araignée géante (Maladie
transformée) SAY NAME1 \@290 SAY NAME2 \@290

// Animation Basilik -\> Basilik ICEWIND () - COM022 COPY
\~CDB\\CRE\\cobasil1.cre\~ \~override\~ // Basilik Glabuk SAY NAME1
\@297

END END

// Choix de démarrage du mod
\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*
LOAD_TRA \~CDB\\LANGUAGE\\French\\Setup.tra\~ PRINT \@1 //Vous désirez?
//\[1\] Activer le mod à la mort de Sarevok (suite de BG1). //\[2\]
Démarrer une partie avec le mod tout de suite.\~ ACTION_READLN \~reply\~
OUTER_WHILE ((\~%reply%\~ STRING_EQUAL_CASE \~1\~ = 0) AND (\~%reply%\~
STRING_EQUAL_CASE \~2\~ = 0)) BEGIN PRINT \@1 ACTION_READLN \~reply\~
END

// Choix \[1\] effectué ACTION_IF (\~%reply%\~ STRING_EQUAL_CASE \~1\~
= 1) BEGIN PRINT \@2 // Choix \[1\] effectué EXTEND_TOP \~AR7225.bcs\~
\~CDB\\Setup\\DEM_MOD1.baf\~ // Ajout variable pour activer le mod à la
mort de Sarevok. END

// Choix \[2\] effectué ACTION_IF (\~%reply%\~ STRING_EQUAL_CASE \~2\~
= 1) BEGIN PRINT \@3 EXTEND_TOP \~BALDUR.bcs\~
\~CDB\\Setup\\DEM_MOD2.baf\~ // Ajout variable pour démarrer le mod
aussitôt la partie BG2 lancée. EXTEND_TOP \~BALDUR25.bcs\~
\~CDB\\Setup\\DEM_MOD2.baf\~ // Ajout variable pour démarrer le mod
aussitôt la partie TOB lancée. END

//
\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*
/\* STOP début //
\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

// General
\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*
// Ajout des BAM d\'items COPY \~CDB\\ITM\\BAM\~ \~override\~

// Ajout des BAM de projectiles COPY \~CDB\\PRO\\BAM\~ \~override\~

// Bam complémentaires COPY \~CDB\\BAM\~ \~override\~

// Ajout des portraits COPY \~CDB\\CRE\\Portrait\~ \~override\~ COPY
\~CDB\\CRE\\Portrait\\PNJ\~ \~override\~

// Ajout fond ecran TEXTSCREEN COPY \~CDB\\2DA\\MOS\~ \~override\~

// Ajout ambiances et sons COPY \~CDB\\WAV\~ \~override\~ COPY
\~CDB\\WAV\\VIDE.WAV\~ \~override\~ // pas de son //COPY
\~CDB\\WAV\\com015.WAV\~ \~override\~ COPY \~CDB\\WAV\\COM01301.WAV\~
\~override\~ COPY \~CDB\\WAV\\COM01701.WAV\~ \~override\~ COPY
\~CDB\\WAV\\COM01702.WAV\~ \~override\~ COPY \~CDB\\WAV\\COM01703.WAV\~
\~override\~ COPY \~CDB\\WAV\\COM01704.WAV\~ \~override\~ COPY
\~CDB\\WAV\\COM01705.WAV\~ \~override\~ COPY \~CDB\\WAV\\COM01706.WAV\~
\~override\~ COPY \~CDB\\WAV\\COM01707.WAV\~ \~override\~ COPY
\~CDB\\WAV\\COM01708.WAV\~ \~override\~ COPY \~CDB\\WAV\\COBOITMU.WAV\~
\~override\~ // boite à musique de urglite COPY
\~CDB\\WAV\\COM02101.WAV\~ \~override\~ COPY \~CDB\\WAV\\COBOO1.WAV\~
\~override\~ // Boom boss mort //COPY \~CDB\\WAV\\COM02701.WAV\~
\~override\~

// Ajout animation sort/effect COPY \~CDB\\VVC\~ \~override\~

// Creature de base COPY \~CDB\\CRE\\COSTAINV.cre\~ \~override\~ //
creature invisible + invulnérable

// Script de base COMPILE \~CDB\\CRE\\BCS\\COSHOUT.baf\~ \~override\~ //
Alerte, poursuite, passage ennemis

// Dialogue de base COMPILE \~CDB\\DLG\\CORUMOR.d\~ \~override\~ USING
\~CDB\\DLG\\CORUMOR.tra\~

// TextScreen: fin 1ière partie, 2nd en cours de réalisation //COPY
\~CDB\\2DA\\MOS\\TS001.mos\~ \~override\~

LOAD_TRA \~CDB\\LANGUAGE\\FRENCH\\TEXTSCREEN.TRA\~ // Intro Champion de
Bhaal COPY \~CDB\\2DA\\COTSFP.2DA\~ \~override\~ REPLACE \~99999\~
\@5001 REPLACE \~99998\~ \@6030

// Introduction: Le charname apparait dans l\'auberge du Heaume et de la
cape
\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*
// Auberge Heaume et la cape: Ajout cave + porte d\'entrée fermée //
Carte COPY \~CDB\\area\\AR7216.are\~ \~override\~ COPY_LARGE
\~CDB\\area\\AR7216.tis\~ \~override\~ COPY \~CDB\\area\\AR7216.wed\~
\~override\~ COPY \~CDB\\area\\AR7218.are\~ \~override\~

// Créature LOAD_TRA \~CDB\\LANGUAGE\\Noms.TRA\~ /\* géré selon IA COPY
\~CDB\\CRE\\COMER01.cre\~ \~override\~ // Marchand SAY NAME1 \@6 COPY
\~CDB\\CRE\\COMER02.cre\~ \~override\~ // Marchand SAY NAME1 \@6 \*/
COPY \~CDB\\CRE\\BART12.cre\~ \~override\~ // Ajout du SCRIPTNAME COPY
\~CDB\\CRE\\COBARNI.cre\~ \~override\~ // Nouvel Aubergiste Heaume et la
cape SAY NAME1 \@5 COPY \~CDB\\CRE\\NOBW7.cre\~ \~override\~ // Ajout du
SCRIPTNAME COPY \~CDB\\CRE\\HOUSG6.cre\~ \~override\~ // Ajout du
SCRIPTNAME + SCRIPT PDBSUP COPY \~CDB\\CRE\\FLAMHC.cre\~ \~override\~ //
Garde Ducal dans l\'auberge SAY NAME1 \@8 COPY \~CDB\\CRE\\IMOENP.cre\~
\~override\~ // Pnj BG1 recrutables COPY \~CDB\\CRE\\CORANP.cre\~
\~override\~ COPY \~CDB\\CRE\\JAHEIRP.cre\~ \~override\~ COPY
\~CDB\\CRE\\KHALIP.cre\~ \~override\~ COPY \~CDB\\CRE\\MINSCP.cre\~
\~override\~ COPY \~CDB\\CRE\\DYNAHEP.cre\~ \~override\~ COPY
\~CDB\\CRE\\KIVANP.cre\~ \~override\~ COPY \~CDB\\CRE\\KAGAINP.cre\~
\~override\~ COPY \~CDB\\CRE\\MONTARP.cre\~ \~override\~ COPY
\~CDB\\CRE\\XZARP.cre\~ \~override\~ //COPY \~CDB\\CRE\\TIAXP.cre\~
\~override\~ // Annulé COPY \~CDB\\CRE\\XANP.cre\~ \~override\~ COPY
\~CDB\\CRE\\EDWINP.cre\~ \~override\~ COPY \~CDB\\CRE\\AJANTIP.cre\~
\~override\~ COPY \~CDB\\CRE\\YESLICP.cre\~ \~override\~ COPY
\~CDB\\CRE\\SHARTP.cre\~ \~override\~ COPY \~CDB\\CRE\\VICONIP.cre\~
\~override\~ COPY \~CDB\\CRE\\GEOFFRO.cre\~ \~override\~ // Nouveaux Pnj
recrutables SAY NAME1 \@51 SAY NAME2 \@51 SAY BIO \@52 COPY
\~CDB\\CRE\\OSWALD.cre\~ \~override\~ SAY NAME1 \@53 SAY NAME2 \@53 SAY
BIO \@54 COPY \~CDB\\CRE\\ALINEA.cre\~ \~override\~ SAY NAME1 \@57 SAY
NAME2 \@57 SAY BIO \@58 COPY \~CDB\\CRE\\ELMINP1.cre\~ \~override\~ SAY
NAME1 \@69 SAY NAME1 \@69

// Script carte EXTEND_TOP \~AR7216.bcs\~ \~CDB\\AREA\\BCS\\AR7216.baf\~
USING \~CDB\\LANGUAGE\\FRENCH\\AR7216.TRA\~ // Auberge Heaume et la cape
COMPILE \~AR7217.bcs\~ \~CDB\\AREA\\BCS\\AR7217.baf\~ // Auberge Heaume
et la cape: chambre double EXTEND_TOP \~AR7218.bcs\~
\~CDB\\AREA\\BCS\\AR7218.baf\~ USING
\~CDB\\LANGUAGE\\FRENCH\\AR0000.TRA\~ //Auberge Heaume et la cape:
chambre du Protecteur

// Script créature //COMPILE \~CDB\\CRE\\BCS\\GEOFFRO.baf\~ \~override\~
COMPILE \~CDB\\CRE\\BCS\\OSWALD.baf\~ \~override\~ COMPILE
\~CDB\\CRE\\BCS\\ALINEA.baf\~ \~override\~ //COMPILE
\~CDB\\CRE\\BCS\\ELMINP1.baf\~ \~override\~ // NON utile COMPILE
\~CDB\\CRE\\BCS\\PDBSUP.baf\~ \~override\~ // suppression d\'un PNJ du
mod actif

// Dialogue COMPILE \~CDB\\DLG\\ELMINP1.d\~ \~override\~ USING
\~CDB\\DLG\\ELMINP1.tra\~ COMPILE \~CDB\\DLG\\COMER01.d\~ \~override\~
USING \~CDB\\DLG\\COMER01.tra\~ // marchand d\'eau profonde COMPILE
\~CDB\\DLG\\COMER02.d\~ \~override\~ USING \~CDB\\DLG\\COMER02.tra\~
COMPILE \~CDB\\DLG\\COBARNI.d\~ \~override\~ USING
\~CDB\\DLG\\COBARNI.tra\~ COMPILE \~CDB\\DLG\\FLAMHC.d\~ \~override\~
USING \~CDB\\DLG\\FLAMHC.tra\~

// Pnj BG1 COPY_EXISTING \~EDWINP.dlg\~ \~override\~ DECOMPILE_AND_PATCH
BEGIN REPLACE_TEXTUALLY \~GlobalLT(\"ENDOFBG1\",\"GLOBAL\",2)\~
\~GlobalLT(\"ENDOFBG1\",\"GLOBAL\",2)
Global(\"Protecteur_baldur\",\"GLOBAL\",0)\~ REPLACE_TEXTUALLY
\~Global(\"ENDOFBG1\",\"GLOBAL\",2)\~
\~Global(\"ENDOFBG1\",\"GLOBAL\",2)
Global(\"Protecteur_baldur\",\"GLOBAL\",0)\~ END BUT_ONLY_IF_IT_CHANGES
COMPILE \~CDB\\DLG\\PNJ_heros\\EDWINP.d\~ \~override\~ USING
\~CDB\\DLG\\PNJ_heros\\EDWINP.tra\~

COPY_EXISTING \~AJANTP.dlg\~ \~override\~ DECOMPILE_AND_PATCH BEGIN
REPLACE_TEXTUALLY \~GlobalLT(\"ENDOFBG1\",\"GLOBAL\",2)\~
\~GlobalLT(\"ENDOFBG1\",\"GLOBAL\",2)
Global(\"Protecteur_baldur\",\"GLOBAL\",0)\~ END BUT_ONLY_IF_IT_CHANGES
COMPILE \~CDB\\DLG\\PNJ_heros\\AJANTP.d\~ \~override\~ USING
\~CDB\\DLG\\PNJ_heros\\AJANTP.tra\~

COPY_EXISTING \~SHARTP.dlg\~ \~override\~ DECOMPILE_AND_PATCH BEGIN
REPLACE_TEXTUALLY \~GlobalLT(\"ENDOFBG1\",\"GLOBAL\",2)\~
\~GlobalLT(\"ENDOFBG1\",\"GLOBAL\",2)
Global(\"Protecteur_baldur\",\"GLOBAL\",0)\~ END BUT_ONLY_IF_IT_CHANGES
COMPILE \~CDB\\DLG\\PNJ_heros\\SHARTP.d\~ \~override\~ USING
\~CDB\\DLG\\PNJ_heros\\SHARTP.tra\~

COPY_EXISTING \~CORANP.dlg\~ \~override\~ DECOMPILE_AND_PATCH BEGIN
REPLACE_TEXTUALLY \~GlobalLT(\"ENDOFBG1\",\"GLOBAL\",2)\~
\~GlobalLT(\"ENDOFBG1\",\"GLOBAL\",2)
Global(\"Protecteur_baldur\",\"GLOBAL\",0)\~ END BUT_ONLY_IF_IT_CHANGES
COMPILE \~CDB\\DLG\\PNJ_heros\\CORANP.d\~ \~override\~ USING
\~CDB\\DLG\\PNJ_heros\\CORANP.tra\~

COPY_EXISTING \~YESLIP.dlg\~ \~override\~ DECOMPILE_AND_PATCH BEGIN
REPLACE_TEXTUALLY \~GlobalLT(\"ENDOFBG1\",\"GLOBAL\",2)\~
\~GlobalLT(\"ENDOFBG1\",\"GLOBAL\",2)
Global(\"Protecteur_baldur\",\"GLOBAL\",0)\~ END BUT_ONLY_IF_IT_CHANGES
COMPILE \~CDB\\DLG\\PNJ_heros\\YESLIP.d\~ \~override\~ USING
\~CDB\\DLG\\PNJ_heros\\YESLIP.tra\~

COPY_EXISTING \~IMOENP.dlg\~ \~override\~ DECOMPILE_AND_PATCH BEGIN
REPLACE_TEXTUALLY \~GlobalLT(\"ENDOFBG1\",\"GLOBAL\",2)\~
\~GlobalLT(\"ENDOFBG1\",\"GLOBAL\",2)
Global(\"Protecteur_baldur\",\"GLOBAL\",0)\~ REPLACE_TEXTUALLY
\~NumberOfTimesTalkedTo(0)\~ \~NumberOfTimesTalkedTo(0)
Global(\"Protecteur_baldur\",\"GLOBAL\",0)\~ REPLACE_TEXTUALLY
\~True()\~ \~True() Global(\"Protecteur_baldur\",\"GLOBAL\",0)\~ END
BUT_ONLY_IF_IT_CHANGES COMPILE \~CDB\\DLG\\PNJ_heros\\IMOENP.d\~
\~override\~ USING \~CDB\\DLG\\PNJ_heros\\IMOENP.tra\~

COPY_EXISTING \~XANP.dlg\~ \~override\~ DECOMPILE_AND_PATCH BEGIN
REPLACE_TEXTUALLY \~GlobalLT(\"ENDOFBG1\",\"GLOBAL\",2)\~
\~GlobalLT(\"ENDOFBG1\",\"GLOBAL\",2)
Global(\"Protecteur_baldur\",\"GLOBAL\",0)\~ REPLACE_TEXTUALLY
\~Global(\"IWasKickedOut\",\"LOCALS\",0) HappinessLT(Myself,0)\~
\~Global(\"IWasKickedOut\",\"LOCALS\",0) HappinessLT(Myself,0)
Global(\"Protecteur_baldur\",\"GLOBAL\",0)\~ END BUT_ONLY_IF_IT_CHANGES
COMPILE \~CDB\\DLG\\PNJ_heros\\XANP.d\~ \~override\~ USING
\~CDB\\DLG\\PNJ_heros\\XANP.tra\~

COPY_EXISTING \~JAHEIRAP.dlg\~ \~override\~ DECOMPILE_AND_PATCH BEGIN
REPLACE_TEXTUALLY \~GlobalLT(\"ENDOFBG1\",\"GLOBAL\",2)\~
\~GlobalLT(\"ENDOFBG1\",\"GLOBAL\",2)
Global(\"Protecteur_baldur\",\"GLOBAL\",0)\~ REPLACE_TEXTUALLY
\~Global(\"ENDOFBG1\",\"GLOBAL\",2)\~
\~Global(\"ENDOFBG1\",\"GLOBAL\",2)
Global(\"Protecteur_baldur\",\"GLOBAL\",0)\~ REPLACE_TEXTUALLY
\~False()\~ \~False() Global(\"Protecteur_baldur\",\"GLOBAL\",0)\~
REPLACE_TEXTUALLY \~Global(\"Leave_Jaheira\",\"GLOBAL\",1)\~
\~Global(\"Leave_Jaheira\",\"GLOBAL\",1)
Global(\"Protecteur_baldur\",\"GLOBAL\",0)\~ END BUT_ONLY_IF_IT_CHANGES
COMPILE \~CDB\\DLG\\PNJ_heros\\JAHEIRAP.d\~ \~override\~ USING
\~CDB\\DLG\\PNJ_heros\\JAHEIRAP.tra\~

COPY_EXISTING \~KHALIP.dlg\~ \~override\~ DECOMPILE_AND_PATCH BEGIN
REPLACE_TEXTUALLY \~GlobalLT(\"ENDOFBG1\",\"GLOBAL\",2)\~
\~GlobalLT(\"ENDOFBG1\",\"GLOBAL\",2)
Global(\"Protecteur_baldur\",\"GLOBAL\",0)\~ REPLACE_TEXTUALLY
\~False()\~ \~False() Global(\"Protecteur_baldur\",\"GLOBAL\",0)\~
REPLACE_TEXTUALLY \~Dead(\"Jaheira\")
Global(\"IWasKickedOut\",\"LOCALS\",0)\~ \~Dead(\"Jaheira\")
Global(\"IWasKickedOut\",\"LOCALS\",0)
Global(\"Protecteur_baldur\",\"GLOBAL\",0)\~ REPLACE_TEXTUALLY
\~!Dead(\"Jaheira\") Global(\"IWasKickedOut\",\"LOCALS\",0)\~
\~Dead(\"Jaheira\") Global(\"IWasKickedOut\",\"LOCALS\",0)
Global(\"Protecteur_baldur\",\"GLOBAL\",0)\~ END BUT_ONLY_IF_IT_CHANGES
COMPILE \~CDB\\DLG\\PNJ_heros\\KHALIP.d\~ \~override\~ USING
\~CDB\\DLG\\PNJ_heros\\KHALIP.tra\~

COPY_EXISTING \~KIVANP.dlg\~ \~override\~ DECOMPILE_AND_PATCH BEGIN
REPLACE_TEXTUALLY \~GlobalLT(\"ENDOFBG1\",\"GLOBAL\",2)\~
\~GlobalLT(\"ENDOFBG1\",\"GLOBAL\",2)
Global(\"Protecteur_baldur\",\"GLOBAL\",0)\~ END BUT_ONLY_IF_IT_CHANGES
COMPILE \~CDB\\DLG\\PNJ_heros\\KIVANP.d\~ \~override\~ USING
\~CDB\\DLG\\PNJ_heros\\KIVANP.tra\~

COPY_EXISTING \~KAGAIP.dlg\~ \~override\~ DECOMPILE_AND_PATCH BEGIN
REPLACE_TEXTUALLY \~GlobalLT(\"ENDOFBG1\",\"GLOBAL\",2)\~
\~GlobalLT(\"ENDOFBG1\",\"GLOBAL\",2)
Global(\"Protecteur_baldur\",\"GLOBAL\",0)\~ END BUT_ONLY_IF_IT_CHANGES
COMPILE \~CDB\\DLG\\PNJ_heros\\KAGAIP.d\~ \~override\~ USING
\~CDB\\DLG\\PNJ_heros\\KAGAIP.tra\~

COPY_EXISTING \~VICONIP.dlg\~ \~override\~ DECOMPILE_AND_PATCH BEGIN
REPLACE_TEXTUALLY \~GlobalLT(\"ENDOFBG1\",\"GLOBAL\",2)\~
\~GlobalLT(\"ENDOFBG1\",\"GLOBAL\",2)
Global(\"Protecteur_baldur\",\"GLOBAL\",0)\~ REPLACE_TEXTUALLY
\~Global(\"ENDOFBG1\",\"GLOBAL\",2)\~
\~Global(\"ENDOFBG1\",\"GLOBAL\",2)
Global(\"Protecteur_baldur\",\"GLOBAL\",0)\~ END BUT_ONLY_IF_IT_CHANGES
COPY_EXISTING \~BGVICONI.dlg\~ \~override\~ DECOMPILE_AND_PATCH BEGIN
REPLACE_TEXTUALLY \~NumberOfTimesTalkedTo(0)\~
\~NumberOfTimesTalkedTo(0) Global(\"Protecteur_baldur\",\"GLOBAL\",0)\~
REPLACE_TEXTUALLY \~True()\~ \~True()
Global(\"Protecteur_baldur\",\"GLOBAL\",0)\~ END BUT_ONLY_IF_IT_CHANGES
COMPILE \~CDB\\DLG\\PNJ_heros\\VICONIP.d\~ \~override\~ USING
\~CDB\\DLG\\PNJ_heros\\VICONIP.tra\~

COPY_EXISTING \~MINSCP.dlg\~ \~override\~ DECOMPILE_AND_PATCH BEGIN
REPLACE_TEXTUALLY \~GlobalLT(\"ENDOFBG1\",\"GLOBAL\",2)\~
\~GlobalLT(\"ENDOFBG1\",\"GLOBAL\",2)
Global(\"Protecteur_baldur\",\"GLOBAL\",0)\~ REPLACE_TEXTUALLY
\~Global(\"ENDOFBG1\",\"GLOBAL\",2)\~
\~Global(\"ENDOFBG1\",\"GLOBAL\",2)
Global(\"Protecteur_baldur\",\"GLOBAL\",0)\~ END BUT_ONLY_IF_IT_CHANGES
COMPILE \~CDB\\DLG\\PNJ_heros\\MINSCP.d\~ \~override\~ USING
\~CDB\\DLG\\PNJ_heros\\MINSCP.tra\~

COPY_EXISTING \~DYNAP.dlg\~ \~override\~ DECOMPILE_AND_PATCH BEGIN
REPLACE_TEXTUALLY \~GlobalLT(\"ENDOFBG1\",\"GLOBAL\",2)\~
\~GlobalLT(\"ENDOFBG1\",\"GLOBAL\",2)
Global(\"Protecteur_baldur\",\"GLOBAL\",0)\~ END BUT_ONLY_IF_IT_CHANGES
COMPILE \~CDB\\DLG\\PNJ_heros\\DYNAP.d\~ \~override\~ USING
\~CDB\\DLG\\PNJ_heros\\DYNAP.tra\~

COPY_EXISTING \~MONTAP.dlg\~ \~override\~ DECOMPILE_AND_PATCH BEGIN
REPLACE_TEXTUALLY \~GlobalLT(\"ENDOFBG1\",\"GLOBAL\",2)\~
\~GlobalLT(\"ENDOFBG1\",\"GLOBAL\",2)
Global(\"Protecteur_baldur\",\"GLOBAL\",0)\~ END BUT_ONLY_IF_IT_CHANGES
COMPILE \~CDB\\DLG\\PNJ_heros\\MONTAP.d\~ \~override\~ USING
\~CDB\\DLG\\PNJ_heros\\MONTAP.tra\~

COPY_EXISTING \~XZARP.dlg\~ \~override\~ DECOMPILE_AND_PATCH BEGIN
REPLACE_TEXTUALLY \~GlobalLT(\"ENDOFBG1\",\"GLOBAL\",2)\~
\~GlobalLT(\"ENDOFBG1\",\"GLOBAL\",2)
Global(\"Protecteur_baldur\",\"GLOBAL\",0)\~ END BUT_ONLY_IF_IT_CHANGES
COMPILE \~CDB\\DLG\\PNJ_heros\\XZARP.d\~ \~override\~ USING
\~CDB\\DLG\\PNJ_heros\\XZARP.tra\~

// Nouveaux PNJ COMPILE \~CDB\\DLG\\OSWALP.d\~ \~override\~ USING
\~CDB\\DLG\\OSWALP.tra\~ APPEND \~PDIALOG.2da\~ \~OSWALD OSWALP OSWALJ
\*\*\* OSWALP OSWALJ \*\*\* \*\*\*\~ UNLESS \~OSWALD\~

COMPILE \~CDB\\DLG\\GEOFFRP.d\~ \~override\~ USING
\~CDB\\DLG\\GEOFFRP.tra\~

APPEND \~PDIALOG.2da\~ \~GEOFFRO GEOFFRP GEOFFRJ \*\*\* GEOFFRP GEOFFRJ
\*\*\* \*\*\*\~ UNLESS \~GEOFFRO\~

COMPILE \~CDB\\DLG\\ALINEP.d\~ \~override\~ USING
\~CDB\\DLG\\ALINEP.tra\~

APPEND \~PDIALOG.2da\~ \~ALINEA ALINEP ALINEJ \*\*\* ALINEP ALINEJ
\*\*\* \*\*\*\~ UNLESS \~ALINEA\~

// Objet LOAD_TRA \~CDB\\LANGUAGE\\FRENCH\\OBJETS.TRA\~ COPY
\~CDB\\ITM\\leap01.itm\~ \~override\~ // Besantine d\'Anxval SAY NAME2
\@83 SAY DESC \@84

COPY \~CDB\\ITM\\Miscp61.itm\~ \~override\~ // clé cave auberge SAY
NAME2 \@5200 SAY DESC \@5201

// Equipement de la garde Ducale COPY \~CDB\\ITM\\HELM09B.itm\~
\~override\~ COPY \~CDB\\ITM\\IPLAT01B.itm\~ \~override\~ COPY
\~CDB\\ITM\\SHLD01B.itm\~ \~override\~

// Sorts

// Cutscène

// TextScreen //COPY \~CDB\\2DA\\MOS\\TS001.mos\~ \~override\~ LOAD_TRA
\~CDB\\LANGUAGE\\FRENCH\\TEXTSCREEN.TRA\~ // Intro Champion de Bhaal
COPY \~CDB\\2DA\\COTSCDB.2DA\~ \~override\~ REPLACE \~99999\~ \@5001
REPLACE \~99998\~ \@6020

// Equipement LOAD_TRA \~CDB\\LANGUAGE\\FRENCH\\Stores.TRA\~ COPY
\~CDB\\STORES\\COMER01.sto\~ \~override\~ SAY NAME2 \@1 COPY
\~CDB\\STORES\\COMER02.sto\~ \~override\~ SAY NAME2 \@1

COPY \~CDB\\STORES\\COBARNI.sto\~ \~override\~ SAY NAME2 \@2

// Sorts

// Cave du Heaume et de la cape
\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*
// Carte COPY \~CDB\\area\\COM026.are\~ \~override\~ COPY
\~CDB\\area\\COM026.mos\~ \~override\~ COPY_LARGE
\~CDB\\area\\COM026.tis\~ \~override\~ COPY \~CDB\\area\\COM026.wed\~
\~override\~ COPY \~CDB\\area\\COM026HT.bmp\~ \~override\~ COPY
\~CDB\\area\\COM026LM.bmp\~ \~override\~ COPY
\~CDB\\area\\COM026SR.bmp\~ \~override\~

// Script carte COMPILE \~CDB\\AREA\\BCS\\COM026.baf\~ \~override\~
USING \~CDB\\LANGUAGE\\FRENCH\\COM026.TRA\~

// Créature LOAD_TRA \~CDB\\LANGUAGE\\Noms.TRA\~ COPY
\~CDB\\CRE\\COCANDE.cre\~ \~override\~ // Candelas serviteur de Cyric
SAY NAME1 \@300 SAY NAME1 \@300 COPY \~CDB\\CRE\\COCYRG1.cre\~
\~override\~ // guerrier fidèle de Cyric SAY NAME1 \@301 SAY NAME1 \@301
COPY \~CDB\\CRE\\COCYRV1.cre\~ \~override\~ // voleur fidèle de Cyric
SAY NAME1 \@301 SAY NAME2 \@301

// Script créature COMPILE \~CDB\\CRE\\BCS\\COCANDE.baf\~ \~override\~
// Candelas COMPILE \~CDB\\CRE\\BCS\\SHOUT111.baf\~ \~override\~ //
Alerte ennemis COMPILE \~CDB\\CRE\\BCS\\COCYRV1.baf\~ \~override\~ //
Tueur Cyric potion INV

// Dialogue COMPILE \~CDB\\DLG\\COEKILIS.d\~ \~override\~ USING
\~CDB\\DLG\\COEKILIS.tra\~ COMPILE \~CDB\\DLG\\COCANDE.d\~ \~override\~
USING \~CDB\\DLG\\COCANDE.tra\~

// Objet LOAD_TRA \~CDB\\LANGUAGE\\FRENCH\\OBJETS.TRA\~ COPY
\~CDB\\ITM\\SCRP04.itm\~ \~override\~ // Message equipement Candelas SAY
NAME2 \@5208 SAY DESC \@5209

// Symbole de Cyric COPY \~CDB\\ITM\\MISCP25.itm\~ \~override\~ SAY
NAME2 \@5210 SAY DESC \@5211

// Sous-sol du Heaume et de la cape
\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*
// Carte COPY \~CDB\\area\\COM027.are\~ \~override\~ COPY
\~CDB\\area\\COM027.mos\~ \~override\~ COPY_LARGE
\~CDB\\area\\COM027.tis\~ \~override\~ COPY \~CDB\\area\\COM027.wed\~
\~override\~ COPY \~CDB\\area\\COM027HT.bmp\~ \~override\~ COPY
\~CDB\\area\\COM027LM.bmp\~ \~override\~ COPY
\~CDB\\area\\COM027SR.bmp\~ \~override\~

// Script carte COMPILE \~CDB\\AREA\\BCS\\COM027.baf\~ \~override\~
USING \~CDB\\LANGUAGE\\FRENCH\\COM027.TRA\~ COMPILE
\~CDB\\AREA\\BCS\\COT027I1.baf\~ \~override\~ USING
\~CDB\\LANGUAGE\\FRENCH\\COM027.TRA\~ // info sur le mur écroulé COMPILE
\~CDB\\AREA\\BCS\\COT02701.baf\~ \~override\~ USING
\~CDB\\LANGUAGE\\FRENCH\\COM027.TRA\~ // info ouverture PS1 COMPILE
\~CDB\\AREA\\BCS\\COT02702.baf\~ \~override\~ USING
\~CDB\\LANGUAGE\\FRENCH\\COM027.TRA\~ // bruit de pas COMPILE
\~CDB\\AREA\\BCS\\COT02703.baf\~ \~override\~ USING
\~CDB\\LANGUAGE\\FRENCH\\COM027.TRA\~ // la trappe se referme

// Temple de Bhaal: Escalier en colimaçon
\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*
// Carte COPY \~CDB\\area\\COM012.are\~ \~override\~ COPY
\~CDB\\area\\COM012.mos\~ \~override\~ COPY_LARGE
\~CDB\\area\\COM012.tis\~ \~override\~ COPY \~CDB\\area\\COM012.wed\~
\~override\~ COPY \~CDB\\area\\COM012HT.bmp\~ \~override\~ COPY
\~CDB\\area\\COM012LM.bmp\~ \~override\~ COPY
\~CDB\\area\\COM012SR.bmp\~ \~override\~

// Script carte COMPILE \~CDB\\AREA\\BCS\\COM012.baf\~ \~override\~
USING \~CDB\\LANGUAGE\\FRENCH\\COM012.TRA\~ COMPILE
\~CDB\\AREA\\BCS\\COT012I1.baf\~ \~override\~ USING
\~CDB\\LANGUAGE\\FRENCH\\COM012.TRA\~ // info sur les torches

// Temple de Bhaal: Hall d\'entrée
\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*
// Carte COPY \~CDB\\area\\COM013.are\~ \~override\~ COPY
\~CDB\\area\\COM013.mos\~ \~override\~ COPY_LARGE
\~CDB\\area\\COM013.tis\~ \~override\~ COPY \~CDB\\area\\COM013.wed\~
\~override\~ COPY \~CDB\\area\\COM013HT.bmp\~ \~override\~ COPY
\~CDB\\area\\COM013LM.bmp\~ \~override\~ COPY
\~CDB\\area\\COM013SR.bmp\~ \~override\~

// Script carte COMPILE \~CDB\\AREA\\BCS\\COM013.baf\~ \~override\~
USING \~CDB\\LANGUAGE\\FRENCH\\COM013.TRA\~ COMPILE
\~CDB\\AREA\\BCS\\COT013A.baf\~ \~override\~ COMPILE
\~CDB\\AREA\\BCS\\COT013B.baf\~ \~override\~ COMPILE
\~CDB\\AREA\\BCS\\COT013C.baf\~ \~override\~ COMPILE
\~CDB\\AREA\\BCS\\COT013D.baf\~ \~override\~ COMPILE
\~CDB\\AREA\\BCS\\COT013E.baf\~ \~override\~ COMPILE
\~CDB\\AREA\\BCS\\COT013F.baf\~ \~override\~ //COMPILE
\~CDB\\AREA\\BCS\\COT013IA.baf\~ \~override\~ USING
\~CDB\\LANGUAGE\\FRENCH\\COM013.TRA\~ // Info sur le plafond écroulé

// Créature LOAD_TRA \~CDB\\LANGUAGE\\Noms.TRA\~ COPY
\~CDB\\CRE\\COBATT.cre\~ \~override\~ // Guerrier Fantôme BG1 sans halo
de mort rouge COPY \~CDB\\CRE\\COHELL.cre\~ \~override\~ // Horreur
guerrière BG1 sans halo de mort rouge COPY \~CDB\\CRE\\COFANT1.cre\~
\~override\~ // fantôme COPY \~CDB\\CRE\\COFANT2.cre\~ \~override\~ COPY
\~CDB\\CRE\\COFANT3.cre\~ \~override\~ COPY \~CDB\\CRE\\COFANT4.cre\~
\~override\~ COPY \~CDB\\CRE\\COMASSE1.cre\~ \~override\~ // Massena
fantôme SAY NAME1 \@275 COPY \~CDB\\CRE\\battho.cre\~ \~override\~ //
BG2 ajout nom script créature: corriger compatiblité COPY
\~CDB\\CRE\\helmho.cre\~ \~override\~ // BG2 ajout nom script créature:
corriger compatiblité

// Script créature COMPILE \~CDB\\CRE\\BCS\\COMASSE1.baf\~ \~override\~
USING \~CDB\\DLG\\COMASSE4.tra\~ COMPILE \~CDB\\CRE\\BCS\\COFANT1.baf\~
\~override\~ USING \~CDB\\DLG\\COFANT1.tra\~

// Dialogue COMPILE \~CDB\\DLG\\COMASSE1.d\~ \~override\~ USING
\~CDB\\DLG\\COMASSE1.tra\~ // 1iere rencontre avec Massena le fantôme

// Objet LOAD_TRA \~CDB\\LANGUAGE\\FRENCH\\OBJETS.TRA\~

// image floue fantome (amulette) COPY \~CDB\\ITM\\COGHOST.itm\~
\~override\~

// Cadavre déesséché de Massena COPY \~CDB\\ITM\\SKELP01.itm\~
\~override\~ SAY NAME2 \@5040 SAY DESC \@5041

// Collier de Téléport temple de Bhaal COPY \~CDB\\ITM\\AMUP02.itm\~
\~override\~ SAY NAME2 \@5042 SAY DESC \@5043

// Cadavre désséché d\'un fidèle de Cyric COPY \~CDB\\ITM\\SKELP02.itm\~
\~override\~ SAY NAME2 \@5046 SAY DESC \@5047

// Symbole de Cyric avec sang COPY \~CDB\\ITM\\MISCP24.itm\~
\~override\~ SAY NAME2 \@5050 SAY DESC \@5051

// bouclier rouillé COPY \~CDB\\ITM\\MISC57.itm\~
\~override\\SHLP11.itm\~ SAY NAME2 \@5202 SAY DESC \@5203

// armure rouillée COPY \~CDB\\ITM\\MISC58.itm\~
\~override\\PLAP19.itm\~ SAY NAME2 \@5204 SAY DESC \@5205

// Epée rouillée COPY \~CDB\\ITM\\MISC56.itm\~ \~override\\SW1P12.itm\~
SAY NAME2 \@5206 SAY DESC \@5207

// Sorts

// TEXTSCREEN LOAD_TRA \~CDB\\LANGUAGE\\FRENCH\\TextScreen.TRA\~ //
Entrée du Hall COPY \~CDB\\2DA\\COTS006.2DA\~ \~override\~ REPLACE
\~99999\~ \@5001 REPLACE \~99998\~ \@6000 REPLACE \~99997\~ \@6001
REPLACE \~99996\~ \@6002

/// Temple: Niveau 0 partie A
\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*
// Carte COPY \~CDB\\area\\COM014.are\~ \~override\~ COPY
\~CDB\\area\\COM014.mos\~ \~override\~ COPY_LARGE
\~CDB\\area\\COM014.tis\~ \~override\~ COPY \~CDB\\area\\COM014.wed\~
\~override\~ COPY \~CDB\\area\\COM014HT.bmp\~ \~override\~ COPY
\~CDB\\area\\COM014LM.bmp\~ \~override\~ COPY
\~CDB\\area\\COM014SR.bmp\~ \~override\~

// Script carte COMPILE \~CDB\\AREA\\BCS\\COM014.baf\~ \~override\~
USING \~CDB\\LANGUAGE\\FRENCH\\COM014.TRA\~ COMPILE
\~CDB\\AREA\\BCS\\COCONT01.baf\~ \~override\~ USING
\~CDB\\LANGUAGE\\FRENCH\\COM014.TRA\~ // Sarcophage déjà visité COMPILE
\~CDB\\AREA\\BCS\\COCONT02.baf\~ \~override\~ USING
\~CDB\\LANGUAGE\\FRENCH\\COM014.TRA\~ // Coffre déjà visité COMPILE
\~CDB\\AREA\\BCS\\COCONT03.baf\~ \~override\~ USING
\~CDB\\LANGUAGE\\FRENCH\\COM014.TRA\~ // Jarre avec des restes COMPILE
\~CDB\\AREA\\BCS\\COT01401.baf\~ \~override\~ // piège boule de feu
COMPILE \~CDB\\AREA\\BCS\\COT01402.baf\~ \~override\~ // piège tempête
de glace COMPILE \~CDB\\AREA\\BCS\\COT01403.baf\~ \~override\~ // Piège
incnérateur COMPILE \~CDB\\AREA\\BCS\\COT01404.baf\~ \~override\~ USING
\~CDB\\LANGUAGE\\FRENCH\\COM014.TRA\~ // Apparition d\'un groupe de
squelettes. COMPILE \~CDB\\AREA\\BCS\\COT01405.baf\~ \~override\~ //
piège Immobilisation personne COMPILE \~CDB\\AREA\\BCS\\COT01406.baf\~
\~override\~ // Dissipation fin stase Ekilis COMPILE
\~CDB\\AREA\\BCS\\COT01407.baf\~ \~override\~ // piège trappe flêche
glace COMPILE \~CDB\\AREA\\BCS\\COT01408.baf\~ \~override\~ // piège
trappe flêche feu COMPILE \~CDB\\AREA\\BCS\\COT01409.baf\~ \~override\~
// Cellule minautore ouverture/fermeture COMPILE
\~CDB\\AREA\\BCS\\COT01410.baf\~ \~override\~ // Cellule minautore
ouverture/fermeture COMPILE \~CDB\\AREA\\BCS\\COT01412.baf\~
\~override\~ // Apparition âmes érrantes COMPILE
\~CDB\\AREA\\BCS\\COT01413.baf\~ \~override\~ // piège trappe
dissipation COMPILE \~CDB\\AREA\\BCS\\COT01414.baf\~ \~override\~ //
piège horreur COMPILE \~CDB\\AREA\\BCS\\COT014IA.baf\~ \~override\~
USING \~CDB\\LANGUAGE\\FRENCH\\COM014.TRA\~ // Info sur les cages
COMPILE \~CDB\\AREA\\BCS\\COT014IB.baf\~ \~override\~ USING
\~CDB\\LANGUAGE\\FRENCH\\COM014.TRA\~ // Info sur le plafond écroulé
COMPILE \~CDB\\AREA\\BCS\\COT014IC.baf\~ \~override\~ USING
\~CDB\\LANGUAGE\\FRENCH\\COM014.TRA\~ // Info sur les trous dans le sol
COMPILE \~CDB\\AREA\\BCS\\COT014TP.baf\~ \~override\~ // Activation TP
COM014 //COMPILE \~CDB\\AREA\\BCS\\COTTP01.baf\~ \~override\~ //
lancement TP Com014 ou Com015 NON UTILE

// Créature LOAD_TRA \~CDB\\LANGUAGE\\Noms.TRA\~ COPY
\~CDB\\CRE\\coekilis.cre\~ \~override\~ // Ekilis SAY NAME1 \@277 SAY
NAME2 \@277 COPY \~CDB\\CRE\\COMINAU1.cre\~ \~override\~ // Minautore
prisonnier COPY \~CDB\\CRE\\COMINAU2.cre\~ \~override\~ // Minautore
prisonnier COPY \~CDB\\CRE\\COMINAU3.cre\~ \~override\~ // Minautore
prisonnier COPY \~CDB\\CRE\\pxbhombr.cre\~ \~override\~ COPY
\~CDB\\CRE\\COSKEL01.cre\~ \~override\~ // squelette générateur

// Script créature COMPILE \~CDB\\CRE\\BCS\\COEKILI1.baf\~ \~override\~
USING \~CDB\\DLG\\COEKILIS.tra\~ // gestion des étapes COMPILE
\~CDB\\CRE\\BCS\\COEKILI2.baf\~ \~override\~ USING
\~CDB\\DLG\\COEKILIS.tra\~ // gestion du combat COMPILE
\~CDB\\CRE\\BCS\\COEKILI3.baf\~ \~override\~ USING
\~CDB\\DLG\\COEKILIS.tra\~ // Ekilis allié du groupe COMPILE
\~CDB\\CRE\\BCS\\COMASSE1.baf\~ \~override\~ COMPILE
\~CDB\\CRE\\BCS\\COSKEL01.baf\~ \~override\~ // génération de squelettes
COMPILE \~CDB\\SPELL\\BCS\\WANP01.baf\~ \~override\~ // les créatures
baguette 1 deviennent des alliés (minautores) //COMPILE
\~CDB\\CRE\\BCS\\CMDALLI.baf\~ \~override\~ // Comportement des
créatures alliées NON UTILE

// Dialogue // dans le Heaume et la cape pour compile avec COCANDE
//COMPILE \~CDB\\DLG\\COEKILIS.d\~ \~override\~ USING
\~CDB\\DLG\\COEKILIS.tra\~

// Objet LOAD_TRA \~CDB\\LANGUAGE\\FRENCH\\OBJETS.TRA\~ // Baguette de
commandement des Minautores (rouge) COPY \~CDB\\ITM\\WANP01.itm\~
\~override\~ SAY NAME2 \@5052 SAY DESC \@5053

// Message d\'Ekilis COPY \~CDB\\ITM\\SCRP03.itm\~ \~override\~ SAY
NAME2 \@5048 SAY DESC \@5049

// Message d\'Entar COPY \~CDB\\ITM\\SCRP06.itm\~ \~override\~ SAY NAME2
\@5132 SAY DESC \@5133

// Journal d\'Ekilis COPY \~CDB\\ITM\\BOKP07.itm\~ \~override\~ SAY
NAME1 \@5058 SAY NAME2 \@5058 SAY DESC \@5059

// Crâne violet d\'Ekilis COPY \~CDB\\ITM\\MISCP56.itm\~ \~override\~
SAY NAME1 \@5112 SAY DESC \@5113

// Sorts LOAD_TRA \~CDB\\LANGUAGE\\FRENCH\\Sorts.TRA\~ COPY
\~CDB\\SPELL\\WANP01.spl\~ \~override\~ // commandement créatures
baguette 1 SAY NAME1 \@19

//COPY \~CDB\\SPELL\\com014TP.spl\~ \~override\~ // Tp vers niv0-B NON
UTILE

// Temple: Niveau 0 partie B
\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*
// Carte COPY \~CDB\\area\\COM015.are\~ \~override\~ COPY
\~CDB\\area\\COM015.mos\~ \~override\~ COPY_LARGE
\~CDB\\area\\COM015.tis\~ \~override\~ COPY \~CDB\\area\\COM015.wed\~
\~override\~ COPY \~CDB\\area\\COM015HT.bmp\~ \~override\~ COPY
\~CDB\\area\\COM015LM.bmp\~ \~override\~ COPY
\~CDB\\area\\COM015SR.bmp\~ \~override\~

// Script carte COMPILE \~CDB\\AREA\\BCS\\COM015.baf\~ \~override\~
USING \~CDB\\LANGUAGE\\FRENCH\\COM015.TRA\~ COMPILE
\~CDB\\AREA\\BCS\\COT01501.baf\~ \~override\~ // Top pour pouvoir fermer
le PS Wyvern COMPILE \~CDB\\AREA\\BCS\\COT01502.baf\~ \~override\~
COMPILE \~CDB\\AREA\\BCS\\COT01503.baf\~ \~override\~ COMPILE
\~CDB\\AREA\\BCS\\COT01504.baf\~ \~override\~ COMPILE
\~CDB\\AREA\\BCS\\COT01505.baf\~ \~override\~ COMPILE
\~CDB\\AREA\\BCS\\COT01506.baf\~ \~override\~ // COMPILE
\~CDB\\AREA\\BCS\\COT01507.baf\~ \~override\~ // Gestion ouverture
fermeture PS accès niveau 2 COMPILE \~CDB\\AREA\\BCS\\COT01508.baf\~
\~override\~ USING \~CDB\\LANGUAGE\\FRENCH\\COM015.TRA\~ // Msg info sur
la grille COMPILE \~CDB\\AREA\\BCS\\COT01509.baf\~ \~override\~ //
Apparition Massena près de la grille COMPILE
\~CDB\\AREA\\BCS\\COT01510.baf\~ \~override\~ // Fermeture porte souffle
COMPILE \~CDB\\AREA\\BCS\\COT01511.baf\~ \~override\~ USING
\~CDB\\LANGUAGE\\FRENCH\\COM015.TRA\~// info trou dans le sol COMPILE
\~CDB\\AREA\\BCS\\CON01512.baf\~ \~override\~ // Coffre apparition
Harpie COMPILE \~CDB\\AREA\\BCS\\CON01513.baf\~ \~override\~ // Coffre
piégé avec grouilleux COMPILE \~CDB\\AREA\\BCS\\COT01514.baf\~
\~override\~ // Sort horreur COMPILE \~CDB\\AREA\\BCS\\COT01515.baf\~
\~override\~ // Sort chaine d\'éclairs //COMPILE
\~CDB\\AREA\\BCS\\COT015TP.baf\~ \~override\~ // Activation TP COM014
NON UTILE //COMPILE \~CDB\\AREA\\BCS\\COTTP01.baf\~ \~override\~ //
lancement TP Com014 ou Com015 COMPILE \~CDB\\SPELL\\BCS\\WANP02.baf\~
\~override\~ // les créatures baguette 2 deviennent des alliés
(UmberHulk) COMPILE \~CDB\\SPELL\\BCS\\WANP03.baf\~ \~override\~ // les
créatures baguette 3 deviennent des alliés (Troll)

// Créature LOAD_TRA \~CDB\\LANGUAGE\\Noms.TRA\~ COPY
\~CDB\\CRE\\Gibber_A.cre\~ \~override\~ // grouilleux de Bhaal - acide
SAY NAME2 \@307 COPY \~CDB\\CRE\\Gibber_E.cre\~ \~override\~ //
grouilleux de Bhaal - electricité SAY NAME2 \@307 COPY
\~CDB\\CRE\\Gibber_F.cre\~ \~override\~ // grouilleux de Bhaal - feu SAY
NAME2 \@307 COPY \~CDB\\CRE\\Gibber_G.cre\~ \~override\~ // grouilleux
de Bhaal - glace SAY NAME2 \@307 COPY \~CDB\\CRE\\Gibber_P.cre\~
\~override\~ // grouilleux de Bhaal - poison SAY NAME2 \@307 COPY
\~CDB\\CRE\\COBAT2.cre\~ \~override\~ // Chauve souris agressive //COPY
\~CDB\\CRE\\COHARP1.cre\~ \~override\~ // Harpie //COPY
\~CDB\\CRE\\COUMBER.cre\~ \~override\~ // UmberHulk

// Script créature COMPILE \~CDB\\CRE\\BCS\\COHARP1.baf\~ \~override\~
// Harpie COMPILE \~CDB\\CRE\\BCS\\COBAT1.baf\~ \~override\~ // Chauve
souris COMPILE \~CDB\\SPELL\\BCS\\WANP02.baf\~ \~override\~ // les
créatures baguette 2 deviennent des alliés () COMPILE
\~CDB\\SPELL\\BCS\\WANP03.baf\~ \~override\~ // les créatures baguette 3
deviennent des alliés () //COMPILE \~CDB\\SPELL\\BCS\\SPCMD2.baf\~
\~override\~ // les créatures baguette 2 deviennent des alliés NON UTILE
//COMPILE \~CDB\\SPELL\\BCS\\SPCMD3.baf\~ \~override\~ // les créatures
baguette 3 deviennent des alliés NON UTILE

// Dialogue COMPILE \~CDB\\DLG\\COMASSE2.d\~ \~override\~ USING
\~CDB\\DLG\\COMASSE2.tra\~ // Mission Massena le fantôme COMPILE
\~CDB\\DLG\\COHARP1.d\~ \~override\~ USING \~CDB\\DLG\\COHARP1.tra\~ //
Harpie

// Objet LOAD_TRA \~CDB\\LANGUAGE\\FRENCH\\OBJETS.TRA\~

// griffes de grouilleux COPY \~CDB\\ITM\\s1-8a.itm\~ \~override\~ //
acide COPY \~CDB\\ITM\\s1-8e.itm\~ \~override\~ // elec COPY
\~CDB\\ITM\\s1-8f.itm\~ \~override\~ // Feu COPY \~CDB\\ITM\\s1-8g.itm\~
\~override\~ // glace COPY \~CDB\\ITM\\s1-8p.itm\~ \~override\~ //
poison

// Baguette de commandement des Umberwalk (bleu) COPY
\~CDB\\ITM\\WANP02.itm\~ \~override\~ SAY NAME2 \@5054 SAY DESC \@5055

// Baguette de commandement des Trolls (vert) COPY
\~CDB\\ITM\\WANP03.itm\~ \~override\~ SAY NAME2 \@5056 SAY DESC \@5057

// clé pour ouvrir le coffre contenant la Rune COPY
\~CDB\\ITM\\COKEY01.itm\~ \~override\~ SAY NAME1 \@5106 SAY DESC \@5107

// Runes du coffre pour ouvrir le PS COPY \~CDB\\ITM\\CORUNE2.itm\~
\~override\~ SAY NAME1 \@5108 SAY DESC \@5109

// Sorts LOAD_TRA \~CDB\\LANGUAGE\\FRENCH\\Sorts.TRA\~ COPY
\~CDB\\SPELL\\WANP02.spl\~ \~override\~ // commandement créatures
baguette 2 SAY NAME1 \@18 COPY \~CDB\\SPELL\\WANP03.spl\~ \~override\~
// commandement créatures baguette 3 SAY NAME1 \@17 // COPY
\~CDB\\SPELL\\com015TP.spl\~ \~override\~ // Tp vers niv0-A NON UTILE
COPY \~CDB\\SPELL\\BREATH01.spl\~ \~override\~ // piège souffle après
ouverture du coffre

//COPY \~CDB\\SPELL\\spWI554.spl\~ \~override\~ // commandement
créatures baguette 2 //COPY \~CDB\\SPELL\\spWI555.spl\~ \~override\~ //
commandement créatures baguette 3 //COPY \~CDB\\SPELL\\SPPR225.spl\~
\~override\~ // piège coffre et souffle

// Cutscène COMPILE \~CDB\\CUTSCENE\\CSMASSE1.baf\~ \~override\~ USING
\~CDB\\LANGUAGE\\FRENCH\\COM015.TRA\~ // Ekilis brule les os de Massena

// Temple: salle sarcophage secrète
\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*
// Carte COPY \~CDB\\area\\COM016.are\~ \~override\~ COPY
\~CDB\\area\\COM016.mos\~ \~override\~ COPY_LARGE
\~CDB\\area\\COM016.tis\~ \~override\~ COPY \~CDB\\area\\COM016.wed\~
\~override\~ COPY \~CDB\\area\\COM016HT.bmp\~ \~override\~ COPY
\~CDB\\area\\COM016LM.bmp\~ \~override\~ COPY
\~CDB\\area\\COM016SR.bmp\~ \~override\~

// Script carte COMPILE \~CDB\\AREA\\BCS\\COM016.baf\~ \~override\~
USING \~CDB\\LANGUAGE\\FRENCH\\COM016.TRA\~ COMPILE
\~CDB\\AREA\\BCS\\COT01601.baf\~ \~override\~ USING
\~CDB\\LANGUAGE\\FRENCH\\COM016.TRA\~ COMPILE
\~CDB\\AREA\\BCS\\COT01602.baf\~ \~override\~ USING
\~CDB\\LANGUAGE\\FRENCH\\COM016.TRA\~ // TXT zone de chaleur COMPILE
\~CDB\\AREA\\BCS\\COT01603.baf\~ \~override\~ USING
\~CDB\\LANGUAGE\\FRENCH\\COM016.TRA\~

// Créature

// Script créature

// Objet

// Temple: niveau -1
\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*
// Carte COPY \~CDB\\area\\COM017.are\~ \~override\~ COPY
\~CDB\\area\\COM017.mos\~ \~override\~ COPY_LARGE
\~CDB\\area\\COM017.tis\~ \~override\~ COPY \~CDB\\area\\COM017.wed\~
\~override\~ COPY \~CDB\\area\\COM017HT.bmp\~ \~override\~ COPY
\~CDB\\area\\COM017LM.bmp\~ \~override\~ COPY
\~CDB\\area\\COM017SR.bmp\~ \~override\~

// Script carte COMPILE \~CDB\\AREA\\BCS\\COM017.baf\~ \~override\~
USING \~CDB\\LANGUAGE\\FRENCH\\COM017.TRA\~ COMPILE
\~CDB\\AREA\\BCS\\COT01701.baf\~ \~override\~ USING
\~CDB\\LANGUAGE\\FRENCH\\COM017.TRA\~ // piège statue reptile COMPILE
\~CDB\\AREA\\BCS\\COT01702.baf\~ \~override\~ USING
\~CDB\\LANGUAGE\\FRENCH\\COM017.TRA\~ // Info salle conseil COMPILE
\~CDB\\AREA\\BCS\\COT01703.baf\~ \~override\~ USING
\~CDB\\LANGUAGE\\FRENCH\\COM017.TRA\~ // Info tête reptile COMPILE
\~CDB\\AREA\\BCS\\COT01704.baf\~ \~override\~ USING
\~CDB\\LANGUAGE\\FRENCH\\COM017.TRA\~ // Info sarco fermé - sacro ouvert
COMPILE \~CDB\\AREA\\BCS\\COT01705.baf\~ \~override\~ USING
\~CDB\\LANGUAGE\\FRENCH\\COM017.TRA\~ // Piège container éclair COMPILE
\~CDB\\AREA\\BCS\\COT01706.baf\~ \~override\~ USING
\~CDB\\LANGUAGE\\FRENCH\\COM017.TRA\~ // Piège container livre COMPILE
\~CDB\\AREA\\BCS\\COT01707.baf\~ \~override\~ USING
\~CDB\\LANGUAGE\\FRENCH\\COM017.TRA\~ // Piège salle puit //COMPILE
\~CDB\\AREA\\BCS\\COT01708.baf\~ \~override\~ USING
\~CDB\\LANGUAGE\\FRENCH\\COM017.TRA\~ // Apparition Massena NON UTILE
COMPILE \~CDB\\AREA\\BCS\\COT01709.baf\~ \~override\~ // Piège salle
puit: nuage poison COMPILE \~CDB\\AREA\\BCS\\COT01710.baf\~ \~override\~
// Piège salle puit: Eclair COMPILE \~CDB\\AREA\\BCS\\COT01711.baf\~
\~override\~ USING \~CDB\\LANGUAGE\\FRENCH\\COM017.TRA\~ // Info puit
COMPILE \~CDB\\AREA\\BCS\\COT01712.baf\~ \~override\~ USING
\~CDB\\LANGUAGE\\FRENCH\\COM017.TRA\~ // Rencontre Systéra COMPILE
\~CDB\\AREA\\BCS\\COT01713.baf\~ \~override\~ USING
\~CDB\\LANGUAGE\\FRENCH\\COM017.TRA\~ // Info odeur couloir COMPILE
\~CDB\\AREA\\BCS\\COT01714.baf\~ \~override\~ USING
\~CDB\\LANGUAGE\\FRENCH\\COM017.TRA\~ // Brûlure dans le feu pour
prendre des crânes de feu //COMPILE \~CDB\\AREA\\BCS\\COT01715.baf\~ //
ouverture de la grille des épreuves NON UTILE COMPILE
\~CDB\\AREA\\BCS\\COT01716.baf\~ \~override\~ USING
\~CDB\\LANGUAGE\\FRENCH\\COM017.TRA\~ // Info déclenchement évènement du
puit COMPILE \~CDB\\AREA\\BCS\\COT01717.baf\~ \~override\~ USING
\~CDB\\LANGUAGE\\FRENCH\\COM017.TRA\~ // Info feu avec crâne //COMPILE
\~CDB\\AREA\\BCS\\COT01718.baf\~ \~override\~ // Sort suppression des
invocations dans la zone. NON UTILE COMPILE
\~CDB\\AREA\\BCS\\COT01719.baf\~ \~override\~ // Sort TP retour des
épreuves COMPILE \~CDB\\AREA\\BCS\\COT017CF.baf\~ \~override\~ USING
\~CDB\\LANGUAGE\\FRENCH\\COM017.TRA\~ // Info champ de force bloquant
l\'accès COMPILE \~CDB\\AREA\\BCS\\COT017TP.baf\~ \~override\~ //
Activation Téléport COM018 COMPILE \~CDB\\AREA\\BCS\\COTTP02.baf\~
\~override\~ // Déplacement du groupe dans la salle n°1 COMPILE
\~CDB\\AREA\\BCS\\COT017i1.baf\~ \~override\~ USING
\~CDB\\LANGUAGE\\FRENCH\\COM017.TRA\~ // Info statues COMPILE
\~CDB\\CRE\\BCS\\CODEST.baf\~ \~override\~ // Disparition des créatures
COMPILE \~CDB\\SPELL\\BCS\\COBM.baf\~ \~override\~ // Top sort piège à
crane de Cyric lancé

// Créature LOAD_TRA \~CDB\\LANGUAGE\\Noms.TRA\~ COPY
\~CDB\\CRE\\COMASSE2.cre\~ \~override\~ // Massena réussité SAY NAME1
\@276 SAY NAME2 \@276 COPY \~CDB\\CRE\\COSYSTE.cre\~ \~override\~ //
Systéra SAY NAME1 \@298 SAY NAME2 \@298 COPY \~CDB\\CRE\\COBHAAL.cre\~
\~override\~ // Bhaal dans le puit SAY NAME1 \@302 SAY NAME2 \@302 COPY
\~CDB\\CRE\\COMASQM1.cre\~ \~override\~ // Masque de mort SAY NAME1
\@306 SAY NAME2 \@306

// Script créature COMPILE \~CDB\\CRE\\BCS\\COMASCOM.baf\~ \~override\~
// Combat Massena COMPILE \~CDB\\CRE\\BCS\\COSYSTE.baf\~ \~override\~
USING \~CDB\\DLG\\COSYSTE.tra\~ // Systéra COMPILE
\~CDB\\CRE\\BCS\\COMASQM1.baf\~ \~override\~ // masque de mort combat
COMPILE \~CDB\\CRE\\BCS\\COMASQMP.baf\~ \~override\~ USING
\~CDB\\DLG\\COMASQMP.tra\~// masque de mort prière COMPILE
\~CDB\\CRE\\BCS\\COMASQME.baf\~ \~override\~ // masque de mort
affectation equipement

// Dialogue COMPILE \~CDB\\DLG\\COMASSE3.d\~ \~override\~ USING
\~CDB\\DLG\\COMASSE3.tra\~ // Massena réssucité COMPILE
\~CDB\\DLG\\COMASSE4.d\~ \~override\~ USING \~CDB\\DLG\\COMASSE4.tra\~
// Le groupe revient des épreuves COMPILE \~CDB\\DLG\\COSYSTE.d\~
\~override\~ USING \~CDB\\DLG\\COSYSTE.tra\~ // Systéra

// Projectile ADD_PROJECTILE \~CDB\\PRO\\COSKUBM.pro\~ \~Piège à crâne
de Cyric\~ COPY \~CDB\\PRO\\COSKUBM.pro\~ \~override\~

ADD_PROJECTILE \~CDB\\PRO\\COSKUF1.pro\~ \~crâne de Feu\~ COPY
\~CDB\\PRO\\COSKUF1.pro\~ \~override\~

// Objets LOAD_TRA \~CDB\\LANGUAGE\\FRENCH\\OBJETS.TRA\~ // Livre d\'un
masque de mort COPY \~CDB\\ITM\\BOKP08.itm\~ \~override\~ SAY NAME1
\@5110 SAY NAME2 \@5110 SAY DESC \@5111

// Crâne de feu COPY \~CDB\\ITM\\MISCP57.itm\~ \~override\~ LPF
ALTER_SPELL_HEADER INT_VAR projectile = (IDS_OF_SYMBOL (projectl
COSKUF1) + 1) END WRITE_SHORT 0x09C \~%COSKUF1%\~ SAY NAME1 \@5114 SAY
NAME2 \@5114 SAY DESC \@5115 //SAY UNIDENTIFIED_DESC BUT_ONLY

// Pierre gardienne de sang de Systéra (ouvre le PS de la salle de
prière) COPY \~CDB\\ITM\\MISCP58.itm\~ \~override\~

// Crâne de Kept (débloque les pièges) COPY \~CDB\\ITM\\MISCP62.itm\~
\~override\~ SAY NAME1 \@5125 SAY NAME2 \@5125 SAY DESC \@5126

// Couleur bleue la liche Systéra COPY \~CDB\\ITM\\RingP13.itm\~
\~override\~

// Sorts LOAD_TRA \~CDB\\LANGUAGE\\FRENCH\\SORTS.TRA\~

COPY \~CDB\\SPELL\\COBM.spl\~ \~override\~ // Piège à crâne de Cyric, la
mort de Bhaal LPF ALTER_SPELL_HEADER INT_VAR projectile = (IDS_OF_SYMBOL
(projectl COSKUBM) + 1) END SAY NAME1 \@20 BUT_ONLY

COPY \~CDB\\SPELL\\CODESINV.spl\~ \~override\~ // sort Désinvocation de
créatures SAY NAME1 \@7 COPY \~CDB\\SPELL\\COAIRPUR.spl\~ \~override\~
// sort fin des gaz COPY \~CDB\\SPELL\\CON017CF.spl\~ \~override\~ //
Brulures pour récupérer les Crânes de feu COPY
\~CDB\\SPELL\\COM017TT.spl\~ \~override\~ // Fin de Bhaal et tremblement
de terre COPY \~CDB\\SPELL\\COM017TP.spl\~ \~override\~ // Téléport
épreuves

// Cutscène COMPILE \~CDB\\CUTSCENE\\CSMASSE2.baf\~ \~override\~ //
Placement puit de Bhaal

// TextScreen LOAD_TRA \~CDB\\LANGUAGE\\FRENCH\\TextScreen.TRA\~ COPY
\~CDB\\2DA\\COTS010.2DA\~ \~override\~ // Rencontre Systéra REPLACE
\~99999\~ \@5001 REPLACE \~99998\~ \@6013 REPLACE \~99997\~ \@6014
REPLACE \~99996\~ \@6015

COPY \~CDB\\2DA\\COTS007.2DA\~ \~override\~ // Appel du puit REPLACE
\~99999\~ \@5001 REPLACE \~99998\~ \@6003

COPY \~CDB\\2DA\\COTS011.2DA\~ \~override\~ // Bhaal anéanti REPLACE
\~99999\~ \@5001 REPLACE \~99998\~ \@6016

// Epreuves du temple: salle 1 & 2
\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*
// Carte COPY \~CDB\\area\\COM018.are\~ \~override\~ COPY
\~CDB\\area\\COM018.mos\~ \~override\~ COPY_LARGE
\~CDB\\area\\COM018.tis\~ \~override\~ COPY \~CDB\\area\\COM018.wed\~
\~override\~ COPY \~CDB\\area\\COM018HT.bmp\~ \~override\~ COPY
\~CDB\\area\\COM018LM.bmp\~ \~override\~ COPY
\~CDB\\area\\COM018SR.bmp\~ \~override\~

// Script carte COMPILE \~CDB\\AREA\\BCS\\COM018.baf\~ \~override\~
USING \~CDB\\LANGUAGE\\FRENCH\\COM018.TRA\~ COMPILE
\~CDB\\AREA\\BCS\\COT01801.baf\~ \~override\~ // Piège grille1 COMPILE
\~CDB\\AREA\\BCS\\COT01802.baf\~ \~override\~ // Piège dissipation magie
COMPILE \~CDB\\AREA\\BCS\\COT01805.baf\~ \~override\~ // arrivée
Téléport COM018: début des épreuves //COMPILE
\~CDB\\AREA\\BCS\\COT018TP.baf\~ \~override\~ // lancement TP niveau
aléatoire NON UTILE COMPILE \~CDB\\AREA\\BCS\\COT018DA.baf\~
\~override\~ // ouverture grille 3 coté Com018 COMPILE
\~CDB\\AREA\\BCS\\CON01801.baf\~ \~override\~ // ouverture coffre -
ouverture grille COMPILE \~CDB\\AREA\\BCS\\CON01802.baf\~ \~override\~
// ouverture stèle

// Créature COPY \~CDB\\CRE\\cotanar1.cre\~ \~override\~ COPY
\~CDB\\CRE\\cocambi1.cre\~ \~override\~ COPY \~CDB\\CRE\\coSKE_1.cre\~
\~override\~ COPY \~CDB\\CRE\\coSKE_2.cre\~ \~override\~ COPY
\~CDB\\CRE\\coSKE_3.cre\~ \~override\~ COPY \~CDB\\CRE\\cogole01.cre\~
\~override\~

// Script créature COMPILE \~CDB\\CRE\\BCS\\COBOSDIE.baf\~ \~override\~
// Animation mort du Boss + larme de sang COMPILE
\~CDB\\CRE\\BCS\\COTANAR1.baf\~ \~override\~ USING
\~CDB\\DLG\\COTANAR1.tra\~ COMPILE \~CDB\\CRE\\BCS\\COCAMBI1.baf\~
\~override\~ USING \~CDB\\DLG\\COCAMBI1.tra\~ COMPILE
\~CDB\\CRE\\BCS\\CO18DEA1.baf\~ \~override\~ // réapparition Squelette
COMPILE \~CDB\\CRE\\BCS\\CO18DEA2.baf\~ \~override\~ // réapparition
Squelette COMPILE \~CDB\\CRE\\BCS\\CO18DEA3.baf\~ \~override\~ //
réapparition Squelette

// Dialogue COMPILE \~CDB\\DLG\\COTANAR1.d\~ \~override\~ USING
\~CDB\\DLG\\COTANAR1.tra\~ COMPILE \~CDB\\DLG\\COCAMBI1.d\~ \~override\~
USING \~CDB\\DLG\\COCAMBI1.tra\~

// Objet LOAD_TRA \~CDB\\LANGUAGE\\FRENCH\\OBJETS.TRA\~

// Larme de sang de Bhaal: BOSS Démon COPY \~CDB\\ITM\\MISCP26.itm\~
\~override\\Miscp35.itm\~ SAY NAME1 \@5060 SAY NAME2 \@5060 SAY
UNIDENTIFIED_DESC \@5061 SAY DESC \@5062

// Larme de sang de Bhaal: BOSS Golem d\'os COPY
\~CDB\\ITM\\MISCP26.itm\~ \~override\\Miscp36.itm\~ SAY NAME1 \@5060 SAY
NAME2 \@5060 SAY UNIDENTIFIED_DESC \@5061 SAY DESC \@5063

// Corde pour descendre/monter dans la salle au damier COPY
\~CDB\\ITM\\MISCP31.itm\~ \~override\~ SAY DESC \@5131

// Sorts COPY \~CDB\\SPELL\\coM018TP.spl\~ \~override\~ // Tp vers
niveau aléatoire COMPILE \~CDB\\SPELL\\BCS\\COTTP18.baf\~ \~override\~
// effet du sort TP niveau aléatoire

// Epreuves du temple: salle 3 / Le damier / Spectateur
\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

// Carte COPY \~CDB\\area\\COM019.are\~ \~override\~ COPY
\~CDB\\area\\COM019.mos\~ \~override\~ COPY_LARGE
\~CDB\\area\\COM019.tis\~ \~override\~ COPY \~CDB\\area\\COM019.wed\~
\~override\~ COPY \~CDB\\area\\COM019HT.bmp\~ \~override\~ COPY
\~CDB\\area\\COM019LM.bmp\~ \~override\~ COPY
\~CDB\\area\\COM019SR.bmp\~ \~override\~

// Script carte COMPILE \~CDB\\AREA\\BCS\\COM019.baf\~ COMPILE
\~CDB\\AREA\\BCS\\COT019A6.baf\~ \~override\~ USING
\~CDB\\LANGUAGE\\FRENCH\\COM019.TRA\~ // apparition Monk1 ligne A case 6
COMPILE \~CDB\\AREA\\BCS\\COT019C.baf\~ \~override\~ // Piège éclair
ligne C COMPILE \~CDB\\AREA\\BCS\\COT019E.baf\~ \~override\~ // Piège
incinérateur AZ ligne E

//COMPILE \~CDB\\AREA\\BCS\\CON019E1.baf\~ \~override\~ // Effigie01
arrêt foudre avec pierre blanche (coupole 1) / Miscp27 //COMPILE
\~CDB\\AREA\\BCS\\CON019E2.baf\~ \~override\~ // Effigie02 arrêt
incinerateur avec pierre jaune (coupole 2) / Miscp28 //COMPILE
\~CDB\\AREA\\BCS\\CON019E3.baf\~ \~override\~ // Effigie03 ouverture
porte salle Kael avec pierre orange (donnée par Luncinda) / Miscp30
//COMPILE \~CDB\\AREA\\BCS\\CON019E5.baf\~ \~override\~ // Effigie05
rien //COMPILE \~CDB\\AREA\\BCS\\CON019E6.baf\~ \~override\~ //
Effigie06 rien //COMPILE \~CDB\\AREA\\BCS\\CON019E7.baf\~ \~override\~
// Effigie07 ouverture porte salle des morts avec pierre rouge sombre
(coupole 4) / Miscp33 //COMPILE \~CDB\\AREA\\BCS\\CON019E4.baf\~
\~override\~ // Effigie04 arrêt élémentaux avec pierre bleu étoile
(coupole 7) / Miscp34 NON UTILE //COMPILE
\~CDB\\AREA\\BCS\\CON019E8.baf\~ \~override\~ // Effigie08 arrêt crane
et symbole avec pierre violette / Miscp29 NON UTILE

COMPILE \~CDB\\AREA\\BCS\\CON01901.baf\~ \~override\~ // ouverture
coffre: apparition Spectateur

//COMPILE \~CDB\\AREA\\BCS\\COT01901.baf\~ \~override\~ // gestion
apparition coffre KO - gestion avec la pierre grenat NON UTILE //COMPILE
\~CDB\\AREA\\BCS\\COT01902.baf\~ \~override\~ // gestion apparition
coffre OK - gestion avec la pierre grenat NON UTILE COMPILE
\~CDB\\AREA\\BCS\\COT01903.baf\~ \~override\~ // Effigie cône de glace
COMPILE \~CDB\\AREA\\BCS\\COT01904.baf\~ \~override\~ // Effigie Chaôs
COMPILE \~CDB\\AREA\\BCS\\COT01905.baf\~ \~override\~ // charme néfaste
COMPILE \~CDB\\AREA\\BCS\\COT0196A.baf\~ \~override\~ // piège à crâne
COMPILE \~CDB\\AREA\\BCS\\COT0196B.baf\~ \~override\~ // piège à crâne
COMPILE \~CDB\\AREA\\BCS\\COT0196C.baf\~ \~override\~ // piège à crâne

COMPILE \~CDB\\AREA\\BCS\\COT0197A.baf\~ \~override\~ // Sort symbôle
aléatoire COMPILE \~CDB\\AREA\\BCS\\COT0197B.baf\~ \~override\~ // Sort
symbôle aléatoire COMPILE \~CDB\\AREA\\BCS\\COT0197C.baf\~ \~override\~
// Sort symbôle aléatoire COMPILE \~CDB\\AREA\\BCS\\COT0197D.baf\~
\~override\~ // Sort symbôle aléatoire

COMPILE \~CDB\\AREA\\BCS\\COT0198A.baf\~ \~override\~ // Créatures
élémentaires COMPILE \~CDB\\AREA\\BCS\\COT0198B.baf\~ \~override\~ //
Créatures élémentaires COMPILE \~CDB\\AREA\\BCS\\COT0198C.baf\~
\~override\~ // Créatures élémentaires COMPILE
\~CDB\\AREA\\BCS\\COT0198D.baf\~ \~override\~ // Créatures élémentaires
COMPILE \~CDB\\AREA\\BCS\\COT019SE.baf\~ \~override\~ // Déclenchement
dialogue Statue Elvina

COMPILE \~CDB\\AREA\\BCS\\COT0191T.baf\~ \~override\~ // Trou N°1 et
chûte dans la salle COM020 COMPILE \~CDB\\AREA\\BCS\\COT0191I.baf\~
\~override\~ USING \~CDB\\LANGUAGE\\FRENCH\\COM019.TRA\~ // Trou N°1 et
gestion de la corde monter/descendre COMPILE
\~CDB\\AREA\\BCS\\COT0192T.baf\~ \~override\~ // Trou N°2 et chûte dans
la salle COM020 COMPILE \~CDB\\AREA\\BCS\\COT0192I.baf\~ \~override\~
USING \~CDB\\LANGUAGE\\FRENCH\\COM019.TRA\~ // Trou N°2 et gestion de la
corde monter/descendre COMPILE \~CDB\\AREA\\BCS\\COT0193T.baf\~
\~override\~ // Trou N°3 et chûte dans la salle COM020 COMPILE
\~CDB\\AREA\\BCS\\COT0193I.baf\~ \~override\~ USING
\~CDB\\LANGUAGE\\FRENCH\\COM019.TRA\~ // Trou N°3 et gestion de la corde
monter/descendre COMPILE \~CDB\\AREA\\BCS\\COT0194T.baf\~ \~override\~
// Trou N°4 et chûte dans la salle COM020 COMPILE
\~CDB\\AREA\\BCS\\COT0194I.baf\~ \~override\~ USING
\~CDB\\LANGUAGE\\FRENCH\\COM019.TRA\~ // Trou N°4 et gestion de la corde
monter/descendre COMPILE \~CDB\\AREA\\BCS\\COT0195T.baf\~ \~override\~
// Trou N°5 et chûte dans la salle COM020 COMPILE
\~CDB\\AREA\\BCS\\COT0195I.baf\~ \~override\~ USING
\~CDB\\LANGUAGE\\FRENCH\\COM019.TRA\~ // Trou N°5 et gestion de la corde
monter/descendre COMPILE \~CDB\\AREA\\BCS\\Cot019S1.baf\~ \~override\~
USING \~CDB\\LANGUAGE\\FRENCH\\COM019.TRA\~ // gestion accès bassins KO
si présence de la grille

COMPILE \~CDB\\AREA\\BCS\\COT019DA.baf\~ \~override\~ // ouverture
grilleA du haut coté Com019 \<\> Com018

//COMPILE \~CDB\\AREA\\BCS\\Cot019S2.baf\~ \~override\~ USING
\~CDB\\LANGUAGE\\FRENCH\\COM019.TRA\~ // gestion accès sous-sol KO si
présence de la grille

// Créature LOAD_TRA \~CDB\\LANGUAGE\\Noms.TRA\~ COPY
\~CDB\\CRE\\COMONK1.cre\~ \~override\~ COPY \~CDB\\CRE\\COELWAT1.cre\~
\~override\~ // Elémentaires COPY \~CDB\\CRE\\ELEFEL01.cre\~
\~override\~ COPY \~CDB\\CRE\\ELEARL01.cre\~ \~override\~ COPY
\~CDB\\CRE\\COELAIR1.cre\~ \~override\~ COPY \~CDB\\CRE\\COSTATL.cre\~
\~override\~ // Effigie Luncida et Elvina SAY NAME1 \@279 SAY NAME2
\@279 COPY \~CDB\\CRE\\COSTATE.cre\~ \~override\~ SAY NAME1 \@280 SAY
NAME2 \@280 COPY \~CDB\\CRE\\COGALIK.cre\~ \~override\~ // Serviteur
Gaélik SAY NAME1 \@281 SAY NAME2 \@281 COPY \~CDB\\CRE\\COSPEC1.cre\~
\~override\~ // Boss spectateur

// Script créature COMPILE \~CDB\\CRE\\BCS\\COMONK1.baf\~ \~override\~
USING \~CDB\\LANGUAGE\\FRENCH\\CRE_TXT.TRA\~ // gestion sort Monk
COMPILE \~CDB\\CRE\\BCS\\ELEMDIE.baf\~ \~override\~ // apparition d\'un
objet à la destruction de l\'élémentaire COMPILE
\~CDB\\CRE\\BCS\\COGALIK.baf\~ \~override\~ //COMPILE
\~CDB\\CRE\\BCS\\COSNAK1.baf\~ \~override\~ // fichier manquant non
utile à priori

// Dialogue COMPILE \~CDB\\DLG\\COCORDE1.d\~ \~override\~ USING
\~CDB\\DLG\\COCORDE1.tra\~ // Gestion de la corde Trou 1 COMPILE
\~CDB\\DLG\\COCORDE2.d\~ \~override\~ USING \~CDB\\DLG\\COCORDE1.tra\~
// Gestion de la corde Trou 2 COMPILE \~CDB\\DLG\\COCORDE3.d\~
\~override\~ USING \~CDB\\DLG\\COCORDE1.tra\~ // Gestion de la corde
Trou 3 COMPILE \~CDB\\DLG\\COCORDE4.d\~ \~override\~ USING
\~CDB\\DLG\\COCORDE1.tra\~ // Gestion de la corde Trou 4 COMPILE
\~CDB\\DLG\\COCORDE5.d\~ \~override\~ USING \~CDB\\DLG\\COCORDE1.tra\~
// Gestion de la corde Trou 5 //COMPILE \~CDB\\DLG\\COSTATE.d\~
\~override\~ USING \~CDB\\DLG\\COSTATE.tra\~ // Dialogue des statues
COMPILE \~CDB\\DLG\\statues.d\~ \~override\~ USING
\~CDB\\DLG\\statues.tra\~ // Dialogue des statues

// Objet LOAD_TRA \~CDB\\LANGUAGE\\FRENCH\\OBJETS.TRA\~

// Larme de sang de Bhaal: BOSS Spectateur COPY
\~CDB\\ITM\\MISCP26.itm\~ \~override\\Miscp37.itm\~ SAY NAME1 \@5060 SAY
NAME2 \@5060 SAY UNIDENTIFIED_DESC \@5061 SAY DESC \@5064

// pierres taillées COPY \~CDB\\ITM\\MISCP27.itm\~
\~override\\Miscp27.itm\~ // Blanche SAY NAME1 \@5250 SAY NAME2 \@5250
SAY DESC \@5251

COPY \~CDB\\ITM\\MISCP28.itm\~ \~override\\Miscp28.itm\~ // jaune SAY
NAME1 \@5252 SAY NAME2 \@5252 SAY DESC \@5253

COPY \~CDB\\ITM\\MISCP29.itm\~ \~override\\Miscp29.itm\~ // violette SAY
NAME1 \@5254 SAY NAME2 \@5254 SAY DESC \@5255

COPY \~CDB\\ITM\\MISCP33.itm\~ \~override\\Miscp33.itm\~ // rouge SAY
NAME1 \@5256 SAY NAME2 \@5256 SAY DESC \@5257

COPY \~CDB\\ITM\\MISCP34.itm\~ \~override\\Miscp34.itm\~ // Bleu et
blanche SAY NAME1 \@5258 SAY NAME2 \@5258 SAY DESC \@5259

COPY \~CDB\\ITM\\MISCP31.itm\~ \~override\\Miscp31.itm\~ // corde SAY
NAME1 \@5260 SAY NAME2 \@5260 SAY DESC \@5261

COPY \~CDB\\ITM\\P8-2P.itm\~ \~override\~

// Sorts //COPY \~CDB\\SPELL\\SPIN111.spl\~ \~override\~ // NON UTILE

// Cutscène

// TextScreen

// Epreuves du temple: salle 4 / Le sous-sol /
\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*
// Carte COPY \~CDB\\area\\COM020.are\~ \~override\~ COPY
\~CDB\\area\\COM020.mos\~ \~override\~ COPY_LARGE
\~CDB\\area\\COM020.tis\~ \~override\~ COPY \~CDB\\area\\COM020.wed\~
\~override\~ COPY \~CDB\\area\\COM020HT.bmp\~ \~override\~ COPY
\~CDB\\area\\COM020LM.bmp\~ \~override\~ COPY
\~CDB\\area\\COM020SR.bmp\~ \~override\~

// Script carte COMPILE \~CDB\\AREA\\BCS\\COM020.baf\~ \~override\~
USING \~CDB\\LANGUAGE\\FRENCH\\COM020.TRA\~ COMPILE
\~CDB\\AREA\\BCS\\COT020E1.baf\~ \~override\~ USING
\~CDB\\LANGUAGE\\FRENCH\\COM020.TRA\~ // Embuscade zone 1 COMPILE
\~CDB\\AREA\\BCS\\COT020E2.baf\~ \~override\~ USING
\~CDB\\LANGUAGE\\FRENCH\\COM020.TRA\~ // Embuscade zone 2 COMPILE
\~CDB\\AREA\\BCS\\COT020E3.baf\~ \~override\~ USING
\~CDB\\LANGUAGE\\FRENCH\\COM020.TRA\~ // Embuscade zone 3 COMPILE
\~CDB\\AREA\\BCS\\COT020.baf\~ \~override\~ USING
\~CDB\\LANGUAGE\\FRENCH\\COM020.TRA\~ // Proposition grimper à la corde
(de la position 1 à 5) COMPILE \~CDB\\AREA\\BCS\\COT020F1.baf\~
\~override\~ // Gestion chute trappe salle damiers trou1 COMPILE
\~CDB\\AREA\\BCS\\COT020F2.baf\~ \~override\~ // Gestion chute trappe
salle damiers trou2 COMPILE \~CDB\\AREA\\BCS\\COT020F3.baf\~
\~override\~ // Gestion chute trappe salle damiers trou3 COMPILE
\~CDB\\AREA\\BCS\\COT020F4.baf\~ \~override\~ // Gestion chute trappe
salle damiers trou4 COMPILE \~CDB\\AREA\\BCS\\COT020F5.baf\~
\~override\~ // Gestion chute trappe salle damiers trou5 COMPILE
\~CDB\\AREA\\BCS\\COT020D.baf\~ \~override\~ // gestion du duel avec
Islendra COMPILE \~CDB\\AREA\\BCS\\COT020I1.baf\~ \~override\~ USING
\~CDB\\LANGUAGE\\FRENCH\\COM020.TRA\~ // traces de pas de Glabuk COMPILE
\~CDB\\AREA\\BCS\\COT020P1.baf\~ \~override\~ // Piège électrique
COMPILE \~CDB\\AREA\\BCS\\COT020G1.baf\~ \~override\~ // gestion état
grille1 grotte COM020 - PS salle Bassin COM022 // COMPILE
\~CDB\\AREA\\BCS\\Cot020g2.baf\~ \~override\~ USING
\~CDB\\LANGUAGE\\FRENCH\\COM020.TRA\~ // gestion accès grille 2 // NON
UTILE

// Créature LOAD_TRA \~CDB\\LANGUAGE\\Noms.TRA\~ COPY
\~CDB\\CRE\\COISLEN.cre\~ \~override\~ // Boss Islendra SAY NAME1 \@295
SAY NAME2 \@295 //COPY \~CDB\\CRE\\cobasil1.cre\~ \~override\~ //
Basilik Glabuk // SAY NAME1 \@297 COPY \~CDB\\CRE\\cobatin.cre\~
\~override\~ // Chauve souris espionne COPY \~CDB\\CRE\\cocord.cre\~
\~override\~ // gestion corde pour monter

// Script créature COMPILE \~CDB\\CRE\\BCS\\COISLEN.baf\~ \~override\~
USING \~CDB\\DLG\\COISLEN.tra\~ COMPILE \~CDB\\CRE\\BCS\\COISLE2.baf\~
\~override\~ USING \~CDB\\DLG\\COISLEN.tra\~ COMPILE
\~CDB\\CRE\\BCS\\COCHAS.baf\~ \~override\~ // Script Chauve-souris
espion

// Script sorts COMPILE \~CDB\\SPELL\\BCS\\COS0201.baf\~ \~override\~ //
Téléport du PNJ pour un duel

// Dialogue COMPILE \~CDB\\DLG\\COISLEN.d\~ \~override\~ USING
\~CDB\\DLG\\COISLEN.tra\~ COMPILE \~CDB\\DLG\\COBCORD.d\~ \~override\~
USING \~CDB\\DLG\\COBCOR.tra\~ // Dialogue pour monter la corde

// Objet LOAD_TRA \~CDB\\LANGUAGE\\FRENCH\\OBJETS.TRA\~

// Flêche duel TP COPY \~CDB\\ITM\\AROP01.itm\~ \~override\~

// larme de Sang de Bhaal Boss Islendra COPY \~CDB\\ITM\\MISCP26.itm\~
\~override\\MISCP38.itm\~ SAY NAME1 \@5060 SAY NAME2 \@5060 SAY
UNIDENTIFIED_DESC \@5061 SAY DESC \@5065

// Rune pour ouvrir les grilles COPY \~CDB\\ITM\\MISCP59.itm\~
\~override\~ SAY NAME1 \@5129 SAY NAME2 \@5129 SAY DESC \@5130

// Coupe de sang COPY \~CDB\\ITM\\MISCP63.itm\~ \~override\~ SAY NAME1
\@5262 SAY NAME2 \@5262 SAY DESC \@5263

// Sorts LOAD_TRA \~CDB\\LANGUAGE\\FRENCH\\SORTS.TRA\~ COPY
\~CDB\\SPELL\\COCORD.SPL\~ \~Override\~ // Chute à la corte ou via la
trappe

// Cutscène

// TextScreen

// Epreuves du temple: salle 5 / Sarcophage / Champion de Bhaal
\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*
// Carte LOAD_TRA \~CDB\\LANGUAGE\\FRENCH\\COM021.TRA\~ COPY
\~CDB\\area\\COM021.are\~ \~override\~

// ajout du message du cercueil bloqué SET Mon_Message = RESOLVE_STR_REF
(@6)

READ_LONG 0x70 \"cont_off\" // Offset to containers READ_SHORT 0x74
\"cont_num\" // Count of containers

FOR (k = 0 ; k \< cont_num ; ++k) BEGIN // Pour chaque conteneur

READ_ASCII (\"%cont_off%\" + (0xC0 \* k)) \"contain\" (32) NULL

PATCH_MATCH \~%contain%\~ WITH S2cercueil1 BEGIN WRITE_LONG
(\"%cont_off%\" + 0x84 + (0xC0 \* k)) Mon_Message END DEFAULT END END
COPY \~CDB\\area\\COM021.mos\~ \~override\~ COPY_LARGE
\~CDB\\area\\COM021.tis\~ \~override\~ COPY \~CDB\\area\\COM021.wed\~
\~override\~ COPY \~CDB\\area\\COM021HT.bmp\~ \~override\~ COPY
\~CDB\\area\\COM021LM.bmp\~ \~override\~ COPY
\~CDB\\area\\COM021SR.bmp\~ \~override\~

// Script carte COMPILE \~CDB\\AREA\\BCS\\COM021.baf\~ \~override\~
USING \~CDB\\LANGUAGE\\FRENCH\\COM021.TRA\~ COMPILE
\~CDB\\AREA\\BCS\\CON02101.baf\~ \~override\~ // gestion aléatoire de
l\'ouverture d\'un cercueil de la salle 2 COMPILE
\~CDB\\AREA\\BCS\\CON02102.baf\~ \~override\~ USING
\~CDB\\LANGUAGE\\FRENCH\\COM021.TRA\~ // Gestion compteur coffre1 ouvert
COMPILE \~CDB\\AREA\\BCS\\CON02103.baf\~ \~override\~ USING
\~CDB\\LANGUAGE\\FRENCH\\COM021.TRA\~ // Gestion compteur coffre2 ouvert
COMPILE \~CDB\\AREA\\BCS\\CON02104.baf\~ \~override\~ USING
\~CDB\\LANGUAGE\\FRENCH\\COM021.TRA\~ // Gestion compteur coffre3 ouvert
COMPILE \~CDB\\AREA\\BCS\\CON02105.baf\~ \~override\~ USING
\~CDB\\LANGUAGE\\FRENCH\\COM021.TRA\~ // Gestion compteur coffre4 ouvert

// Entrée COMPILE \~CDB\\AREA\\BCS\\COT02103.baf\~ \~override\~ // Le
levier change de position //COMPILE \~CDB\\AREA\\BCS\\COT02115.baf\~
\~override\~ // Gestion dialogue Caris //COMPILE
\~CDB\\AREA\\BCS\\COT02122.baf\~ \~override\~// nombre de Players
arrivés sur cette carte COMPILE \~CDB\\AREA\\BCS\\COT02123.baf\~
\~override\~// Gestion dialogue Caris

COMPILE \~CDB\\AREA\\BCS\\COT02127.baf\~ \~override\~ USING
\~CDB\\LANGUAGE\\FRENCH\\COM021.TRA\~ // info effigie de Caris COMPILE
\~CDB\\AREA\\BCS\\COT02128.baf\~ \~override\~ USING
\~CDB\\LANGUAGE\\FRENCH\\COM021.TRA\~ // Réveil Taguar

// Salle 1: salle feu COMPILE \~CDB\\AREA\\BCS\\COT02101.baf\~
\~override\~ USING \~CDB\\LANGUAGE\\FRENCH\\COM021.TRA\~ // MSG odeur
chair brulée COMPILE \~CDB\\AREA\\BCS\\COT02102.baf\~ \~override\~ //
Piège boule de feu de l\'entrée

// Salle 2: salle urglite COMPILE \~CDB\\AREA\\BCS\\COT02112.baf\~
\~override\~ USING \~CDB\\LANGUAGE\\FRENCH\\COM021.TRA\~ // Salle 2 MSG
courant d\'air froid COMPILE \~CDB\\AREA\\BCS\\COT02113.baf\~
\~override\~ USING \~CDB\\LANGUAGE\\FRENCH\\COM021.TRA\~ // Gestion
lamentations d\'Urglite

// Salle 3: salle squelletes COMPILE \~CDB\\AREA\\BCS\\COT02116.baf\~
\~override\~ // PS5 s\'ouvre // actionneur 1: Le PS mur bloquant
l\'accès à la salle 3/Niches s\'ouvre COMPILE
\~CDB\\AREA\\BCS\\COT02117.baf\~ \~override\~ // PS5 s\'ouvre //
actionneur 2: Le PS mur bloquant l\'accès à la salle 3/Niches s\'ouvre
COMPILE \~CDB\\AREA\\BCS\\COT02129.baf\~ \~override\~ // PS5 s\'ouvre //
gestion de l\'ouverture du PS mur bloquant l\'accès à la salle 3/Niches
s\'ouvre

COMPILE \~CDB\\AREA\\BCS\\COT021P5.baf\~ \~override\~ // Mouvement PC ou
PNJ pour que le PS5 se ferme COMPILE \~CDB\\AREA\\BCS\\COT02118.baf\~
\~override\~ // Apparitions créatures COMPILE
\~CDB\\AREA\\BCS\\COT02119.baf\~ \~override\~ // PS4 s\'ouvre COMPILE
\~CDB\\AREA\\BCS\\COT021P4.baf\~ \~override\~ // Mouvement PC ou PNJ
pour que le PS4 se ferme

// Salle 4: salle aux restes //COMPILE \~CDB\\AREA\\BCS\\COT02104.baf\~
\~override\~ // Apparition insectes dans le tas de cadavres NON UTILE
COMPILE \~CDB\\AREA\\BCS\\COT02105.baf\~ \~override\~ // Salle 4
ouv/ferm PS6 COMPILE \~CDB\\AREA\\BCS\\COT02106.baf\~ \~override\~ //
Salle 4 grille 1 se ferme COMPILE \~CDB\\AREA\\BCS\\COT02107.baf\~
\~override\~ // Salle 4 grille 1 s\'ouvre COMPILE
\~CDB\\AREA\\BCS\\COT02108.baf\~ \~override\~ // Salle 4 init fermeture
PS6 COMPILE \~CDB\\AREA\\BCS\\COT02109.baf\~ \~override\~ // Salle 4
grille 2 s\'ouvre //COMPILE \~CDB\\AREA\\BCS\\COT02110.baf\~
\~override\~ // Salle 4 grille 3 se ferme NON UTILE COMPILE
\~CDB\\AREA\\BCS\\COT02111.baf\~ \~override\~ // Salle 4 grille 3
s\'ouvre COMPILE \~CDB\\AREA\\BCS\\COT02120.baf\~ \~override\~ //
apparition insecte rampant COMPILE \~CDB\\AREA\\BCS\\COT02125.baf\~
\~override\~ // ouverture PS6 (zone insecte rampant) //COMPILE
\~CDB\\AREA\\BCS\\COT021P6.baf\~ \~override\~ // Mouvement PC ou PNJ
pour que le PS6 se ferme //COMPILE \~CDB\\AREA\\BCS\\COT021G1.baf\~
\~override\~ // Mouvement PC ou PNJ pour que le grille 1 se ferme
//COMPILE \~CDB\\AREA\\BCS\\COT021G2.baf\~ \~override\~ // Mouvement PC
ou PNJ pour que le grille 2 se ferme //COMPILE
\~CDB\\AREA\\BCS\\COT021G3.baf\~ \~override\~ // Mouvement PC ou PNJ
pour que la grille 3 se ferme

COMPILE \~CDB\\AREA\\BCS\\COT021G3.baf\~ \~override\~ // Mouvement PC ou
PNJ pour que la grille 3 se ferme

// Salle 5: niches COMPILE \~CDB\\AREA\\BCS\\CON02111.baf\~ \~override\~
// niche1 ouverte, on contrôle COMPILE \~CDB\\AREA\\BCS\\CON02112.baf\~
\~override\~ // niche2 ouverte, on contrôle COMPILE
\~CDB\\AREA\\BCS\\CON02113.baf\~ \~override\~ // niche3 ouverte, on
contrôle COMPILE \~CDB\\AREA\\BCS\\CON02114.baf\~ \~override\~ // niche4
ouverte, on contrôle

COMPILE \~CDB\\AREA\\BCS\\COT02124.baf\~ \~override\~// Contrôle du bon
placement des objets dans les niches.

// Salle 6: sortie COMPILE \~CDB\\AREA\\BCS\\COT02121.baf\~ //
Déclenchement sort téléport COM023

// Créature LOAD_TRA \~CDB\\LANGUAGE\\Noms.TRA\~

COPY \~CDB\\CRE\\COURGLIT.cre\~ \~override\~ // Reine fantôme Urglite
SAY NAME1 \@283 SAY NAME2 \@283

COPY \~CDB\\CRE\\COTAGUAR.cre\~ \~override\~ // Taguar Champion de Bhaal
SAY NAME1 \@284 SAY NAME2 \@284

COPY \~CDB\\CRE\\coelai01.cre\~ \~override\~ // Elémentair mineur glacé
SAY NAME1 \@285 SAY NAME2 \@285

COPY \~CDB\\CRE\\coskel02.cre\~ \~override\~ // Combattant squelette
glacé SAY NAME1 \@286 SAY NAME2 \@286

COPY \~CDB\\CRE\\COCARIS.cre\~ \~override\\COCARIS.CRE\~ // Effigie
Caris SAY NAME1 \@287 SAY NAME2 \@287

//COPY \~CDB\\CRE\\SKELET_C.cre\~ \~override\~ //COPY
\~CDB\\CRE\\COSW01.cre\~ \~override\~

// Script créature COMPILE \~CDB\\CRE\\BCS\\COURGLIT.baf\~ \~override\~
USING \~CDB\\DLG\\COURGLIT.tra\~ // Combat VS groupe COMPILE
\~CDB\\CRE\\BCS\\COURGLI2.baf\~ \~override\~ USING
\~CDB\\DLG\\COURGLIT.tra\~ // Combat VS Taguar COMPILE
\~CDB\\CRE\\BCS\\COTAGUAR.baf\~ \~override\~ USING
\~CDB\\DLG\\COURGLIT.tra\~ // Recherche du groupe COMPILE
\~CDB\\CRE\\BCS\\COTAGUA2.baf\~ \~override\~ USING
\~CDB\\DLG\\COURGLIT.tra\~ // Combat VS groupe COMPILE
\~CDB\\CRE\\BCS\\COTAGUA3.baf\~ \~override\~ USING
\~CDB\\DLG\\COURGLIT.tra\~ // Combat VS Urglite //COMPILE
\~CDB\\CRE\\BCS\\COCARIS.baf\~ \~override\~

// Dialogue COMPILE \~CDB\\DLG\\COURGLIT.d\~ \~override\~ USING
\~CDB\\DLG\\COURGLIT.tra\~ // Dialogue Urglite + Taguar COMPILE
\~CDB\\DLG\\COCARIS.d\~ \~override\~ USING \~CDB\\DLG\\COCARIS.tra\~

// Objet LOAD_TRA \~CDB\\LANGUAGE\\FRENCH\\OBJETS.TRA\~

// Larme de sang de Bhaal: Boss Taguar COPY \~CDB\\ITM\\MISCP26.itm\~
\~override\\Miscp39.itm\~ SAY NAME1 \@5060 SAY NAME2 \@5060 SAY
UNIDENTIFIED_DESC \@5061 SAY DESC \@5066

// Anneau de feu COPY \~CDB\\ITM\\Miscp48.itm\~ \~override\~ SAY NAME2
\@5074 SAY DESC \@5075

// Heaume noir COPY \~CDB\\ITM\\MISCP46.itm\~ \~override\~ SAY NAME2
\@5072 SAY DESC \@5073

// pierre de glace COPY \~CDB\\ITM\\MISCP47.itm\~ \~override\~ SAY NAME2
\@5070 SAY DESC \@5071

// crâne pierre COPY \~CDB\\ITM\\MISCP49.itm\~ \~override\~ SAY NAME2
\@5076 SAY DESC \@5077

// Clé coffre 1 COPY \~CDB\\ITM\\MISCP42.itm\~ \~override\~ SAY NAME2
\@5078 SAY DESC \@5079

// Clé coffre 2 COPY \~CDB\\ITM\\MISCP43.itm\~ \~override\~ SAY NAME2
\@5080 SAY DESC \@5081

// Clé coffre 3 COPY \~CDB\\ITM\\MISCP44.itm\~ \~override\~ SAY NAME2
\@5084 SAY DESC \@5085

// Clé coffre 4 COPY \~CDB\\ITM\\MISCP45.itm\~ \~override\~ SAY NAME2
\@5082 SAY DESC \@5083

// livre haut fait COPY \~CDB\\ITM\\MISCP50.itm\~ \~override\~ SAY NAME2
\@5086 SAY DESC \@5087

// Parchemin niche 4: anneau feu COPY \~CDB\\ITM\\MISCP51.itm\~
\~override\~ SAY NAME2 \@5088 SAY DESC \@5089

// Parchemin niche 3: Heaume noir COPY \~CDB\\ITM\\MISCP52.itm\~
\~override\~ SAY NAME2 \@5090 SAY DESC \@5091

// Parchemin niche 2: pierre glace COPY \~CDB\\ITM\\MISCP53.itm\~
\~override\~ SAY NAME2 \@5092 SAY DESC \@5093

// Parchemin niche 1: crane pierre COPY \~CDB\\ITM\\MISCP54.itm\~
\~override\~ SAY NAME2 \@5094 SAY DESC \@5095

// Poing de glace d\'Urglite COPY \~CDB\\ITM\\COICE1.itm\~ \~override\~
// 1d6 + 1d6 glace + 50% de chance réduction de 1 en force et dextérité

// Epée à deux mains des glaces +1 COPY \~CDB\\ITM\\SW2P05.itm\~
\~override\~ SAY NAME2 \@5096 SAY DESC \@5097

// Elementaire d\'air glacé: dégats de glace (+2) COPY
\~CDB\\ITM\\B1-20M3G.itm\~ \~override\~

// Anneau de Urglite: invocation élémental d\'air glacé COPY
\~CDB\\ITM\\RINGP11.itm\~ \~override\~ SAY NAME1 \@5098 SAY DESC \@5099
SAY NAME2 \@5100 SAY UNIDENTIFIED_DESC \@5101

// Livre Taguar COPY \~CDB\\ITM\\BOKP09.itm\~ \~override\~ SAY NAME2
\@5116 SAY DESC \@5117

// Livre Islendra COPY \~CDB\\ITM\\BOKP10.itm\~ \~override\~ SAY NAME2
\@5118 SAY DESC \@5119

// Livre Kael COPY \~CDB\\ITM\\BOKP11.itm\~ \~override\~ SAY NAME2
\@5120 SAY DESC \@5121

// projectile ADD_PROJECTILE \~CDB\\PRO\\COBREC1.pro\~ \~Souffle glacé\~
COPY \~CDB\\PRO\\COBREC1.pro\~ \~override\~

ADD_PROJECTILE \~CDB\\PRO\\COSHAC1.pro\~ \~Echarde glacée\~ COPY
\~CDB\\PRO\\COSHAC1.pro\~ \~override\~

// Sorts LOAD_TRA \~CDB\\LANGUAGE\\FRENCH\\Sorts.TRA\~

COPY \~CDB\\SPELL\\COBREC1.spl\~ \~override\~ // Souffle glacé LPF
ALTER_SPELL_HEADER INT_VAR projectile = (IDS_OF_SYMBOL (projectl
COBREC1) + 1) END SAY NAME1 \@15 BUT_ONLY

COPY \~CDB\\SPELL\\COSHAC1.spl\~ \~override\~ // Echarde glacée LPF
ALTER_SPELL_HEADER INT_VAR projectile = (IDS_OF_SYMBOL (projectl
COSHAC1) + 1) END SAY NAME1 \@16 BUT_ONLY

COPY \~CDB\\SPELL\\COM021TP.spl\~ \~override\~ // Téléport départ de
COM021 //COPY \~CDB\\SPELL\\SPCL230.spl\~ \~override\~ // Téléport
départ de COM021 //COPY \~CDB\\SPELL\\SPCL227.spl\~ \~override\~ //
//COPY \~CDB\\SPELL\\COMUSHG.spl\~ \~override\~ // Nuage fumée
(apparition créature)

// Cutscène COMPILE \~CDB\\CUTSCENE\\CS02101.baf\~ \~override\~ USING
\~CDB\\LANGUAGE\\FRENCH\\COM021.TRA\~ // Le PS pour sortir s\'ouvre.
Taguar se réveille.

// TextScreen

// Script Sort // COMPILE \~CDB\\SPELL\\BCS\\SPCL230.baf\~ \~override\~
// Téléport départ de COM021 COMPILE \~CDB\\SPELL\\BCS\\COM021TP.baf\~
\~override\~ // Téléport départ de COM021 //COPY
\~CDB\\SPELL\\SPCL233.spl\~ \~override\~ //COPY
\~CDB\\SPELL\\SPCL230.spl\~ \~override\~

// TextScreen

// Epreuves du temple: salle 6 / Salle de sang / Mage de sang
\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*
// Carte COPY \~CDB\\area\\COM022.are\~ \~override\~ COPY
\~CDB\\area\\COM022.mos\~ \~override\~ COPY_LARGE
\~CDB\\area\\COM022.tis\~ \~override\~ COPY \~CDB\\area\\COM022.wed\~
\~override\~ COPY \~CDB\\area\\COM022HT.bmp\~ \~override\~ COPY
\~CDB\\area\\COM022LM.bmp\~ \~override\~ COPY
\~CDB\\area\\COM022SR.bmp\~ \~override\~

// Script carte COMPILE \~CDB\\AREA\\BCS\\COM022.baf\~ \~override\~
USING \~CDB\\LANGUAGE\\FRENCH\\COM022.TRA\~ COMPILE
\~CDB\\AREA\\BCS\\COT022B1.baf\~ \~override\~ USING
\~CDB\\LANGUAGE\\FRENCH\\COM022.TRA\~ // Vider le bassin n°1 COMPILE
\~CDB\\AREA\\BCS\\COT022B2.baf\~ \~override\~ USING
\~CDB\\LANGUAGE\\FRENCH\\COM022.TRA\~ // Vider le bassin n°2 COMPILE
\~CDB\\AREA\\BCS\\COT022B3.baf\~ \~override\~ USING
\~CDB\\LANGUAGE\\FRENCH\\COM022.TRA\~ // Vider le bassin n°3 COMPILE
\~CDB\\AREA\\BCS\\COT022B4.baf\~ \~override\~ USING
\~CDB\\LANGUAGE\\FRENCH\\COM022.TRA\~ // Vider le bassin n°4 COMPILE
\~CDB\\AREA\\BCS\\COT022B5.baf\~ \~override\~ USING
\~CDB\\LANGUAGE\\FRENCH\\COM022.TRA\~ // Vider le bassin n°5 COMPILE
\~CDB\\AREA\\BCS\\COT022B6.baf\~ \~override\~ USING
\~CDB\\LANGUAGE\\FRENCH\\COM022.TRA\~ // Vider le bassin n°6 COMPILE
\~CDB\\AREA\\BCS\\COT022B7.baf\~ \~override\~ USING
\~CDB\\LANGUAGE\\FRENCH\\COM022.TRA\~ // Vider le bassin n°7 COMPILE
\~CDB\\AREA\\BCS\\COT022B8.baf\~ \~override\~ USING
\~CDB\\LANGUAGE\\FRENCH\\COM022.TRA\~ // Vider le bassin n°8 COMPILE
\~CDB\\AREA\\BCS\\COT022B9.baf\~ \~override\~ USING
\~CDB\\LANGUAGE\\FRENCH\\COM022.TRA\~ // Vider le bassin n°9

COMPILE \~CDB\\AREA\\BCS\\COT022TS.baf\~ \~override\~ // Textscreen
couloir sombre en passant par la salle KAel lors du 1ier passage

COMPILE \~CDB\\AREA\\BCS\\COT022F.baf\~ \~override\~ USING
\~CDB\\LANGUAGE\\FRENCH\\COM022.TRA\~ // soin fontaine pour Kael COMPILE
\~CDB\\AREA\\BCS\\COT02201.baf\~ \~override\~ // apparition créature
défendant les bassins zone 1 COMPILE \~CDB\\AREA\\BCS\\COT02202.baf\~
\~override\~ // apparition créature défendant les bassins zone 2 COMPILE
\~CDB\\AREA\\BCS\\COT02203.baf\~ \~override\~ USING
\~CDB\\LANGUAGE\\FRENCH\\COM022.TRA\~ // info bassin central COMPILE
\~CDB\\AREA\\BCS\\COT02207.baf\~ \~override\~ USING
\~CDB\\LANGUAGE\\FRENCH\\COM022.TRA\~ // Kaél revient près du Bassin
COMPILE \~CDB\\AREA\\BCS\\COT02208.baf\~ \~override\~ USING
\~CDB\\LANGUAGE\\FRENCH\\COM022.TRA\~ // Kaél revient près du Bassin
COMPILE \~CDB\\AREA\\BCS\\COT02209.baf\~ \~override\~ // Apparition de
démon dans la zone d\'ombre du bassin COMPILE
\~CDB\\AREA\\BCS\\COT02211.baf\~ \~override\~ USING
\~CDB\\LANGUAGE\\FRENCH\\COM022.TRA\~ // Porte accès Salle bassins -
Grotte

COMPILE \~CDB\\AREA\\BCS\\COT022G2.baf\~ \~override\~ // gestion état PS
grille2 COM022 - grille 1 Grotte COM020 COMPILE
\~CDB\\AREA\\BCS\\COT022G3.baf\~ \~override\~ USING
\~CDB\\LANGUAGE\\FRENCH\\COM022.TRA\~ // gestion état grille3 COM022 -
grille 2 salle Damiers COM019

// Créature LOAD_TRA \~CDB\\LANGUAGE\\Noms.TRA\~ COPY
\~CDB\\CRE\\COKAEL.cre\~ \~override\~ // KAEL SAY NAME1 \@294 SAY NAME2
\@294

COPY \~CDB\\CRE\\COKAEL2.cre\~ \~override\~ // KAEL fantôme SAY NAME1
\@294 SAY NAME2 \@294

COPY \~CDB\\CRE\\cohelm01.cre\~ \~override\~ // Horreur sanglante SAY
NAME1 \@305 SAY NAME2 \@305

// Creature sans non script: corrigé COPY \~CDB\\CRE\\wrmons01.cre\~
\~override\~ COPY \~CDB\\CRE\\amumber.cre\~ \~override\~ COPY
\~CDB\\CRE\\fgolem.cre\~ \~override\~ COPY \~CDB\\CRE\\werewo.cre\~
\~override\~ COPY \~CDB\\CRE\\djinnisu.cre\~ \~override\~

// Script créature COMPILE \~CDB\\CRE\\BCS\\COKAEL.baf\~ \~override\~
USING \~CDB\\DLG\\COKAEL.tra\~ // dialogue & quête //COMPILE
\~CDB\\CRE\\BCS\\COKAEL2.baf\~ \~override\~ // Combat NON UTILE COMPILE
\~CDB\\CRE\\BCS\\COKAEL3.baf\~ \~override\~ USING
\~CDB\\DLG\\COKAEL.tra\~ // Combat COMPILE
\~CDB\\CRE\\BCS\\COHELM02.baf\~ \~override\~ // Ré-int script invocation
Horreur sanglante

// Dialogue COMPILE \~CDB\\DLG\\COKAEL.d\~ \~override\~ USING
\~CDB\\DLG\\COKAEL.tra\~

// Objet LOAD_TRA \~CDB\\LANGUAGE\\FRENCH\\OBJETS.TRA\~

// larme de Sang de Bhaal // Boss Kael COPY \~CDB\\ITM\\MISCP40.itm\~
\~override\~ // Larme de Kael SAY NAME1 \@5060 //SAY NAME2 \@5060 SAY
UNIDENTIFIED_DESC \@5061 SAY DESC \@5067

// Outil pour fermer la vanne COPY \~CDB\\ITM\\MISCP55.itm\~
\~override\~ SAY NAME2 \@5104 SAY DESC \@5105

// Fléau de Kael COPY \~CDB\\ITM\\BLUP03.ITM\~ \~override\~ SAY NAME2
\@5267 SAY DESC \@5268

// Pavois de Kael COPY \~CDB\\ITM\\SHLP12.ITM\~ \~override\~ SAY NAME2
\@5269 SAY DESC \@5270

// Casque de Kael COPY \~CDB\\ITM\\HELP01.ITM\~ \~override\~ SAY NAME2
\@2571 SAY DESC \@2572

// Coupe de sang de Kael - horreur guerrière COPY
\~CDB\\ITM\\MISCP64.itm\~ \~override\~ SAY NAME1 \@5262 SAY NAME2 \@5264
SAY UNIDENTIFIED_DESC \@5263 SAY DESC \@5265

/\* non utile // Ceinture de Kael COPY \~CDB\\ITM\\MISCP64.itm\~
\~override\\MISCP60.itm\~ SAY NAME1 \@5122 SAY UNIDENTIFIED_DESC \@5123
SAY NAME2 \@5122 \*/

// Animation COPY \~CDB\\VVC\\COCOLR1.VVC\~ \~override\~ // Colonne de
feu rouge

// projectile ADD_PROJECTILE \~CDB\\PRO\\COBREA1.pro\~ \~Souffle acide\~
COPY \~CDB\\PRO\\COBREA1.pro\~ \~override\~

// Sorts LOAD_TRA \~CDB\\LANGUAGE\\FRENCH\\Sorts.TRA\~

COPY \~CDB\\SPELL\\COCUREF1.SPL\~ \~override\~ // Kael soigné par la
fontaine

ADD_SPELL \~CDB\\SPELL\\COBREA1.spl\~ 2 3 \~BREATH_SOURCE_ACID\~ //
Souffle acide SAY NAME1 \@14 WRITE_SHORT 0x09c \~%COBREA1%\~

COPY \~CDB\\SPELL\\COBREA1.spl\~ \~override\~ // Souffle acide LPF
ALTER_SPELL_HEADER INT_VAR projectile = (IDS_OF_SYMBOL (projectl
COBREA1) + 1) END SAY NAME1 \@14 BUT_ONLY

// Invocation créature guerrière COMPILE \~CDB\\ITM\\BCS\\COHELM01.baf\~
\~override\~ // Incovation si le Charname possède l\'objet COPY
\~CDB\\SPELL\\EFFECT\\cohelm01.eff\~ \~override\~ // Invocation Horreur
guerrière COPY \~CDB\\SPELL\\cohelm01.spl\~ \~override\~ // Invocation
Horreur guerrière SAY NAME1 \@23

COPY \~CDB\\SPELL\\EFFECT\\COSHAD1.eff\~ \~override\~ // Appel des
ombres COPY \~CDB\\SPELL\\COSHAD1.spl\~ \~override\~ // Appel des ombres
SAY NAME1 \@24

// NON UTILE /\* COPY \~CDB\\SPELL\\COSACRI.spl\~ \~override\~ //
Sacrifice de Bhaal LPF ALTER_SPELL_HEADER INT_VAR projectile =
(IDS_OF_SYMBOL (projectl COSACRI) + 1) END SAY NAME1 \@13 BUT_ONLY \*/

// Cutscène COMPILE \~CDB\\CUTSCENE\\COCS022A.baf\~ \~override\~ USING
\~CDB\\LANGUAGE\\FRENCH\\COM022.TRA\~ // Création artefact

/\* NON UTILE ancienne idée COMPILE \~CDB\\CUTSCENE\\COCS0221.baf\~
\~override\~ USING \~CDB\\LANGUAGE\\FRENCH\\COM022.TRA\~ // Sacrifice
membre groupe COMPILE \~CDB\\CUTSCENE\\COCS0222.baf\~ \~override\~ USING
\~CDB\\LANGUAGE\\FRENCH\\COM022.TRA\~ // Sacrifice membre groupe COMPILE
\~CDB\\CUTSCENE\\COCS0223.baf\~ \~override\~ USING
\~CDB\\LANGUAGE\\FRENCH\\COM022.TRA\~ // Sacrifice membre groupe COMPILE
\~CDB\\CUTSCENE\\COCS0224.baf\~ \~override\~ USING
\~CDB\\LANGUAGE\\FRENCH\\COM022.TRA\~ // Sacrifice membre groupe COMPILE
\~CDB\\CUTSCENE\\COCS0225.baf\~ \~override\~ USING
\~CDB\\LANGUAGE\\FRENCH\\COM022.TRA\~ // Sacrifice membre groupe \*/

// Epreuves du temple: salle 7 / Enigme / Maladie
\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*
// Carte COPY \~CDB\\area\\COM023.are\~ \~override\~ COPY
\~CDB\\area\\COM023.mos\~ \~override\~ COPY_LARGE
\~CDB\\area\\COM023.tis\~ \~override\~ COPY \~CDB\\area\\COM023.wed\~
\~override\~ COPY \~CDB\\area\\COM023HT.bmp\~ \~override\~ COPY
\~CDB\\area\\COM023LM.bmp\~ \~override\~ COPY
\~CDB\\area\\COM023SR.bmp\~ \~override\~

// Script carte COMPILE \~CDB\\AREA\\BCS\\COM023.baf\~ \~override\~
USING \~CDB\\LANGUAGE\\FRENCH\\COM023.TRA\~ COMPILE
\~CDB\\AREA\\BCS\\COT02301.baf\~ \~override\~ USING
\~CDB\\LANGUAGE\\FRENCH\\COM023.TRA\~ // Champ de force autour du cercle
COMPILE \~CDB\\AREA\\BCS\\COT02302.baf\~ \~override\~ // Déclenchement
dialogue avec le Sphinx COMPILE \~CDB\\AREA\\BCS\\COT02303.baf\~
\~override\~ // Déclenchement Animation Téléport si arrivée du player de
la salle des morts. COMPILE \~CDB\\AREA\\BCS\\COT02304.baf\~
\~override\~ // Déclenchement dialogue Heras

COMPILE \~CDB\\AREA\\BCS\\COT02306.baf\~ \~override\~ // Déclenchement
sort apparition Maladie

COMPILE \~CDB\\AREA\\BCS\\COT023TS.baf\~ \~override\~ // TOP Textscreen
couloir sombre en passant par la salle Enigme //COMPILE
\~CDB\\AREA\\BCS\\COT02308.baf\~ \~override\~ // Lancement Textscreen
couloir sombre en passant par la salle KAel

COMPILE \~CDB\\AREA\\BCS\\CON02301.baf\~ \~override\~ // Coffre de Héras
ouvert COMPILE \~CDB\\AREA\\BCS\\COTR023.baf\~ \~override\~ //
Activation travel et Textscreen

// Créature LOAD_TRA \~CDB\\LANGUAGE\\Noms.TRA\~ COPY
\~CDB\\CRE\\COSPHIN.cre\~ \~override\~ // Sphinx SAY NAME1 \@288 SAY
NAME2 \@288

COPY \~CDB\\CRE\\COSPHI1.cre\~ \~override\~ // Sphinx SAY NAME1 \@290
SAY NAME2 \@290

COPY \~CDB\\CRE\\COSPIDG.cre\~ \~override\~ // Araignée géante (Maladie
transormée) SAY NAME1 \@290 SAY NAME2 \@290

COPY \~CDB\\CRE\\COHERAS.cre\~ \~override\~ // Effigie COHERAS SAY NAME1
\@289 SAY NAME2 \@289

COPY \~CDB\\CRE\\COMALAD.cre\~ \~override\~ // MALADIE SAY NAME1 \@290
SAY NAME2 \@290

COPY \~CDB\\CRE\\CORAT1.cre\~ \~override\~ // Rat de la peste SAY NAME1
\@299

// Script créature COMPILE \~CDB\\CRE\\BCS\\COSPHIN.baf\~ \~override\~
COMPILE \~CDB\\CRE\\BCS\\COHERAS.baf\~ \~override\~ COMPILE
\~CDB\\CRE\\BCS\\COMALAD.baf\~ \~override\~ COMPILE
\~CDB\\CRE\\BCS\\COMALAD2.baf\~ \~override\~ USING
\~CDB\\DLG\\COMALAD.tra\~

// Dialogue COMPILE \~CDB\\DLG\\COSPHIN.d\~ \~override\~ USING
\~CDB\\DLG\\COSPHIN.tra\~ // Sphinx COMPILE \~CDB\\DLG\\COHERAS.d\~
\~override\~ USING \~CDB\\DLG\\COHERAS.tra\~ // Effigie COMPILE
\~CDB\\DLG\\COMALAD.d\~ \~override\~ USING \~CDB\\DLG\\COMALAD.tra\~ //
Maladie

// Objet LOAD_TRA \~CDB\\LANGUAGE\\FRENCH\\OBJETS.TRA\~ // larme de Sang
de Bhaal: Boss Maladie COPY \~CDB\\ITM\\MISCP26.itm\~
\~override\\MISCP41.itm\~ SAY NAME1 \@5060 SAY NAME2 \@5060 SAY
UNIDENTIFIED_DESC \@5061 SAY DESC \@5068

COPY \~CDB\\ITM\\Rat1p.itm\~ \~override\~

// Projectile ADD_PROJECTILE \~CDB\\PRO\\COEPID2.pro\~ \~maillon chaine
epidemie\~ COPY \~CDB\\PRO\\COEPID2.pro\~ \~override\~

ADD_PROJECTILE \~CDB\\PRO\\COEPID1.pro\~ \~Chaine epidemie\~ COPY
\~CDB\\PRO\\COEPID1.pro\~ \~override\~ SET proj = (IDS_OF_SYMBOL
(projectl COEPID2) + 1) WRITE_SHORT 0x21a proj BUT_ONLY

// sorts LOAD_TRA \~CDB\\LANGUAGE\\FRENCH\\Sorts.TRA\~ COPY
\~CDB\\SPELL\\COEPID1.spl\~ \~override\~ // épidémie SAY NAME1 \@8 LPF
ALTER_SPELL_HEADER INT_VAR projectile = (IDS_OF_SYMBOL (projectl
COEPID1) + 1) END BUT_ONLY

COMPILE \~CDB\\SPELL\\BCS\\CORAT1.baf\~ \~override\~ // apparition rats
COMPILE \~CDB\\SPELL\\BCS\\COSPIDG.baf\~ \~override\~ // Apparition
araignée géante COMPILE \~CDB\\SPELL\\BCS\\COMALAV.baf\~ \~override\~ //
Apparition maladie

COPY \~CDB\\SPELL\\CORAT1.spl\~ \~override\~ // Rats de la peste SAY
NAME1 \@9 COPY \~CDB\\SPELL\\cofaibm.spl\~ \~override\~ //
Affaiblissement de masse SAY NAME1 \@10 COPY \~CDB\\SPELL\\COMLD.spl\~
\~override\~ // Drain de vie de masse SAY NAME1 \@11 COPY
\~CDB\\SPELL\\COCECIM.spl\~ \~override\~ // Aveuglement de masse SAY
NAME1 \@12

COPY \~CDB\\SPELL\\COTPEND.spl\~ \~override\~ // Sort Téléport Com021
arrivé COM023 COPY \~CDB\\SPELL\\COSPIDG.spl\~ \~override\~ //
apparition araignée géante COPY \~CDB\\SPELL\\COSPID1.spl\~ \~override\~
// lancement sort Apparition araignée géante COPY
\~CDB\\SPELL\\COMALAV.spl\~ \~override\~ // lancement sort Apparition
Maladie

/\* //COPY \~CDB\\SPELL\\SPCL231.spl\~ \~override\~

//COPY \~CDB\\SPELL\\SPCL228.spl\~ \~override\~ COPY
\~CDB\\SPELL\\COMUSHG.spl\~ \~override\~ // Nuage fumée (apparition
créature)

//COPY \~CDB\\SPELL\\SPCL235.spl\~ \~override\~ COPY
\~CDB\\SPELL\\COCLOU1.spl\~ \~override\~ // Sort nuage poison
//CLOUD_POISON \*/

// Cutscene

// TextScreen: couloir obscur LOAD_TRA
\~CDB\\LANGUAGE\\FRENCH\\TextScreen.TRA\~ COPY \~CDB\\2DA\\COTS008.2DA\~
\~override\~ REPLACE \~99999\~ \@5001 REPLACE \~99998\~ \@6005 REPLACE
\~99997\~ \@6006 REPLACE \~99996\~ \@6007 REPLACE \~99995\~ \@6008
REPLACE \~99994\~ \@6009

// Epreuves du temple: salle 8 / Combat final
\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*
// Carte COPY \~CDB\\area\\COM024.are\~ \~override\~ COPY
\~CDB\\area\\COM024.mos\~ \~override\~ COPY_LARGE
\~CDB\\area\\COM024.tis\~ \~override\~ COPY \~CDB\\area\\COM024.wed\~
\~override\~ COPY \~CDB\\area\\COM024HT.bmp\~ \~override\~ COPY
\~CDB\\area\\COM024LM.bmp\~ \~override\~ COPY
\~CDB\\area\\COM024SR.bmp\~ \~override\~

// Script carte COMPILE \~CDB\\AREA\\BCS\\COM024.baf\~ \~override\~
COMPILE \~CDB\\AREA\\BCS\\CON02401.baf\~ \~override\~ // Stèle et dépose
des larmes de sang

// Créature LOAD_TRA \~CDB\\LANGUAGE\\Noms.TRA\~ COPY
\~CDB\\CRE\\COMEUR.cre\~ \~override\~ // Forme encapuchonnée SAY NAME1
\@291 SAY NAME2 \@291

// Script créature COMPILE \~CDB\\CRE\\BCS\\COMEUR.baf\~ \~override\~
USING \~CDB\\LANGUAGE\\FRENCH\\COM024.TRA\~ // Forme encapuchonnée

// Dialogue COMPILE \~CDB\\DLG\\COMEUR.d\~ \~override\~ USING
\~CDB\\DLG\\COMEUR.tra\~ // Meurtre

// Objet LOAD_TRA \~CDB\\LANGUAGE\\FRENCH\\OBJETS.TRA\~

// Sorts

// Cutscène COMPILE \~CDB\\CUTSCENE\\COCS0241.baf\~ \~override\~ //
Apparition combat final, Boss Tanari COMPILE
\~CDB\\CUTSCENE\\COCS0242.baf\~ \~override\~ // Apparition combat final,
Boss Cambion

// Epreuves du temple: salle 9 / Récompense de Bhaal / Cespenar
\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*
// Carte COPY \~CDB\\area\\COM025.are\~ \~override\~ COPY
\~CDB\\area\\COM025.mos\~ \~override\~ COPY_LARGE
\~CDB\\area\\COM025.tis\~ \~override\~ COPY \~CDB\\area\\COM025.wed\~
\~override\~ COPY \~CDB\\area\\COM025HT.bmp\~ \~override\~ COPY
\~CDB\\area\\COM025LM.bmp\~ \~override\~ COPY
\~CDB\\area\\COM025SR.bmp\~ \~override\~

// Script carte COMPILE \~CDB\\AREA\\BCS\\COM025.baf\~ \~override\~
COMPILE \~CDB\\AREA\\BCS\\COT02501.baf\~ \~override\~ // Téléport à
l\'arrivée COMPILE \~CDB\\AREA\\BCS\\COT02502.baf\~ \~override\~ //
Arrivée de Cespenar COMPILE \~CDB\\AREA\\BCS\\COT02503.baf\~
\~override\~ USING \~CDB\\LANGUAGE\\FRENCH\\COM025.TRA\~ // Info statue
COMPILE \~CDB\\AREA\\BCS\\COT02504.baf\~ \~override\~ // Apparition du
Meurtre

// Créature LOAD_TRA \~CDB\\LANGUAGE\\Noms.TRA\~ COPY
\~CDB\\CRE\\COMEPH.cre\~ \~override\~ // Cespenar SAY NAME1 \@292 SAY
NAME2 \@292

// Script créature COMPILE \~CDB\\CRE\\BCS\\COMEUR2.baf\~ \~override\~
USING \~CDB\\LANGUAGE\\FRENCH\\COM025.TRA\~ // Meurtre COMPILE
\~CDB\\CRE\\BCS\\COMEPH.baf\~ \~override\~ USING
\~CDB\\LANGUAGE\\FRENCH\\COM025.TRA\~ // Cespenar

// Objet LOAD_TRA \~CDB\\LANGUAGE\\FRENCH\\OBJETS.TRA\~

// Dialogue COMPILE \~CDB\\DLG\\COMEPH.d\~ \~override\~ USING
\~CDB\\DLG\\COMEPH.tra\~ // Cespenar COMPILE \~CDB\\DLG\\COMEUR2.d\~
\~override\~ USING \~CDB\\DLG\\COMEUR2.tra\~ // Meurtre

// Sorts LOAD_TRA \~CDB\\LANGUAGE\\FRENCH\\sorts.TRA\~ //COPY
\~CDB\\SPELL\\SPCL236.spl\~ \~override\~ // Récompense de Bhaal //COPY
\~CDB\\SPELL\\SPCL237.spl\~ \~override\~ // Récompense de Bhaal COPY
\~CDB\\SPELL\\CORECOMP.spl\~ \~override\~ // Récompense de Bhaal COPY
\~CDB\\SPELL\\COFOLM.spl\~ \~override\~ // Folie meurtrière SAY NAME1
\@21 SAY DESC \@22

// Cutscène

// TextScreen LOAD_TRA \~CDB\\LANGUAGE\\FRENCH\\TextScreen.TRA\~ // Main
gravée symbôle de Bhaal COPY \~CDB\\2DA\\COTS009.2DA\~ \~override\~
REPLACE \~99999\~ \@5001 REPLACE \~99998\~ \@6010 REPLACE \~99997\~
\@6011 REPLACE \~99996\~ \@6012

// FIN Donjon de Bhaal
\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*
//
\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

//
\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*
STOP fin \*/ //
\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

/\* COMPILE \~CDB\\AREA\\BCS\\COT01719.baf\~ \~override\~ // Sort TP
retour des épreuves

EXTEND_BOTTOM \~BALDUR.bcs\~ \~CDB\\Setup\\DEM_MOD2.baf\~

COPY_EXISTING \~XZARP.dlg\~ \~override\~ DECOMPILE_AND_PATCH BEGIN
REPLACE_TEXTUALLY \~GlobalLT(\"ENDOFBG1\",\"GLOBAL\",2)\~
\~GlobalLT(\"ENDOFBG1\",\"GLOBAL\",2)
Global(\"Protecteur_baldur\",\"GLOBAL\",0)\~ END BUT_ONLY_IF_IT_CHANGES
COMPILE \~CDB\\DLG\\PNJ_heros\\XZARP.d\~ \~override\~ USING
\~CDB\\DLG\\PNJ_heros\\XZARP.tra\~

COMPILE \~CDB\\DLG\\CORUMOR.d\~ \~override\~ USING
\~CDB\\DLG\\CORUMOR.tra\~

COPY \~CDB\\STORES\\COBARNI.sto\~ \~override\~ SAY NAME2 \@2

COMPILE \~CDB\\AREA\\BCS\\COT022B1.baf\~ \~override\~ USING
\~CDB\\LANGUAGE\\FRENCH\\COM022.TRA\~ // Vider le bassin n°1 COMPILE
\~CDB\\CRE\\BCS\\COKAEL.baf\~ \~override\~ USING
\~CDB\\DLG\\COKAEL.tra\~ // dialogue & quête COMPILE
\~CDB\\CRE\\BCS\\COKAEL3.baf\~ \~override\~ USING
\~CDB\\DLG\\COKAEL.tra\~

LOAD_TRA \~CDB\\LANGUAGE\\FRENCH\\SORTS.TRA\~ COPY
\~CDB\\SPELL\\cohelm01.spl\~ \~override\~ // Invocation Horreur
guerrière SAY NAME1 \@23

COPY \~CDB\\SPELL\\EFFECT\\COSHAD1.eff\~ \~override\~ // Appel des
ombres COPY \~CDB\\SPELL\\COSHAD1.spl\~ \~override\~ // Invocation
Horreur guerrière SAY NAME1 \@24

COMPILE \~CDB\\ITM\\BCS\\COHELM01.baf\~ \~override\~ // Incovation si le
Charname possède l\'objet COMPILE \~CDB\\CRE\\BCS\\COHELM02.baf\~
\~override\~ // Ré-int script invocation Horreur sanglante COMPILE
\~CDB\\DLG\\COKAEL.d\~ \~override\~ USING \~CDB\\DLG\\COKAEL.tra\~
LOAD_TRA \~CDB\\LANGUAGE\\FRENCH\\OBJETS.TRA\~ // Coupe de sang de
Kael - horreur guerrière COPY \~CDB\\ITM\\MISCP64.itm\~ \~override\~ SAY
NAME1 \@5262 SAY NAME2 \@5264 SAY UNIDENTIFIED_DESC \@5263 SAY DESC
\@5265

COMPILE \~CDB\\AREA\\BCS\\COT020G1.baf\~ \~override\~ // gestion état
grille1 grotte COM020 - PS salle Bassin COM022

COMPILE \~CDB\\AREA\\BCS\\COT022G2.baf\~ \~override\~ // gestion état PS
grille2 COM022 - grille 1 Grotte COM020 COMPILE
\~CDB\\AREA\\BCS\\COT022G3.baf\~ \~override\~ USING
\~CDB\\LANGUAGE\\FRENCH\\COM022.TRA\~ // gestion état grille3 COM022 -
grille 2 salle Damiers COM019

COMPILE \~CDB\\AREA\\BCS\\COM019.baf\~ \~override\~ USING
\~CDB\\LANGUAGE\\FRENCH\\COM019.TRA\~ COMPILE
\~CDB\\AREA\\BCS\\COM020.baf\~ \~override\~ USING
\~CDB\\LANGUAGE\\FRENCH\\COM020.TRA\~ COMPILE
\~CDB\\AREA\\BCS\\COM022.baf\~ \~override\~ USING
\~CDB\\LANGUAGE\\FRENCH\\COM022.TRA\~ COMPILE
\~CDB\\AREA\\BCS\\COM023.baf\~ \~override\~ USING
\~CDB\\LANGUAGE\\FRENCH\\COM023.TRA\~ COMPILE
\~CDB\\AREA\\BCS\\COT023TS.baf\~ \~override\~ // TOP Textscreen couloir
sombre en passant par la salle Enigme COMPILE
\~CDB\\AREA\\BCS\\COT022TS.baf\~ \~override\~ // TOP Textscreen couloir
sombre en passant par la salle Enigme COMPILE \~CDB\\DLG\\COHERAS.d\~
\~override\~ USING \~CDB\\DLG\\COHERAS.tra\~ // Effigie COMPILE
\~CDB\\DLG\\COMALAD.d\~ \~override\~ USING \~CDB\\DLG\\COMALAD.tra\~
COMPILE \~CDB\\SPELL\\BCS\\COMALAV.baf\~ \~override\~ COMPILE
\~CDB\\SPELL\\BCS\\CORAT1.baf\~ \~override\~ COMPILE
\~CDB\\CRE\\BCS\\COMALAD.baf\~ \~override\~ COMPILE
\~CDB\\CRE\\BCS\\COMALAD2.baf\~ \~override\~ USING
\~CDB\\DLG\\COMALAD.tra\~ COMPILE \~CDB\\AREA\\BCS\\COT02306.baf\~
\~override\~ // COMPILE \~CDB\\AREA\\BCS\\COT02303.baf\~ \~override\~ //
COMPILE \~CDB\\AREA\\BCS\\COT02121.baf\~ \~override\~ // COMPILE
\~CDB\\AREA\\BCS\\COT018DA.baf\~ \~override\~ // COMPILE
\~CDB\\CRE\\BCS\\COBOSDIE.baf\~ \~override\~ // Animation mort du Boss +
larme de sang

COMPILE \~CDB\\DLG\\COTANAR1.d\~ \~override\~ USING
\~CDB\\DLG\\COTANAR1.tra\~ COMPILE \~CDB\\DLG\\COCAMBI1.d\~ \~override\~
USING \~CDB\\DLG\\COCAMBI1.tra\~ COMPILE \~CDB\\DLG\\COBARNI.d\~
\~override\~ USING \~CDB\\DLG\\COBARNI.tra\~ COMPILE
\~CDB\\DLG\\FLAMHC.d\~ \~override\~ USING \~CDB\\DLG\\FLAMHC.tra\~
COMPILE \~CDB\\AREA\\BCS\\COT014TP.baf\~ \~override\~ // Activation TP
COM014 COMPILE \~CDB\\AREA\\BCS\\COT015TP.baf\~ \~override\~ // COMPILE
\~CDB\\AREA\\BCS\\COT01501.baf\~ \~override\~ // COMPILE
\~CDB\\AREA\\BCS\\COT01510.baf\~ \~override\~ // COMPILE
\~CDB\\AREA\\BCS\\AR7216.baf\~ \~override\~ COMPILE
\~CDB\\AREA\\BCS\\COM015.baf\~ \~override\~ USING
\~CDB\\LANGUAGE\\FRENCH\\COM015.TRA\~ COMPILE
\~CDB\\AREA\\BCS\\COM016.baf\~ \~override\~ USING
\~CDB\\LANGUAGE\\FRENCH\\COM016.TRA\~ COMPILE
\~CDB\\AREA\\BCS\\COM017.baf\~ \~override\~ USING
\~CDB\\LANGUAGE\\FRENCH\\COM017.TRA\~ COMPILE
\~CDB\\AREA\\BCS\\COM018.baf\~ \~override\~ USING
\~CDB\\LANGUAGE\\FRENCH\\COM018.TRA\~ COMPILE
\~CDB\\AREA\\BCS\\COM026.baf\~ \~override\~ USING
\~CDB\\LANGUAGE\\FRENCH\\COM026.TRA\~ COMPILE
\~CDB\\CRE\\BCS\\COCANDE.baf\~ \~override\~ // Candelas COMPILE
\~CDB\\DLG\\COCANDE.d\~ \~override\~ USING \~CDB\\DLG\\COCANDE.tra\~ //
Script créature COMPILE \~CDB\\AREA\\BCS\\COT02702.baf\~ \~override\~
USING \~CDB\\LANGUAGE\\FRENCH\\COM027.TRA\~ // bruit de pas COMPILE
\~CDB\\AREA\\BCS\\COT02703.baf\~ \~override\~ USING
\~CDB\\LANGUAGE\\FRENCH\\COM027.TRA\~ // la trappe se referme COMPILE
\~CDB\\AREA\\BCS\\COT017TP.baf\~ \~override\~ COMPILE
\~CDB\\AREA\\BCS\\COT018TP.baf\~ \~override\~ COMPILE
\~CDB\\AREA\\BCS\\COT01805.baf\~ \~override\~

ADD_PROJECTILE \~CDB\\PRO\\COSKUF1.pro\~ \~crâne de Feu\~ COPY
\~CDB\\PRO\\COSKUF1.pro\~ \~override\~

// Objets LOAD_TRA \~CDB\\LANGUAGE\\FRENCH\\OBJETS.TRA\~

// Crâne de feu COPY \~CDB\\ITM\\MISCP57.itm\~ \~override\~ //LPF
ALTER_SPELL_HEADER INT_VAR projectile = (IDS_OF_SYMBOL (projectl
COSKUF1) + 1) END WRITE_SHORT 0x09C \~%COSKUF1%\~ SAY NAME1 \@5114 SAY
NAME2 \@5114 SAY DESC \@5115 //SAY UNIDENTIFIED_DESC BUT_ONLY

COMPILE \~CDB\\CRE\\BCS\\COURGLIT.baf\~ \~override\~ USING
\~CDB\\DLG\\COURGLIT.tra\~ // Combat VS groupe COMPILE
\~CDB\\AREA\\BCS\\COM021.baf\~ \~override\~ USING
\~CDB\\LANGUAGE\\FRENCH\\COM021.TRA\~ // Anneau de Urglite: invocation
élémental d\'air glacé COPY \~CDB\\ITM\\RINGP11.itm\~ \~override\~ SAY
NAME1 \@5098 SAY UNIDENTIFIED_DESC \@5099 SAY NAME2 \@5100 SAY DESC
\@5101

\*/
