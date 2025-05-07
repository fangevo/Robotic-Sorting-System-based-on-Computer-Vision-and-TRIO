'靠近伺服电机侧调零
BASE(0)
SERVO=ON

WDOG=ON

REV_IN=-1 'temporarily turn off the limit switch function
FWD_IN=-1
DATUM_IN=16 'sets input 5 for registration

SPEED=6 'set speed, for quick location of limit switch

CREEP=0.4 'set creep speed for slow move to find edge of switch

DATUM(3) 'find “edge” at creep speed and stop

WAIT IDLE

DATUM_IN=-1
FWD_IN=16
REV_IN=17 'restore input 5 as a limit switch again
abc=ENCODER
DEFPOS((ENCODER-abc)/UNITS)

WA(100000)

''远离伺服电机侧调零
'BASE(0)
'SERVO=ON
'
'WDOG=ON
'
'REV_IN=-1 'temporarily turn off the limit switch function
'FWD_IN=-1
'DATUM_IN=2 'sets input 5 for registration
'
'SPEED=6 'set speed, for quick location of limit switch
'
'CREEP=0.4 'set creep speed for slow move to find edge of switch
'
'DATUM(4) 'find “edge” at creep speed and stop
'
'WAIT IDLE
'
'DATUM_IN=-1
'FWD_IN=3
'REV_IN=2 'restore input 5 as a limit switch again
'abc=ENCODER
'DEFPOS((ENCODER-abc)/UNITS)

