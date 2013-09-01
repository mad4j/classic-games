_TITLE "SPIRAL"
SCREEN _NEWIMAGE(320, 240, 32)

K = 8
DO
    _LIMIT 30

    CLS
    WINDOW (-K * (_WIDTH / 2), -K * (_HEIGHT / 2))-(K * (_WIDTH / 2), K * (_HEIGHT / 2))

    j = j + .5

    PSET (0, 0)
    FOR i = 0 TO 100 STEP .1
        LINE -(i * i * COS(j + i), i * i * SIN(j + i))
    NEXT
    PSET (0, 0)
    FOR i = 0 TO 100 STEP .1
        LINE -(i * i * COS(j + i + 10), i * i * SIN(j + i + 10))
    NEXT
    PSET (0, 0)
    FOR i = 0 TO 100 STEP .1
        PAINT (i * i * COS(j + i + 5), i * i * SIN(j + i + 5))
    NEXT

    _DISPLAY

LOOP

