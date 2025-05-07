INCLUDE "VARIABLES"
VR(erweima)=0
VR(run1)=0
VR(zhuye)=0
VR(tiaosu)=0
VR(cangku)=0
'VR(fanhui)=0
'VR(fanhui2)=0
'VR(fanhui3)=0
'VR(fanhui4)=0
'VR(fanhui6)=0

VR(erweima1)=0
VR(erweima2)=0
VR(erweima3)=0
VR(erweima4)=0
VR(erweima5)=0
VR(erweima6)=0

'VR(dyear)=DATE(2)
'VR(dmonth)=DATE(1)
'VR(ddate)=DATE(0)
'VR(dhour)=INT(TIME/3600)
'VR(dminute)=INT((TIME MOD(3600))/60)
'VR(dsecond)=TIME MOD(60)

WHILE TRUE
    IF VR(erweima)=1 THEN
        HMI_SET_PAGE("CHOSE")
        VR(erweima)=0
    ENDIF
    IF VR(run1)=1 THEN
        HMI_SET_PAGE("RUN")
        VR(run1)=0
    ENDIF
    IF VR(zhuye)=1 THEN
        HMI_SET_PAGE("ZHUYE")
        VR(zhuye)=0
    ENDIF
    IF VR(tiaosu)=1 THEN
        HMI_SET_PAGE("TIAOSU")
        VR(tiaosu)=0
    ENDIF
    IF VR(cangku)=1 THEN
        HMI_SET_PAGE("CANGKU")
        VR(cangku)=0
    ENDIF
    IF VR(erweima1)=1 THEN
        HMI_SET_PAGE("PLAN1")
        VR(erweima1)=0
    ENDIF
    IF VR(erweima1)=2 THEN
        HMI_SET_PAGE("PLAN2")
        VR(erweima1)=0
    ENDIF
    IF VR(erweima1)=3 THEN
        HMI_SET_PAGE("PLAN3")
        VR(erweima1)=0
    ENDIF
    IF VR(erweima1)=4 THEN
        HMI_SET_PAGE("PLAN4")
        VR(erweima1)=0
    ENDIF
    IF VR(erweima1)=5 THEN
        HMI_SET_PAGE("PLAN5")
        VR(erweima1)=0
    ENDIF
    IF VR(erweima1)=6 THEN
        HMI_SET_PAGE("PLAN6")
        VR(erweima1)=0
    ENDIF
    IF VR(erweima1)=7 THEN
        RUN "STOP"
        WAIT IDLE
        RUN "RUN"
        VR(erweima1)=0
    ENDIF
    IF VR(erweima1)=8 THEN
        RUN "STOP"
        VR(erweima1)=0
    ENDIF
'    IF VR(fanhui)=1 THEN
'        HMI_SET_PAGE("CHOSE")
'        WAIT IDLE
'        VR(fanhui)=0
'    ENDIF

WEND

