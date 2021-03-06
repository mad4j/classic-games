' NotOne - Daniele Olmisani, 2011
' inspired from Creative Computing, vol. 1

10 _TITLE "NotOne - Daniele Olmisani, 2011"

20 RANDOMIZE TIMER

30 DIM R(10), C(10), L(12)

40 FOR I = 2 TO 12: READ L(I): NEXT I
50 DATA 18,18,9,9,6,6,6,9,9,18,18

60 FOR I = 1 TO 10: PRINT: PRINT "NOTONE - ROUND "; I

    100 PRINT: PRINT "PLAYER TURN"
    105 PRINT "--------------------"
    110 X = 0: T = 0
    120 DO: X = X + 1: R = ROLL + ROLL
        130 LOCATE , 1: PRINT "YOUR ROLL"; X; ":"; R; SPACE$(10)

        140 IF X = 1 THEN F = R: GOTO 160
        150 IF (F = R) THEN PRINT "YOU GET A ZERO": T = 0: GOTO 190
        160 T = T + R

        165 PRINT "ROLL AGAIN (Y/N)? ";: LOCATE , , 1
        170 DO: B$ = UCASE$(INKEY$): LOOP WHILE B$ = ""
        175 IF B$ = CHR$(27) THEN END

    180 LOOP WHILE B$ <> "N"
    190 R(I) = T: C1 = C1 + T


    200 PRINT: PRINT "COMPUTER TURN"
    205 PRINT "--------------------"
    210 X = 0: T = 0
    220 DO: X = X + 1: R = ROLL + ROLL
        230 PRINT "COMPUTER'S ROLL"; X; ":"; R
        240 IF X = 1 THEN F = R: GOTO 260
        250 IF F = R THEN PRINT "COMPUTER GETS A ZERO": T = 0: GOTO 280
        260 T = T + R
    270 LOOP WHILE X < L(F)
    280 C(I) = T: C2 = C2 + T

    290 PRINT: PRINT "SCORE - YOU: "; C1, "COMPUTER: "; C2
300 NEXT I

310 PRINT: PRINT "SCORING SUMMARY"
315 PRINT: PRINT "ROUND", "YOU", "COMPUTER"
320 FOR I = 1 TO 10: PRINT I, R(I), C(I): NEXT I
330 PRINT: PRINT "TOTAL", C1, C2
500 END

1000 FUNCTION ROLL%: ROLL% = INT(6 * RND) + 1: END FUNCTION
