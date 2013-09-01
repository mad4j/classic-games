_TITLE "MAGIC 8-BALL"

SCREEN _NEWIMAGE(320, 240, 32)
COLOR _RGB(0, 0, 0), _RGB(255, 255, 255)

_FONT _LOADFONT("resources/octin.ttf", 24)

IconHandle = _LOADIMAGE("resources/magic8ball.png")
_ICON IconHandle

_PRINTMODE _KEEPBACKGROUND

RESTORE
RANDOMIZE TIMER

DIM M$(20)
FOR I = 0 TO 19: READ M$(I): NEXT

DO
    CLS
    SOUND 250, 1

    IX = _WIDTH - _WIDTH(IconHandle)
    IY = _HEIGHT - _HEIGHT(IconHandle)
    _PUTIMAGE (IX, IY), IconHandle

    I = INT(20 * RND)
    TX = (_WIDTH - _PRINTWIDTH(M$(I))) / 2
    TY = (_HEIGHT - _FONTHEIGHT) / 4
    _PRINTSTRING (TX, TY), M$(I)

    _DISPLAY
    SLEEP 20
LOOP

DATA "It is certain","It is decidedly so"
DATA "Without a doubt","Yes - definitely"
DATA "You may rely on it","As I see it, yes"
DATA "Most likely","Outlook good"
DATA "Yes","Signs point to yes"
DATA "Reply hazy, try again","Ask again later"
DATA "Better not tell you now","Cannot predict now"
DATA "Concentrate and ask again","Don 't count on it"
DATA "My reply is no","My sources say no"
DATA "Outlook NOT so good","Very doubtful"
