REPLACE_TRIGGER_TEXT SHARTJ
~HappinessLT(Myself,0)[^!]*GlobalLT("ENDOFBG1","GLOBAL",2)~
~HappinessLT(Myself,0)~

REPLACE_TRIGGER_TEXT SHARTP
~HappinessLT(Myself,0)[^!]*GlobalLT("ENDOFBG1","GLOBAL",2)[^!]*Global("IWasKickedOut","LOCALS",0)~
~HappinessLT(Myself,0)
Global("IWasKickedOut","LOCALS",0)~

REPLACE_TRIGGER_TEXT SHARTP
~Global("IWasKickedOut","LOCALS",0)[^!]*GlobalLT("ENDOFBG1","GLOBAL",2)~
~Global("IWasKickedOut","LOCALS",0)~

REPLACE_TRIGGER_TEXT SHARTP
~Global("IWasKickedOut","LOCALS",1)[^!]*GlobalLT("ENDOFBG1","GLOBAL",2)~
~Global("IWasKickedOut","LOCALS",1)~