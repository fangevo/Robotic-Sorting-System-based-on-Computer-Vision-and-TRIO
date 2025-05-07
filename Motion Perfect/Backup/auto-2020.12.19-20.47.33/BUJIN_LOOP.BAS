BASE(1)
'SPEED=10
'MOVEABS(10)
'WAIT IDLE
'FS_LIMIT=285
'RS_LIMIT=5
WHILE TRUE
    MOVEABS(280)
'    IF IN(15)=1 THEN
'        CANCEL(0)
'        MOVEABS(100)
'        WAIT IDLE
'        WA(10000)
'    ENDIF
    WAIT IDLE
    MOVEABS(10)
'    IF IN(15)=1 THEN
'        CANCEL(0)
'        MOVEABS(100)
'        WAIT IDLE
'        WA(10000)
'    ENDIF
    WAIT IDLE
'    IF IN(4)=1 THEN
'        MOVEABS(280)
'        WAIT IDLE
'        MOVEABS(10)
'        WAIT IDLE
'    ELSE
'        CANCEL(0)
'        MOVEABS(100)
'        WAIT IDLE
'        WA(10000)
'    ENDIF
WEND
