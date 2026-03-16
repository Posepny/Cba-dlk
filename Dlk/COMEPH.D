BEGIN ~COMEPH~

IF ~Global("CESPENAR_init","COM025",1)~ THEN BEGIN 1

  SAY   @1=@2=@3 /*  ~Tiens tiens, Je savais bien qu'il y avait de la lumière par ici. (la créature se tourne vers vous et vous détaille)~ ~ Ooooh yeahhh! Le champion du temple est révélé. Le grand maître va être content!~ ~ Bon je m'emballe mais c'est pas tout ça mais j'ai du travail.~  */ 
  IF ~~ THEN 
        DO ~SetGlobal("CESPENAR_init","COM025",2)~
        EXIT

END