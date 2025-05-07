DIM pdu_num,strinput AS INTEGER
DIM get_strinput AS STRING(255)
'DIM get_strinput AS INTEGER
CLOSE #20
WA(20)
OPEN #20 AS "dgram:192.168.0.241(8080)" FOR READ_WRITE


PRINT #20,"hello"
WHILE TRUE
    IF KEY #20 THEN
        WA(5)
        CHANNEL_READ(20,get_strinput)
        VR(11)=get_strinput
        VR(11)=VR(11)-48
        WA(5)
        PRINT #20,get_strinput
        WA(5)
        PRINT #5,get_strinput
    ENDIF

    WA(10)
WEND







'WHILE (KEY #1 )
'    GET #1,pdu_num
'WEND
'pdu_num=CHANNEL_READ(20,100,16,140,2)
'VR(20)=pdu_num
'
'WHILE TRUE
'
'WEND
'OPEN#20 AS "dgram:192.168.0.250(1000)" FOR READ_WRITE
'
'CHANNEL_READ(20,strinput)
'
'
'CLOSE#20


