' Russian Roulette - Daniele Olmisani, 2011

10 RANDOMIZE TIMER

20 PRINT "RUSSIAN ROULETTE - ANY KEY TO SHOOT, ESC TO QUIT"

30 PRINT: PRINT "RELOADING...": C = 1
40 A$ = INKEY$: IF A$ = "" THEN 40
50 IF A$ = CHR$(27) THEN 90
60 IF INT(RND * 6) < C THEN 80
70 PRINT "CLICK! ";: C = C + 1: GOTO 40
80 PRINT "BANG!": BEEP: GOTO 30

90 PRINT "GOODBYE!!"
