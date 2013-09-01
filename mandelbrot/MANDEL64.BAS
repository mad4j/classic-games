_TITLE "ESPLORAZIONI NEL MONDO DEI FRATTALI"
SCREEN _NEWIMAGE(900, 600, 32)

WINDOW (-2, 1)-(1, -1)
FOR x0 = -2 TO 1 STEP .0033
    FOR y0 = -1 TO 1 STEP .0033

        x = 0
        y = 0

        iteration = 0
        maxIteration = 1000

        WHILE (x ^ 2 + y ^ 2 <= 4 AND iteration < maxIteration)
            t = x * x - y * y + x0
            y = 2 * x * y + y0

            x = t

            iteration = iteration + 1
        WEND

        c = 3 * LOG(iteration) / LOG(maxIteration - 1.0)
        col = _RGB(255 * c, 255 * (c - 1), 255 * (c - 2))

        PSET (x0, y0), col
    NEXT
NEXT


