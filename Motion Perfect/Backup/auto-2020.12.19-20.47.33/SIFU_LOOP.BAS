BASE(0)
'SPEED=10
'MOVEABS(-10)
'WAIT IDLE
'FS_LIMIT=-5
'RS_LIMIT=-285
'WAIT IDLE
WHILE IN(31)=0

'    WA(5000)
    MOVEABS(-280)
'    IF IN(4)=1 THEN
'        CANCEL(0)
'        CANCEL(1)
'        MOVEABS(-100)
'        WAIT IDLE
'        WA(10000)
'    ENDIF
    WAIT IDLE
'    WA(5000)
    MOVEABS(-10)
'        IF IN(4)=1 THEN
'            CANCEL(0)
'            CANCEL(1)
'            MOVEABS(-100)
'            WAIT IDLE
'            WA(10000)
'        ENDIF
    WAIT IDLE
WEND

