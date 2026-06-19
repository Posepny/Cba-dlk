BEGIN ~COMEUR~

IF ~Global("CS_COM024","COM024",2)~ THEN BEGIN 1

  SAY   @1=@2=@3 /*  ~Vous en reconnaitrez sans doute certains. Le maître devrait aprécier le spectacle.~ ~Vous pouvez déposer vos larmes de sang dans la stèle mais vous ne ferez que prolonger votre souffrance.~ ~Bien, l'heure de goûter à votre meutre a sonné! Adieu Sang de Bhaal...~  */ 
  IF ~~ THEN 
     DO ~SetGlobal("CS_COM024","COM024",3)~
     EXIT

END