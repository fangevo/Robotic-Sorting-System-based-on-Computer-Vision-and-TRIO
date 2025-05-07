
'步进靠近电机侧调零
BASE(1)
SERVO=ON

WDOG=ON

REV_IN=-1 'temporarily turn off the limit switch function
FWD_IN=-1
DATUM_IN=1 'sets input 1 for registration

SPEED=10 'set speed, for quick location of limit switch

CREEP=1 'set creep speed for slow move to find edge of switch

DATUM(4) 'find “edge” at creep speed and stop

WAIT IDLE

DATUM_IN=-1
FWD_IN=0
REV_IN=1 'restore input 1 as a limit switch again
DEFPOS(0)
WAIT IDLE
BASE(1)
SPEED=10
MOVEABS(10)
WAIT IDLE
FS_LIMIT=285
RS_LIMIT=5
'RUN "BUJIN_LOOP",18'步进电机控制模组往复运动
RUN "BUJIN_GUANGDIAN",13



''步进远离电机侧调零
'BASE(1)
'SERVO=ON
'
'WDOG=ON
'
'REV_IN=-1 'temporarily turn off the limit switch function
'FWD_IN=-1
'DATUM_IN=0 'sets input 5 for registration
'
'SPEED=6 'set speed, for quick location of limit switch
'
'CREEP=0.4 'set creep speed for slow move to find edge of switch
'
'DATUM(3) 'find “edge” at creep speed and stop
'
'WAIT IDLE
'
'DATUM_IN=-1
'FWD_IN=0
'REV_IN=1 'restore input 5 as a limit switch again
'DEFPOS(0)
