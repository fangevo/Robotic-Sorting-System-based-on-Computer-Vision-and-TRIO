'GOSUB ethercat_init
'ethercat_init:

''----------------------------set pre operational mode----------------------------------
stepset:
step_resule = FALSE
step_resule = ETHERCAT($21, 0, 1, 1)
IF step_resule = FALSE THEN GOTO stepset
'----------------------------safe pre operational mode---------------------------------
stepset1:
step_resule = FALSE
step_resule = ETHERCAT($21, 0, 2, 1)
IF step_resule = FALSE THEN GOTO stepset1

'-------------------------------set operational mode-------------------------------------
stepset3:
step_resule = FALSE
step_resule = ETHERCAT($21, 0, 3, 1)
IF step_resule = FALSE THEN GOTO stepset3

'RETURN

