BASE(0)
SPEED=12
MOVEABS(-280)
MOVEABS(-10)
WAIT IDLE
FS_LIMIT=-5
RS_LIMIT=-285
SPEED=10
RUN "SIFU_GUANGDIAN",14
RUN "SIFU_LOOP",12'伺服电机控制模组往复运动

RUN "BUJIN_LOOP",11'步进电机控制模组往复运动
