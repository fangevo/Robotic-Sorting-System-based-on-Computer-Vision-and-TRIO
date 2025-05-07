INCLUDE "VARIABLES"


'==================================================
ON BASICERROR GOTO error_routine
'==================================================

comm_loop:

VR(checkin)=0
VR(name)=0
VR(password)=0
VR(flag1)=0
VR(m_type)=0

VR(units1)=100
VR(speed1)=0.5

VR(dyear)=DATE(2)
VR(dmonth)=DATE(1)
VR(ddate)=DATE(0)
VR(dhour)=INT(TIME/3600)
VR(dminute)=INT((TIME MOD(3600))/60)
VR(dsecond)=TIME MOD(60)

WHILE TRUE


    IF VR(checkin)=1 THEN

        IF VR(name)=TABLE(50) AND VR(password)=TABLE(51) THEN


'            RUN "CHUSHIHUA", 5

            HMI_SET_PAGE ("PAR_SHOW")
            VR(m_type)=1
            VR(name)=0
            VR(password)=0
        ELSEIF VR(name)=TABLE(52) AND VR(password)=TABLE(53) THEN
            HMI_SET_PAGE ("PAR_SET")
            VR(name)=0
            VR(password)=0
        ELSE
            VR(flag1)=1

            VR(checkin)=0
            WA (1000)
            VR(flag1)=0
        ENDIF




    ENDIF





WEND




error_routine:
IF RUN_ERROR=31 OR RUN_ERROR=159 THEN

    STOP
ELSE
    GOTO comm_loop
ENDIF

STOP
