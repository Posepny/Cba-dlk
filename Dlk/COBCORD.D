BEGIN ~COBCORD~ 

IF ~Global("Rope_launched1","GLOBAL",1)~ THEN BEGIN 1 

  SAY @1 /* ~A rope descends from the upper level. Would you like to climb the rope?~ */ 

  IF ~Checkstatgt(Myself,8,DEX) 
      Checkstatgt(Myself,8,STR)~ THEN REPLY @2 /* ~Yes~ */ 
    DO ~ActionOverride("COCORD",DestroySelf()) 
        ActionOverride(Myself,LeaveAreaLUA("COM019","",[570.770],10))~ 
    EXIT 
  
  If
       ​
       ​
    ​
        ​    
        ​
        ​
    ​ 
  
  ​REPLY @3 /* ~No~ */ 
    DO ~ActionOverride("COCORD",DestroySelf())~ 
    EXIT 
END 

IF ~Global("Corde_lancee2","GLOBAL",1)~ THEN BEGIN 2 

  SAY @1 /* ~A rope descends from the upper level. Would you like to climb the rope?~ */ 

  IF ~Checkstatgt(Myself,8,DEX) 
      Checkstatgt(Myself,8,STR)~ THEN REPLY @2 /* ~Yes~ */ 
    DO ~ActionOverride("COCORD",DestroySelf()) 
        ActionOverride(Myself,LeaveAreaLUA("COM019","",[790.540],10))~ 

    EXIT 
  
  If
       ​
       ​
    ​
        ​    
        ​
        ​
    ​ 
  
  ​REPLY @3 /* ~No~ */ 
    DO ~ActionOverride("COCORD",DestroySelf())~ 
    EXIT 
END 


IF ~Global("Corde_lancee3","GLOBAL",1)~ THEN BEGIN 3 

  SAY @1 /* ~A rope descends from the upper level. Would you like to climb the rope?~ */ 

  IF ~Checkstatgt(Myself,8,DEX) 
      Checkstatgt(Myself,8,STR)~ THEN REPLY @2 /* ~Yes~ */ 
    DO ~ActionOverride("COCORD",DestroySelf()) 
        ActionOverride(Myself,LeaveAreaLUA("COM019","",[680.690],10))~ 
    EXIT 
  
  IF ~OR(2) 
       Checkstatlt(Myself,9,DEX) 
       Checkstatlt(Myself,9,STR)~ THEN REPLY @2 /* ~Yes~ */ 
    DO ~ReallyForceSpellRES("COCORD",MySelf) 
        ActionOverride(Myself,PlayDead(50))     
        DisplayStringHead(Myself,@4) 
        ActionOverride("COCORD",DestroySelf())~ 
    EXIT 
  
  IF ~~ THEN REPLY @3 /* ~No~ */ 
    DO ~ActionOverride("COCORD",DestroySelf())~ 
END



  
  



  
  
