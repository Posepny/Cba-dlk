BEGIN ~COBCORD~

IF ~Global("Corde_lancee1","GLOBAL",1)~ THEN BEGIN 1

  SAY @1 /* ~Une corde descend du niveau supérieur. Désirez vous grimper à la corde?~ */

  IF ~Checkstatgt(Myself,8,DEX)
      Checkstatgt(Myself,8,STR)~ THEN REPLY @2 /* ~Oui~ */
    DO ~ActionOverride("COCORD",DestroySelf())
        ActionOverride(Myself,LeaveAreaLUA("COM019","",[570.770],10))~
    EXIT
  
  IF ~OR(2)
       Checkstatlt(Myself,9,DEX)
       Checkstatlt(Myself,9,STR)~ THEN REPLY @2 /* ~Oui~ */
    DO ~ReallyForceSpellRES("COCORD",MySelf)
        ActionOverride(Myself,PlayDead(50))    
        DisplayStringHead(Myself,@4)
        ActionOverride("COCORD",DestroySelf())~
    EXIT
  
  IF ~~ THEN REPLY @3 /* ~Non~ */
    DO ~ActionOverride("COCORD",DestroySelf())~
    EXIT
END

IF ~Global("Corde_lancee2","GLOBAL",1)~ THEN BEGIN 2

  SAY @1 /* ~Une corde descend du niveau supérieur. Désirez vous grimper à la corde?~ */

  IF ~Checkstatgt(Myself,8,DEX)
      Checkstatgt(Myself,8,STR)~ THEN REPLY @2 /* ~Oui~ */
    DO ~ActionOverride("COCORD",DestroySelf())
        ActionOverride(Myself,LeaveAreaLUA("COM019","",[790.540],10))~

    EXIT
  
  IF ~OR(2)
       Checkstatlt(Myself,9,DEX)
       Checkstatlt(Myself,9,STR)~ THEN REPLY @2 /* ~Oui~ */
    DO ~ReallyForceSpellRES("COCORD",MySelf)
        ActionOverride(Myself,PlayDead(50))    
        DisplayStringHead(Myself,@4)
        ActionOverride("COCORD",DestroySelf())~
    EXIT
  
  IF ~~ THEN REPLY @3 /* ~Non~ */
    DO ~ActionOverride("COCORD",DestroySelf())~
    EXIT
END


IF ~Global("Corde_lancee3","GLOBAL",1)~ THEN BEGIN 3

  SAY @1 /* ~Une corde descend du niveau supérieur. Désirez vous grimper à la corde?~ */

  IF ~Checkstatgt(Myself,8,DEX)
      Checkstatgt(Myself,8,STR)~ THEN REPLY @2 /* ~Oui~ */
    DO ~ActionOverride("COCORD",DestroySelf())
        ActionOverride(Myself,LeaveAreaLUA("COM019","",[680.690],10))~
    EXIT
  
  IF ~OR(2)
       Checkstatlt(Myself,9,DEX)
       Checkstatlt(Myself,9,STR)~ THEN REPLY @2 /* ~Oui~ */
    DO ~ReallyForceSpellRES("COCORD",MySelf)
        ActionOverride(Myself,PlayDead(50))    
        DisplayStringHead(Myself,@4)
        ActionOverride("COCORD",DestroySelf())~
    EXIT
  
  IF ~~ THEN REPLY @3 /* ~Non~ */
    DO ~ActionOverride("COCORD",DestroySelf())~
    EXIT
END

IF ~Global("Corde_lancee4","GLOBAL",1)~ THEN BEGIN 4

  SAY @1 /* ~Une corde descend du niveau supérieur. Désirez vous grimper à la corde?~ */

  IF ~Checkstatgt(Myself,8,DEX)
      Checkstatgt(Myself,8,STR)~ THEN REPLY @2 /* ~Oui~ */
    DO ~ActionOverride("COCORD",DestroySelf())
        ActionOverride(Myself,LeaveAreaLUA("COM019","",[1198.799],10))~
    EXIT
  
  IF ~OR(2)
       Checkstatlt(Myself,9,DEX)
       Checkstatlt(Myself,9,STR)~ THEN REPLY @2 /* ~Oui~ */
    DO ~ReallyForceSpellRES("COCORD",MySelf)
        ActionOverride(Myself,PlayDead(50))    
        DisplayStringHead(Myself,@4)
        ActionOverride("COCORD",DestroySelf())~
    EXIT
  
  IF ~~ THEN REPLY @3 /* ~Non~ */
    DO ~ActionOverride("COCORD",DestroySelf())~
    EXIT
END

IF ~Global("Corde_lancee5","GLOBAL",1)~ THEN BEGIN 5

  SAY @1 /* ~Une corde descend du niveau supérieur. Désirez vous grimper à la corde?~ */

  IF ~Checkstatgt(Myself,8,DEX)
      Checkstatgt(Myself,8,STR)~ THEN REPLY @2 /* ~Oui~ */
    DO ~ActionOverride("COCORD",DestroySelf()
        ActionOverride(Myself,LeaveAreaLUA("COM019","",[932.1082],10))~
    EXIT
  
  IF ~OR(2)
       Checkstatlt(Myself,9,DEX)
       Checkstatlt(Myself,9,STR)~ THEN REPLY @2 /* ~Oui~ */
    DO ~ReallyForceSpellRES("COCORD",MySelf)
        ActionOverride(Myself,PlayDead(50))    
        DisplayStringHead(Myself,@4)
        ActionOverride("COCORD",DestroySelf())~
    EXIT
  
  IF ~~ THEN REPLY @3 /* ~Non~ */
    DO ~ActionOverride("COCORD",DestroySelf())~
    EXIT
END
