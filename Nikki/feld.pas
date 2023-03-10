program Feld;

PROCEDURE rechts;
BEGIN
        drehe_links;
        drehe_links;
        drehe_links;
        vor;
END;

PROCEDURE aufnehmen;
BEGIN
        WHILE Platz_belegt DO nimm_auf;
END;
    
PROCEDURE imagine;
BEGIN
      gib_ab;    
END;


PROCEDURE Emotional;
BEGIN
     IF not vorne_frei then lauf else imagine;
END;

PROCEDURE lauf;
BEGIN
      IF vorne_frei then vor else drehe_links; 
END;

     
PROCEDURE help;
BEGIN
        IF not platz_belegt then lauf else aufnehmen;    
END;


BEGIN
       Repeat help until NOT vorne_frei;
       Repeat emotional until platz_belegt;
             
END.
   