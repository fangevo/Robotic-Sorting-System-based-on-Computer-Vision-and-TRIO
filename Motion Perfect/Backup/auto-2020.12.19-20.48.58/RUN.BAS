

''==================================================
'ON BASICERROR GOTO error_routine
''==================================================
'comm_loop:
WDOG=1 '驱动启用
OP(0,1)
OP(1,0)
RUN "SET",17'进行轴参数设置
WAIT IDLE
RUN "SIFU_RUANXIANWEI",15
'RUN "SIFU_DAT",16'伺服调零

'WAIT IDLE
'WA(5000)
'WAIT IDLE
RUN "BUJIN_DAT",16'步进调零
'RUN "BUJIN_RUANXIANWEI",15
'WAIT IDLE
'WA(5000)



'RUN "GUANGDIAN",19

'
'error_routine:
'IF RUN_ERROR=31 OR RUN_ERROR=159 THEN
'
'    STOP
'ELSE
'    GOTO comm_loop
'ENDIF
'
'STOP
