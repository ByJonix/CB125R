program Koerner; 
PROCEDURE drehe_rechts;
    BEGIN
        drehe_links;
        drehe_links;
        drehe_links;
        vor;
    end;
PROCEDURE aufnehmen;
    BEGIN
        WHILE Platz_belegt DO nimm_auf;
    end;
PROCEDURE START;
    BEGIN
        REPEAT vor UNTIL Platz_belegt OR NOT vorne_frei;
        IF Platz_belegt THEN aufnehmen;
    END;

PROCEDURE check;
    BEGIN
        IF vorne_frei THEN vor ELSE drehe_links;
    END;

PROCEDURE bewegen;
    BEGIN
        IF rechts_frei THEN drehe_rechts ELSE check;
    END;

PROCEDURE abgeben;
    BEGIN
        bewegen;
        IF NOT platz_belegt THEN gib_ab;
    END;
PROCEDURE abgeben2;
    BEGIN
        drehe_links;
        vor;
        gib_ab;
        
    END;
    
PROCEDURE RAUM;
    BEGIN
        While NOT rechts_frei DO abgeben;
        REPEAT abgeben2 UNTIL rechts_frei AND vorne_frei;
        drehe_links;
        vor;
        drehe_links;
    END;
PROCEDURE mid;
    BEGIN
        WHILE hat_vorrat AND rechts_frei OR vorne_frei OR NOT nordwaerts DO bewegen;
        
        RAUM;
        
    END;
PROCEDURE Anfang;
    BEGIN
        REPEAT START UNTIL NOT vorne_frei;
    END;
PROCEDURE Hauptteil;
    BEGIN
        REPEAT bewegen UNTIL NOT vorne_frei;
        REPEAT mid UNTIL NOT hat_vorrat;
    END;
PROCEDURE Schluss;
    BEGIN
        While vorne_frei OR NOT suedwaerts DO bewegen;
    END;


    
BEGIN
    Anfang;
    Hauptteil;    
    Schluss;
    bewegen;
    Schluss;
    drehe_links;
    
    
    
END.
