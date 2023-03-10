program Labyrinth;

PROCEDURE rechts;

BEGIN

    drehe_links;
    drehe_links;
    drehe_links;
    vor;

END;

PROCEDURE check1;
    BEGIN
        IF vorne_frei THEN vor ELSE drehe_links; 
    END;
     
PROCEDURE check2;
    BEGIN
        IF rechts_frei THEN rechts ELSE check1;     
    END;


BEGIN

    REPEAT check2 until platz_belegt;

END.
   