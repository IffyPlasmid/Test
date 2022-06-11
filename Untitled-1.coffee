; Copyright (c) Gamry Instruments, Inc.

library PWR800LIB = "PWR800.dll"

; ------------------ PWR Signal Mode Globals -------------------
global PWR_MODE_CURRENT_DISCHARGE = 0
global PWR_MODE_RESISTANCE = 1
global PWR_MODE_POWER = 2
global PWR_MODE_VOLTAGE = 3
global PWR_MODE_CURRENT_CHARGE = 4
global PWR_MODE_VOLTAGE_PSTATMODE = 5

; -------------- PWR Signal Acquisition Defaults ---------------
global PWR800_DEFAULT_PERTURBATION_RATE = 0.01
global PWR800_DEFAULT_PERTURBATION_WIDTH = 0.003333
global PWR800_DEFAULT_TIMER_RESOLUTION = 0.0016666666
global PWR800_DEFAULT_MAXIMUM_STEP = 0.05
global PWR800_DEFAULT_MINUMUM_DIFFERENCE = 0.15
global PWR800_DEFAULT_CV_CP_GAIN = 0.05
global PWR800_DEFAULT_CR_GAIN = 1.0
global PWR800_DEFAULT_TI = 5.0

; ----------------- PWR Stop At Delay Globals ------------------
global PWR800_DEFAULT_DTEMP_DELAY = 30.0

; -------------------- PWR SetPlot Globals ---------------------
global PWR_LINVI = 0
global PWR_LOGVI = 1
global PWR_VTIT  = 2
global PWR_VTTT  = 3
global PWR_LINVR = 4
global PWR_LINVP  = 5
global PWR_LINVT = 6
global PWR_ATTT  = 7
global PWR_LINRV = 8
global PWR_LINPV = 9
global PWR_LINIV = 10


; -------------------- PWR SetAxis Globals ---------------------
global PWR_T   		= 0
global PWR_Vf  		= 1
global PWR_Vu  		= 2
global PWR_Im  		= 3
global PWR_Pwr  	= 4
global PWR_R	  	= 5
global PWR_Sig 		= 6
global PWR_Ach 		= 7
global PWR_Temp		= 8
global PWR_IERange 	= 9
global PWR_Over 	= 10

; -------------------- PWR title string Globals ---------------------
global CCD_TITLE = "PWR Cyclic Charge Discharge"
global CHARGE_TITLE = "PWR Charge"
global DISCHARGE_TITLE = "PWR Discharge"
global POLARIZATIONCURVE_TITLE = "PWR Polarization"
global PWRCV_TITLE = "PWR Cyclic Voltammetry"
global PWREISGALV_TITLE = "PWR Galvanostatic EIS"
global PWREISGALVSTREAM_TITLE = "PWR Galvanostatic stream EIS"
global PWREISGALVTHD_TITLE = "PWR Galvanostatic EIS THD"
global PWRGALVANOSTATIC_TITLE = "PWR Galvanostatic"
global PWRHYBRIDEIS_TITLE = "PWR Hybrid EIS"
global PWRLEAKAGECURRENT_TITLE = "PWR Leakage Current"
global PWRPOTENTIOSTATIC_TITLE = "PWR Potentiostatic"
global PWRREADVOLTAGE_TITLE = "PWR Read Voltage"
global PWRSELFDISCHARGE_TITLE = "PWR Self-Discharge"
global PWREISGALVMON_TITLE = "PWR Galvanostatic Single Frequency EIS"
global PWREISHYBMON_TITLE = "PWR Hybrid Single Frequency EIS"

global SIGNAL_CHANGING_THRESHOLD = 0.05

class PWR
	cfunction New         callin PWR800LIB @ "ExpPwrNew"
	ifunction Run         callin PWR800LIB @ "ExpPwrRun"
	ifunction RunControl  callin PWR800LIB @ "ExpPwrRunControl"
	ifunction Printl      callin PWR800LIB @ "ExpPwrPrintl"
	ifunction SetParams   callin PWR800LIB @ "ExpPwrSetParams"

	ifunction SetStopVMin callin PWR800LIB @ "ExpPwrSetStopVMin"
	ifunction SetStopAVMin callin PWR800LIB @ "ExpPwrSetStopAVMin"
	ifunction SetStopDVMin callin PWR800LIB @ "ExpPwrSetStopDVMin"
	ifunction SetStopADVMin callin PWR800LIB @ "ExpPwrSetStopADVMin"

	ifunction SetStopVMax callin PWR800LIB @ "ExpPwrSetStopVMax"
	ifunction SetStopAVMax callin PWR800LIB @ "ExpPwrSetStopAVMax"
	ifunction SetStopDVMax callin PWR800LIB @ "ExpPwrSetStopDVMax"
	ifunction SetStopADVMax callin PWR800LIB @ "ExpPwrSetStopADVMax"

	ifunction SetStopIMin callin PWR800LIB @ "ExpPwrSetStopIMin"
	ifunction SetStopAIMin callin PWR800LIB @ "ExpPwrSetStopAIMin"
	ifunction SetStopDIMin callin PWR800LIB @ "ExpPwrSetStopDIMin"
	ifunction SetStopADIMin callin PWR800LIB @ "ExpPwrSetStopADIMin"

	ifunction SetStopIMax callin PWR800LIB @ "ExpPwrSetStopIMax"
	ifunction SetStopAIMax callin PWR800LIB @ "ExpPwrSetStopAIMax"
	ifunction SetStopDIMax callin PWR800LIB @ "ExpPwrSetStopDIMax"
	ifunction SetStopADIMax callin PWR800LIB @ "ExpPwrSetStopADIMax"

	ifunction SetStopAMin callin PWR800LIB @ "ExpPwrSetStopAMin"
	ifunction SetStopAAMin callin PWR800LIB @ "ExpPwrSetStopAAMin"
	ifunction SetStopDAMin callin PWR800LIB @ "ExpPwrSetStopDAMin"
	ifunction SetStopADAMin callin PWR800LIB @ "ExpPwrSetStopADAMin"

	ifunction SetStopAMax callin PWR800LIB @ "ExpPwrSetStopAMax"
	ifunction SetStopAAMax callin PWR800LIB @ "ExpPwrSetStopAAMax"
	ifunction SetStopDAMax callin PWR800LIB @ "ExpPwrSetStopDAMax"
	ifunction SetStopADAMax callin PWR800LIB @ "ExpPwrSetStopADAMax"

	ifunction SetStopPMin callin PWR800LIB @ "ExpPwrSetStopPMin"
	ifunction SetStopAPMin callin PWR800LIB @ "ExpPwrSetStopAPMin"
	ifunction SetStopDPMin callin PWR800LIB @ "ExpPwrSetStopDPMin"
	ifunction SetStopADPMin callin PWR800LIB @ "ExpPwrSetStopADPMin"

	ifunction SetStopPMax callin PWR800LIB @ "ExpPwrSetStopPMax"
	ifunction SetStopAPMax callin PWR800LIB @ "ExpPwrSetStopAPMax"
	ifunction SetStopDPMax callin PWR800LIB @ "ExpPwrSetStopDPMax"
	ifunction SetStopADPMax callin PWR800LIB @ "ExpPwrSetStopADPMax"

	ifunction SetStopQMin callin PWR800LIB @ "ExpPwrSetStopQMin"
	ifunction SetStopAQMin callin PWR800LIB @ "ExpPwrSetStopAQMin"
	ifunction SetStopQMax callin PWR800LIB @ "ExpPwrSetStopQMax"
	ifunction SetStopAQMax callin PWR800LIB @ "ExpPwrSetStopAQMax"

	ifunction SetStopEMin callin PWR800LIB @ "ExpPwrSetStopEMin"
	ifunction SetStopAEMin callin PWR800LIB @ "ExpPwrSetStopAEMin"
	ifunction SetStopEMax callin PWR800LIB @ "ExpPwrSetStopEMax"
	ifunction SetStopAEMax callin PWR800LIB @ "ExpPwrSetStopAEMax"

	ifunction SetStopTempMax callin PWR800LIB @ "ExpPwrSetStopTempMax"
	ifunction SetStopDTempMax callin PWR800LIB @ "ExpPwrSetStopDTempMax"
	ifunction SetStopADTempMax callin PWR800LIB @ "ExpPwrSetStopADTempMax"

	ifunction SetStopAtDelayVMin callin PWR800LIB @ "ExpPwrSetStopAtDelayVMin"
	ifunction SetStopAtDelayAVMin callin PWR800LIB @ "ExpPwrSetStopAtDelayAVMin"
	ifunction SetStopAtDelayDVMin callin PWR800LIB @ "ExpPwrSetStopAtDelayDVMin"
	ifunction SetStopAtDelayADVMin callin PWR800LIB @ "ExpPwrSetStopAtDelayADVMin"

	ifunction SetStopAtDelayVMax callin PWR800LIB @ "ExpPwrSetStopAtDelayVMax"
	ifunction SetStopAtDelayAVMax callin PWR800LIB @ "ExpPwrSetStopAtDelayAVMax"
	ifunction SetStopAtDelayADVMax callin PWR800LIB @ "ExpPwrSetStopAtDelayADVMax"
	ifunction SetStopAtDelayDVMax callin PWR800LIB @ "ExpPwrSetStopAtDelayDVMax"

	ifunction SetStopAtDelayIMin callin PWR800LIB @ "ExpPwrSetStopAtDelayIMin"
	ifunction SetStopAtDelayAIMin callin PWR800LIB @ "ExpPwrSetStopAtDelayAIMin"
	ifunction SetStopAtDelayDIMin callin PWR800LIB @ "ExpPwrSetStopAtDelayDIMin"
	ifunction SetStopAtDelayADIMin callin PWR800LIB @ "ExpPwrSetStopAtDelayADIMin"

	ifunction SetStopAtDelayIMax callin PWR800LIB @ "ExpPwrSetStopAtDelayIMax"
	ifunction SetStopAtDelayAIMax callin PWR800LIB @ "ExpPwrSetStopAtDelayAIMax"
	ifunction SetStopAtDelayADIMax callin PWR800LIB @ "ExpPwrSetStopAtDelayADIMax"
	ifunction SetStopAtDelayDIMax callin PWR800LIB @ "ExpPwrSetStopAtDelayDIMax"

	ifunction SetStopAtDelayAMin callin PWR800LIB @ "ExpPwrSetStopAtDelayAMin"
	ifunction SetStopAtDelayAAMin callin PWR800LIB @ "ExpPwrSetStopAtDelayAAMin"
	ifunction SetStopAtDelayDAMin callin PWR800LIB @ "ExpPwrSetStopAtDelayDAMin"
	ifunction SetStopAtDelayADAMin callin PWR800LIB @ "ExpPwrSetStopAtDelayADAMin"

	ifunction SetStopAtDelayAMax callin PWR800LIB @ "ExpPwrSetStopAtDelayAMax"
	ifunction SetStopAtDelayAAMax callin PWR800LIB @ "ExpPwrSetStopAtDelayAAMax"
	ifunction SetStopAtDelayADAMax callin PWR800LIB @ "ExpPwrSetStopAtDelayADAMax"
	ifunction SetStopAtDelayDAMax callin PWR800LIB @ "ExpPwrSetStopAtDelayDAMax"

	ifunction SetStopAtDelayPMin callin PWR800LIB @ "ExpPwrSetStopAtDelayPMin"
	ifunction SetStopAtDelayAPMin callin PWR800LIB @ "ExpPwrSetStopAtDelayAPMin"
	ifunction SetStopAtDelayDPMin callin PWR800LIB @ "ExpPwrSetStopAtDelayDPMin"
	ifunction SetStopAtDelayADPMin callin PWR800LIB @ "ExpPwrSetStopAtDelayADPMin"

	ifunction SetStopAtDelayPMax callin PWR800LIB @ "ExpPwrSetStopAtDelayPMax"
	ifunction SetStopAtDelayAPMax callin PWR800LIB @ "ExpPwrSetStopAtDelayAPMax"
	ifunction SetStopAtDelayADPMax callin PWR800LIB @ "ExpPwrSetStopAtDelayADPMax"
	ifunction SetStopAtDelayDPMax callin PWR800LIB @ "ExpPwrSetStopAtDelayDPMax"

	ifunction SetStopAtDelayQMin callin PWR800LIB @ "ExpPwrSetStopAtDelayQMin"
	ifunction SetStopAtDelayAQMin callin PWR800LIB @ "ExpPwrSetStopAtDelayAQMin"
	ifunction SetStopAtDelayQMax callin PWR800LIB @ "ExpPwrSetStopAtDelayQMax"
	ifunction SetStopAtDelayAQMax callin PWR800LIB @ "ExpPwrSetStopAtDelayAQMax"

	ifunction SetStopAtDelayEMin callin PWR800LIB @ "ExpPwrSetStopAtDelayEMin"
	ifunction SetStopAtDelayAEMin callin PWR800LIB @ "ExpPwrSetStopAtDelayAEMin"
	ifunction SetStopAtDelayEMax callin PWR800LIB @ "ExpPwrSetStopAtDelayEMax"
	ifunction SetStopAtDelayAEMax callin PWR800LIB @ "ExpPwrSetStopAtDelayAEMax"

	ifunction SetStopAtDelayTempMax callin PWR800LIB @ "ExpPwrSetStopAtDelayTempMax"
	ifunction SetStopAtDelayDTempMax callin PWR800LIB @ "ExpPwrSetStopAtDelayDTempMax"
	ifunction SetStopAtDelayADTempMax callin PWR800LIB @ "ExpPwrSetStopAtDelayADTempMax"

	ifunction SetThreshVMin callin PWR800LIB @ "ExpPwrSetThreshVMin"
	ifunction SetThreshVMax callin PWR800LIB @ "ExpPwrSetThreshVMax"
	ifunction SetThreshIMin callin PWR800LIB @ "ExpPwrSetThreshIMin"
	ifunction SetThreshIMax callin PWR800LIB @ "ExpPwrSetThreshIMax"
	ifunction SetThreshTMin callin PWR800LIB @ "ExpPwrSetThreshTMin"
	ifunction SetThreshTMax callin PWR800LIB @ "ExpPwrSetThreshTMax"
	ifunction SetThreshAMin callin PWR800LIB @ "ExpPwrSetThreshAMin"
	ifunction SetThreshAMax callin PWR800LIB @ "ExpPwrSetThreshAMax"

	ifunction SetThreshPMin callin PWR800LIB @ "ExpPwrSetThreshPMin"
	ifunction SetThreshPMax callin PWR800LIB @ "ExpPwrSetThreshPMax"
	ifunction SetThreshEMin callin PWR800LIB @ "ExpPwrSetThreshEMin"
	ifunction SetThreshEMax callin PWR800LIB @ "ExpPwrSetThreshEMax"
	ifunction SetThreshTempMin callin PWR800LIB @ "ExpPwrSetThreshTempMin"
	ifunction SetThreshTempMax callin PWR800LIB @ "ExpPwrSetThreshTempMax"

	ifunction SprintPoint callin PWR800LIB @ "ExpPwrSprintPoint"
	ifunction OverloadCount callin PWR800LIB @ "ExpPwrOverloadCount"
	ifunction OverloadSummaryString callin PWR800LIB @ "ExpPwrOverloadSummaryString"
	ifunction Sprint      callin "ExpCurveSprint"
	ifunction DataCol     callin "ExpCurveDataCol"
	ifunction Activate    callin "ExpCurveActivate"
	ifunction SetPlotView callin "ExpCurveSetPlotView"
	ifunction SetAxis     callin "ExpCurveSetAxis"
	ifunction SetTitle    callin "ExpCurveSetTitle"
	ifunction Title       callin "ExpCurveTitle"
	ifunction SetPlot (View, dV, dI, dT)
		if (View eq PWR_LINVI)
			self.SetPlotView (VIEW_SINGLE)
			self.SetAxis (X_AXIS, PWR_Vf, LIN_AXIS, dV, "E", "V")
			self.SetAxis (Y_AXIS, PWR_Im, LIN_AXIS, dI, "I", "A")
		else	if (View eq PWR_LOGVI)
			self.SetPlotView (VIEW_SINGLE)
			self.SetAxis (X_AXIS, PWR_Vf, LOG_AXIS, dV, "E", "V")
			self.SetAxis (Y_AXIS, PWR_Im, LIN_AXIS, dI, "I", "A")
		else	if (View eq PWR_VTIT)
			self.SetPlotView (VIEW_DOUBLE)
			self.SetAxis (X_AXIS, PWR_T, LIN_AXIS, dT, "T", "s")
			self.SetAxis (Y_AXIS, PWR_Vf, LIN_AXIS, dV, "E", "V")
			self.SetAxis (Z_AXIS, PWR_Im, LIN_AXIS, dI, "I", "A")
		else	if (View eq PWR_LINVP)
			self.SetPlotView (VIEW_DOUBLE)
			self.SetAxis (X_AXIS, PWR_T, LIN_AXIS, dT, "T", "s")
			self.SetAxis (Y_AXIS, PWR_Pwr, LIN_AXIS, dV, "P", "W")
			self.SetAxis (Z_AXIS, PWR_Im, LIN_AXIS, dI, "I", "A")
		else
			Error ("Unknown plot style.")
	ifunction Count       callin "ExpCurveCount" 
	ifunction DataValue   callin "ExpCurveDataValue"
	ivar Table            ; The storage object
	ifunction Table ()
		Table
		return


; -------------------- PWR_AE SetPlot Globals ---------------------
global PWR_AE_LINVI = 0
global PWR_AE_LOGVI = 1
global PWR_AE_VTIT  = 2

; -------------------- PWR_AE SetAxis Globals ---------------------
global PWR_AE_T   	= 0
global PWR_AE_Vf  	= 1
global PWR_AE_Vu  	= 2
global PWR_AE_Im  	= 3
global PWR_AE_Pwr  	= 4
global PWR_AE_R  	= 5
global PWR_AE_Sig 	= 6
global PWR_AE_Ach 	= 7
global PWR_AE_Temp 	= 8
global PWR_AE_IERange = 9
global PWR_AE_Over 	= 10
global PWR_AE_Vf1  	= 11
global PWR_AE_Vf2  	= 12
global PWR_AE_Vf3  	= 13
global PWR_AE_Vf4  	= 14
global PWR_AE_Vf5  	= 15
global PWR_AE_Vf6  	= 16
global PWR_AE_Vf7  	= 17
global PWR_AE_Vf8  	= 18
global PWR_AE_Pwr1	= 19
global PWR_AE_Pwr2	= 20
global PWR_AE_Pwr3	= 21
global PWR_AE_Pwr4	= 22
global PWR_AE_Pwr5	= 23
global PWR_AE_Pwr6	= 24
global PWR_AE_Pwr7	= 25
global PWR_AE_Pwr8	= 26
global PWR_AE_R1	= 27
global PWR_AE_R2	= 28
global PWR_AE_R3	= 29
global PWR_AE_R4	= 30
global PWR_AE_R5	= 31
global PWR_AE_R6	= 32
global PWR_AE_R7	= 33
global PWR_AE_R8	= 34

class PWR_AE
	cfunction New         callin PWR800LIB @ "ExpPwrAeNew"
	ifunction MCurveRegister callin "ExpMCurveRegister"
	ifunction Run         callin PWR800LIB @ "ExpPwrAeRun"
	ifunction RunControl  callin PWR800LIB @ "ExpPwrAeRunControl"
	ifunction Printl      callin PWR800LIB @ "ExpPwrAePrintl"

	ifunction SetStopVMin callin PWR800LIB @ "ExpPwrAeSetStopVMin"
	ifunction SetStopAVMin callin PWR800LIB @ "ExpPwrAeSetStopAVMin"
	ifunction SetStopDVMin callin PWR800LIB @ "ExpPwrAeSetStopDVMin"
	ifunction SetStopADVMin callin PWR800LIB @ "ExpPwrAeSetStopADVMin"

	ifunction SetStopVMax callin PWR800LIB @ "ExpPwrAeSetStopVMax"
	ifunction SetStopAVMax callin PWR800LIB @ "ExpPwrAeSetStopAVMax"
	ifunction SetStopDVMax callin PWR800LIB @ "ExpPwrAeSetStopDVMax"
	ifunction SetStopADVMax callin PWR800LIB @ "ExpPwrAeSetStopADVMax"

	ifunction SetStopIMin callin PWR800LIB @ "ExpPwrAeSetStopIMin"
	ifunction SetStopAIMin callin PWR800LIB @ "ExpPwrAeSetStopAIMin"
	ifunction SetStopDIMin callin PWR800LIB @ "ExpPwrAeSetStopDIMin"
	ifunction SetStopADIMin callin PWR800LIB @ "ExpPwrAeSetStopADIMin"

	ifunction SetStopIMax callin PWR800LIB @ "ExpPwrAeSetStopIMax"
	ifunction SetStopAIMax callin PWR800LIB @ "ExpPwrAeSetStopAIMax"
	ifunction SetStopDIMax callin PWR800LIB @ "ExpPwrAeSetStopDIMax"
	ifunction SetStopADIMax callin PWR800LIB @ "ExpPwrAeSetStopADIMax"

	ifunction SetStopAMin callin PWR800LIB @ "ExpPwrAeSetStopAMin"
	ifunction SetStopAAMin callin PWR800LIB @ "ExpPwrAeSetStopAAMin"
	ifunction SetStopDAMin callin PWR800LIB @ "ExpPwrAeSetStopDAMin"
	ifunction SetStopADAMin callin PWR800LIB @ "ExpPwrAeSetStopADAMin"

	ifunction SetStopAMax callin PWR800LIB @ "ExpPwrAeSetStopAMax"
	ifunction SetStopAAMax callin PWR800LIB @ "ExpPwrAeSetStopAAMax"
	ifunction SetStopDAMax callin PWR800LIB @ "ExpPwrAeSetStopDAMax"
	ifunction SetStopADAMax callin PWR800LIB @ "ExpPwrAeSetStopADAMax"

	ifunction SetStopPMin callin PWR800LIB @ "ExpPwrAeSetStopPMin"
	ifunction SetStopAPMin callin PWR800LIB @ "ExpPwrAeSetStopAPMin"
	ifunction SetStopDPMin callin PWR800LIB @ "ExpPwrAeSetStopDPMin"
	ifunction SetStopADPMin callin PWR800LIB @ "ExpPwrAeSetStopADPMin"

	ifunction SetStopPMax callin PWR800LIB @ "ExpPwrAeSetStopPMax"
	ifunction SetStopAPMax callin PWR800LIB @ "ExpPwrAeSetStopAPMax"
	ifunction SetStopDPMax callin PWR800LIB @ "ExpPwrAeSetStopDPMax"
	ifunction SetStopADPMax callin PWR800LIB @ "ExpPwrAeSetStopADPMax"

	ifunction SetStopQMin callin PWR800LIB @ "ExpPwrAeSetStopQMin"
	ifunction SetStopAQMin callin PWR800LIB @ "ExpPwrAeSetStopAQMin"
	ifunction SetStopQMax callin PWR800LIB @ "ExpPwrAeSetStopQMax"
	ifunction SetStopAQMax callin PWR800LIB @ "ExpPwrAeSetStopAQMax"

	ifunction SetStopEMin callin PWR800LIB @ "ExpPwrAeSetStopEMin"
	ifunction SetStopAEMin callin PWR800LIB @ "ExpPwrAeSetStopAEMin"
	ifunction SetStopEMax callin PWR800LIB @ "ExpPwrAeSetStopEMax"
	ifunction SetStopAEMax callin PWR800LIB @ "ExpPwrAeSetStopAEMax"

	ifunction SetStopTempMax callin PWR800LIB @ "ExpPwrAeSetStopTempMax"
	ifunction SetStopDTempMax callin PWR800LIB @ "ExpPwrAeSetStopDTempMax"
	ifunction SetStopADTempMax callin PWR800LIB @ "ExpPwrAeSetStopADTempMax"

	ifunction SetStopAtDelayVMin callin PWR800LIB @ "ExpPwrAeSetStopAtDelayVMin"
	ifunction SetStopAtDelayAVMin callin PWR800LIB @ "ExpPwrAeSetStopAtDelayAVMin"
	ifunction SetStopAtDelayDVMin callin PWR800LIB @ "ExpPwrAeSetStopAtDelayDVMin"
	ifunction SetStopAtDelayADVMin callin PWR800LIB @ "ExpPwrAeSetStopAtDelayADVMin"

	ifunction SetStopAtDelayVMax callin PWR800LIB @ "ExpPwrAeSetStopAtDelayVMax"
	ifunction SetStopAtDelayAVMax callin PWR800LIB @ "ExpPwrAeSetStopAtDelayAVMax"
	ifunction SetStopAtDelayADVMax callin PWR800LIB @ "ExpPwrAeSetStopAtDelayADVMax"
	ifunction SetStopAtDelayDVMax callin PWR800LIB @ "ExpPwrAeSetStopAtDelayDVMax"

	ifunction SetStopAtDelayIMin callin PWR800LIB @ "ExpPwrAeSetStopAtDelayIMin"
	ifunction SetStopAtDelayAIMin callin PWR800LIB @ "ExpPwrAeSetStopAtDelayAIMin"
	ifunction SetStopAtDelayDIMin callin PWR800LIB @ "ExpPwrAeSetStopAtDelayDIMin"
	ifunction SetStopAtDelayADIMin callin PWR800LIB @ "ExpPwrAeSetStopAtDelayADIMin"

	ifunction SetStopAtDelayIMax callin PWR800LIB @ "ExpPwrAeSetStopAtDelayIMax"
	ifunction SetStopAtDelayAIMax callin PWR800LIB @ "ExpPwrAeSetStopAtDelayAIMax"
	ifunction SetStopAtDelayADIMax callin PWR800LIB @ "ExpPwrAeSetStopAtDelayADIMax"
	ifunction SetStopAtDelayDIMax callin PWR800LIB @ "ExpPwrAeSetStopAtDelayDIMax"

	ifunction SetStopAtDelayAMin callin PWR800LIB @ "ExpPwrAeSetStopAtDelayAMin"
	ifunction SetStopAtDelayAAMin callin PWR800LIB @ "ExpPwrAeSetStopAtDelayAAMin"
	ifunction SetStopAtDelayDAMin callin PWR800LIB @ "ExpPwrAeSetStopAtDelayDAMin"
	ifunction SetStopAtDelayADAMin callin PWR800LIB @ "ExpPwrAeSetStopAtDelayADAMin"

	ifunction SetStopAtDelayAMax callin PWR800LIB @ "ExpPwrAeSetStopAtDelayAMax"
	ifunction SetStopAtDelayAAMax callin PWR800LIB @ "ExpPwrAeSetStopAtDelayAAMax"
	ifunction SetStopAtDelayADAMax callin PWR800LIB @ "ExpPwrAeSetStopAtDelayADAMax"
	ifunction SetStopAtDelayDAMax callin PWR800LIB @ "ExpPwrAeSetStopAtDelayDAMax"

	ifunction SetStopAtDelayPMin callin PWR800LIB @ "ExpPwrAeSetStopAtDelayPMin"
	ifunction SetStopAtDelayAPMin callin PWR800LIB @ "ExpPwrAeSetStopAtDelayAPMin"
	ifunction SetStopAtDelayDPMin callin PWR800LIB @ "ExpPwrAeSetStopAtDelayDPMin"
	ifunction SetStopAtDelayADPMin callin PWR800LIB @ "ExpPwrAeSetStopAtDelayADPMin"

	ifunction SetStopAtDelayPMax callin PWR800LIB @ "ExpPwrAeSetStopAtDelayPMax"
	ifunction SetStopAtDelayAPMax callin PWR800LIB @ "ExpPwrAeSetStopAtDelayAPMax"
	ifunction SetStopAtDelayADPMax callin PWR800LIB @ "ExpPwrAeSetStopAtDelayADPMax"
	ifunction SetStopAtDelayDPMax callin PWR800LIB @ "ExpPwrAeSetStopAtDelayDPMax"

	ifunction SetStopAtDelayQMin callin PWR800LIB @ "ExpPwrAeSetStopAtDelayQMin"
	ifunction SetStopAtDelayAQMin callin PWR800LIB @ "ExpPwrAeSetStopAtDelayAQMin"
	ifunction SetStopAtDelayQMax callin PWR800LIB @ "ExpPwrAeSetStopAtDelayQMax"
	ifunction SetStopAtDelayAQMax callin PWR800LIB @ "ExpPwrAeSetStopAtDelayAQMax"

	ifunction SetStopAtDelayEMin callin PWR800LIB @ "ExpPwrAeSetStopAtDelayEMin"
	ifunction SetStopAtDelayAEMin callin PWR800LIB @ "ExpPwrAeSetStopAtDelayAEMin"
	ifunction SetStopAtDelayEMax callin PWR800LIB @ "ExpPwrAeSetStopAtDelayEMax"
	ifunction SetStopAtDelayAEMax callin PWR800LIB @ "ExpPwrAeSetStopAtDelayAEMax"

	ifunction SetStopAtDelayTempMax callin PWR800LIB @ "ExpPwrAeSetStopAtDelayTempMax"
	ifunction SetStopAtDelayDTempMax callin PWR800LIB @ "ExpPwrAeSetStopAtDelayDTempMax"
	ifunction SetStopAtDelayADTempMax callin PWR800LIB @ "ExpPwrAeSetStopAtDelayADTempMax"

	ifunction StopAtAE   callin PWR800LIB @ "ExpPwrAeStopAtAE"
	ifunction StopAtDelayAE callin PWR800LIB @ "ExpPwrAeStopAtDelayAE"
	ifunction ThreshAE   callin PWR800LIB @ "ExpPwrAeThreshAE"

	ifunction SetThreshVMin callin PWR800LIB @ "ExpPwrAeSetThreshVMin"
	ifunction SetThreshVMax callin PWR800LIB @ "ExpPwrAeSetThreshVMax"
	ifunction SetThreshIMin callin PWR800LIB @ "ExpPwrAeSetThreshIMin"
	ifunction SetThreshIMax callin PWR800LIB @ "ExpPwrAeSetThreshIMax"
	ifunction SetThreshTMin callin PWR800LIB @ "ExpPwrAeSetThreshTMin"
	ifunction SetThreshTMax callin PWR800LIB @ "ExpPwrAeSetThreshTMax"
	ifunction SetThreshAMin callin PWR800LIB @ "ExpPwrAeSetThreshAMin"
	ifunction SetThreshAMax callin PWR800LIB @ "ExpPwrAeSetThreshAMax"

	ifunction SetThreshPMin callin PWR800LIB @ "ExpPwrAeSetThreshPMin"
	ifunction SetThreshPMax callin PWR800LIB @ "ExpPwrAeSetThreshPMax"
	ifunction SetThreshEMin callin PWR800LIB @ "ExpPwrAeSetThreshEMin"
	ifunction SetThreshEMax callin PWR800LIB @ "ExpPwrAeSetThreshEMax"
	ifunction SetThreshTempMin callin PWR800LIB @ "ExpPwrAeSetThreshTempMin"
	ifunction SetThreshTempMax callin PWR800LIB @ "ExpPwrAeSetThreshTempMax"

	ifunction SprintPoint callin PWR800LIB @ "ExpPwrAeSprintPoint"
	ifunction OverloadCount callin PWR800LIB @ "ExpPwrAeOverloadCount"
	ifunction OverloadSummaryString callin PWR800LIB @ "ExpPwrAeOverloadSummaryString"
	ifunction Sprint      callin "ExpCurveSprint"
	ifunction DataCol     callin "ExpCurveDataCol"
	ifunction Activate    callin "ExpCurveActivate"
	ifunction SetPlotView callin "ExpCurveSetPlotView"
	ifunction SetAxis     callin "ExpCurveSetAxis"
	ifunction SetTitle    callin "ExpCurveSetTitle"
	ifunction Title       callin "ExpCurveTitle"
	ifunction SetPlot (View, dV, dI, dT)
		if (View eq PWR_AE_LINVI)
			self.SetPlotView (VIEW_SINGLE)
			self.SetAxis (X_AXIS, PWR_AE_Vf, LIN_AXIS, dV, "E", "V")
			self.SetAxis (Y_AXIS, PWR_AE_Im, LIN_AXIS, dI, "I", "A")
		else	if (View eq PWR_AE_LOGVI)
			self.SetPlotView (VIEW_SINGLE)
			self.SetAxis (X_AXIS, PWR_AE_Vf, LOG_AXIS, dV, "E", "V")
			self.SetAxis (Y_AXIS, PWR_AE_Im, LIN_AXIS, dI, "I", "A")
		else	if (View eq PWR_AE_VTIT)
			self.SetPlotView (VIEW_DOUBLE)
			self.SetAxis (X_AXIS, PWR_AE_T, LIN_AXIS, dT, "T", "s")
			self.SetAxis (Y_AXIS, PWR_AE_Vf, LIN_AXIS, dV, "E", "V")
			self.SetAxis (Z_AXIS, PWR_AE_Im, LIN_AXIS, dI, "I", "A")
		else
			Error ("Unknown plot style.")
	ifunction Count       callin "ExpCurveCount" 
	ifunction DataValue   callin "ExpCurveDataValue"
	ivar Table            ; The storage object
	ifunction Table ()
		Table
		return


	ifunction Energy (channel)
		energy = 0.0
		lasttime = 0.0
		i = 0
		while (i lt self.Count ())
			now = self.DataValue (i, PWR_T)
			energy = energy + ((now - lasttime) * self.DataValue (i, PWR_AE_Pwr1 + channel))
			lasttime = now
			i = i + 1

		energy
		return

	ifunction Vstart (channel)
		vstart = self.DataValue (0, PWR_AE_Vf1 + channel)
		vstart
		return

	ifunction Vend (channel)
		vend = self.DataValue (self.Count() - 1, PWR_AE_Vf1 + channel)
		vend
		return

	ifunction PrintCapacityPoint ()
		i = 0
		while (i lt AE_CHANNELS)
			Print ("\t",self.Vstart (i))
			i = i + 1
		i = 0
		while (i lt AE_CHANNELS)
			Print ("\t",self.Vend(i))
			i = i + 1
		i = 0
		while (i lt AE_CHANNELS)
			Print("\t",self.Energy (i))
			i = i + 1
		Printl ("")

	ifunction PrintCapacityHeaderColumns ()
		i = 1
		while (i le AE_CHANNELS)
			Print ("\tCh", i, " Vstart")
			i = i + 1
		i = 1
		while (i le AE_CHANNELS)
			Print ("\tCh", i, " Vend")
			i = i + 1
		i = 1
		while (i le AE_CHANNELS)
			Print ("\tCh", i, " Energy")
			i = i + 1
		Printl ("")

	ifunction PrintSBHCCapacityHeaderColumns ()
		i = 1
		while (i le AE_CHANNELS)
			Print ("\t", SeqAESBHCSelector.SBHC_HeaderColumn()[i], " Vstart")
			i = i + 1
		i = 1
		while (i le AE_CHANNELS)
			Print ("\t", SeqAESBHCSelector.SBHC_HeaderColumn()[i], " Vend")
			i = i + 1
		i = 1
		while (i le AE_CHANNELS)
			Print ("\t", SeqAESBHCSelector.SBHC_HeaderColumn()[i], " Energy")
			i = i + 1
		Printl ("")

	ifunction PrintCapacityHeaderUnits ()
		i = 1
		while (i le AE_CHANNELS)
			Print ("\tV")
			i = i + 1
		i = 1
		while (i le AE_CHANNELS)
			Print ("\tV")
			i = i + 1
		i = 1
		while (i le AE_CHANNELS)
			Print ("\tJ")
			i = i + 1
		Printl ("")

		

function PWROCDelay (pstat, timeout, slope, output, aeselector) 
	if (aeselector.Enabled () eq TRUE)
		AeOCDelay (pstat, output, aeselector.SetupObject (), timeout, slope)
	else
		OCDelay (pstat, timeout, slope)
		
	

class SMARTPWR
	ivar _Tag
	ivar _Pstat
	ivar _AESmartSelector
	ivar _Curve
	ivar _Capacity
	ivar _Energy
	ivar _myAe
	ivar _UseSBHC
	ivar _Electrometer

	cfunction New (tag, pstat, aesmartselector, sbhcsmartselector)
		self = ObjectNew (SMARTPWR)
		self.Init (tag, pstat, aesmartselector, sbhcsmartselector)
		self
		return

	ifunction Init (tag, pstat, aesmartselector, sbhcsmartselector)
		_AESmartSelector = aesmartselector
		_Pstat = pstat
		_Tag = tag
		_Capacity = NIL
		_Energy = NIL
		_myAe = NIL
		_Electrometer = _Pstat.Electrometer()

		;Treat SBHC as an optional parameter
		_UseSBHC = FALSE
		if (StrCmp(ClassName(sbhcsmartselector), "AESBHCSMARTSELECTOR") eq 0)
			_UseSBHC = sbhcsmartselector.Value()
		if (_UseSBHC)
			; SBHC AE Curve
			_Curve = VectorNew (AE_CHANNELS + 1)
			_Curve[0] = PWR_AE.New (_Tag, _Pstat, _UseSBHC)
				
			i = 1
			while (i le AE_CHANNELS)
				if (_AESmartSelector.IsOn (i))		
					_Curve[i] = SCURVE.New (Sprint (_Tag, " ", SeqAESBHCSelector.SBHC_Suffix()[i]), _Curve[0])
				i = i + 1

			_AESmartSelector.ActivateLimits(_Curve[0])

		else if (_AESmartSelector.Enabled () eq TRUE)
			; AE Curve
			_Curve = VectorNew (AE_CHANNELS + 1)
			_Curve[0] = PWR_AE.New (_Tag, _Pstat)
				
			_myAe = AE.New ("AE", _Pstat)
			_myAe.Initialize ()

			i = 1
			while (i le AE_CHANNELS)
				if (_AESmartSelector.IsOn (i))		
					_Curve[i] = SCURVE.New (Sprint (_Tag, " AE", i), _Curve[0])
				i = i + 1

			_AESmartSelector.ActivateLimits(_Curve[0])

		else
			; Non-AE Curve
			_Curve = PWR.New (_Tag, _Pstat)

	ifunction Object ()
		if (_AESmartSelector.Enabled () eq TRUE)
			curve = _Curve [0]
		else
			curve = _Curve
		curve
		return

	ifunction Run (master)		
		_Capacity = NIL
		_Energy = NIL
		if (StrCmp(ClassName(master), "BOOL") eq 0)
			self.Object ().Run (master)
		else
			self.Object ().Run ()
			
	ifunction RunControl (location, command, data)
		if ((data eq RC_DATA_SS_CELLOFF) and (command eq RC_CMD_SS_CELL) and (_Pstat.CellStateMode() eq CELL_STATE_MODE_LEAVEON))
			; No operation because we do not want to turn off the cell
			self.Object ().RunControl(location, command, RC_DATA_SS_CELLON)
		else
			; Not asking to turn off the cell, so pass it through
			self.Object ().RunControl(location, command, data)	

	ifunction Printl (tag)
		if (StrCmp(ClassName(tag), "STRING") eq 0)
			self.Object ().Printl (tag)
		else
			self.Object ().Printl ()

	ifunction SetPlot (View, dV, dI, dT)
		curve = self.Object ()

		if (View eq PWR_LINVI)
			curve.SetPlotView (VIEW_SINGLE)
			if (_UseSBHC)
				curve.SetAxis (X_AXIS, PWR_Vf, LIN_AXIS, dV, SeqAESBHCSelector.SBHC_AxisLabel()[2], "V")
			else
				curve.SetAxis (X_AXIS, PWR_Vf, LIN_AXIS, dV, "E", "V")
			curve.SetAxis (Y_AXIS, PWR_Im, LIN_AXIS, dI, "I", "A")
			if (_AESmartSelector.Enabled () eq TRUE)
				; AE Curve
				i = 1
				while (i le AE_CHANNELS)
					if (_AESmartSelector.IsOn (i))		
						_Curve[i].SetPlotView (VIEW_SINGLE)
						if (_UseSBHC)
							_Curve[i].SetAxis (X_AXIS, PWR_AE_Vf1 + i - 1, LIN_AXIS, NIL, SeqAESBHCSelector.SBHC_AxisLabel()[i],"V")
						else
							_Curve[i].SetAxis (X_AXIS, PWR_AE_Vf1 + i - 1, LIN_AXIS, NIL, Sprint("Vch", i),"V")
						_Curve[i].SetAxis (Y_AXIS, PWR_AE_Im, LIN_AXIS, NIL, "I","A")
					i = i + 1

		else if (View eq PWR_VTIT)
			curve.SetPlotView (VIEW_DOUBLE)
			curve.SetAxis (X_AXIS, PWR_T, LIN_AXIS, dT, "T", "s")
			if (_UseSBHC)
				curve.SetAxis (Y_AXIS, PWR_Vf, LIN_AXIS, dV, SeqAESBHCSelector.SBHC_AxisLabel()[2], "V")
			else
				curve.SetAxis (Y_AXIS, PWR_Vf, LIN_AXIS, dV, "E", "V")
			curve.SetAxis (Z_AXIS, PWR_Im, LIN_AXIS, dI, "I", "A")
			if (_AESmartSelector.Enabled () eq TRUE)
				; AE Curve
				i = 1
				while (i le AE_CHANNELS)
					if (_AESmartSelector.IsOn (i))		
						_Curve[i].SetPlotView (VIEW_DOUBLE)
						_Curve[i].SetAxis (X_AXIS, PWR_AE_T, LIN_AXIS, NIL, "T","s")
						if (_UseSBHC)
							_Curve[i].SetAxis (Y_AXIS, PWR_AE_Vf1 + i - 1, LIN_AXIS, NIL, SeqAESBHCSelector.SBHC_AxisLabel()[i],"V")
						else
							_Curve[i].SetAxis (Y_AXIS, PWR_AE_Vf1 + i - 1, LIN_AXIS, NIL, Sprint("Vch", i),"V")
						_Curve[i].SetAxis (Z_AXIS, PWR_AE_Im, LIN_AXIS, NIL, "I","A")
					i = i + 1

		else if (View eq PWR_VTTT)
			curve.SetPlotView (VIEW_DOUBLE)
			curve.SetAxis (X_AXIS, PWR_T, LIN_AXIS, dT, "T", "s")
			curve.SetAxis (Y_AXIS, PWR_Vf, LIN_AXIS, dV, "E", "V")
			curve.SetAxis (Z_AXIS, PWR_Temp, LIN_AXIS, dI, "Temp", "C")
			if (_AESmartSelector.Enabled () eq TRUE)
				; AE Curve
				i = 1
				while (i le AE_CHANNELS)
					if (_AESmartSelector.IsOn (i))		
						_Curve[i].SetPlotView (VIEW_DOUBLE)
						_Curve[i].SetAxis (X_AXIS, PWR_AE_T, LIN_AXIS, NIL, "T","s")
						_Curve[i].SetAxis (Y_AXIS, PWR_AE_Vf1 + i - 1, LIN_AXIS, NIL, Sprint("Vch", i),"V")
						_Curve[i].SetAxis (Z_AXIS, PWR_AE_Temp, LIN_AXIS, NIL, "Temp","C")
					i = i + 1

		else if (View eq PWR_ATTT)
			curve.SetPlotView (VIEW_DOUBLE)
			curve.SetAxis (X_AXIS, PWR_T, LIN_AXIS, dT, "T", "s")
			curve.SetAxis (Y_AXIS, PWR_Ach, LIN_AXIS, dV, "Aux", "V")
			curve.SetAxis (Z_AXIS, PWR_Temp, LIN_AXIS, dI, "Temp", "C")
			if (_AESmartSelector.Enabled () eq TRUE)
				; AE Curve
				i = 1
				while (i le AE_CHANNELS)
					if (_AESmartSelector.IsOn (i))		
						_Curve[i].SetPlotView (VIEW_DOUBLE)
						_Curve[i].SetAxis (X_AXIS, PWR_AE_T, LIN_AXIS, NIL, "T","s")
						_Curve[i].SetAxis (Y_AXIS, PWR_AE_Ach, LIN_AXIS, NIL, "Ach","V")
						_Curve[i].SetAxis (Z_AXIS, PWR_AE_Temp, LIN_AXIS, NIL, "Temp","C")
					i = i + 1

		else if (View eq PWR_LINVP)
			curve.SetPlotView (VIEW_SINGLE)
			curve.SetAxis (X_AXIS, PWR_Vf, LIN_AXIS, dV, "E", "V")
			curve.SetAxis (Y_AXIS, PWR_Pwr, LIN_AXIS, dI, "Pwr", "W")
			if (_AESmartSelector.Enabled () eq TRUE)
				; AE Curve
				i = 1
				while (i le AE_CHANNELS)
					if (_AESmartSelector.IsOn (i))		
						_Curve[i].SetPlotView (VIEW_SINGLE)
						_Curve[i].SetAxis (X_AXIS, PWR_AE_Vf1 + i - 1, LIN_AXIS, NIL, Sprint("Vch", i),"V")
						_Curve[i].SetAxis (Y_AXIS, PWR_AE_Pwr1 + i - 1, LIN_AXIS, NIL, Sprint("Pwr", i),"W")
					i = i + 1

		else if (View eq PWR_LINVR)
			curve.SetPlotView (VIEW_SINGLE)
			curve.SetAxis (X_AXIS, PWR_Vf, LIN_AXIS, dV, "E", "V")
			curve.SetAxis (Y_AXIS, PWR_R, LIN_AXIS, dI, "R", "ohm")
			if (_AESmartSelector.Enabled () eq TRUE)
				; AE Curve
				i = 1
				while (i le AE_CHANNELS)
					if (_AESmartSelector.IsOn (i))		
						_Curve[i].SetPlotView (VIEW_SINGLE)
						_Curve[i].SetAxis (X_AXIS, PWR_AE_Vf1 + i - 1, LIN_AXIS, NIL, Sprint("Vch", i),"V")
						_Curve[i].SetAxis (Y_AXIS, PWR_AE_R1 + i - 1, LIN_AXIS, NIL, Sprint("R", i),"ohm")
					i = i + 1

		else if (View eq PWR_LINVT)
			curve.SetPlotView (VIEW_SINGLE)
			curve.SetAxis (X_AXIS, PWR_T, LIN_AXIS, dT, "T", "s")
			if (_UseSBHC)
				curve.SetAxis (Y_AXIS, PWR_Vf, LIN_AXIS, dV, SeqAESBHCSelector.SBHC_AxisLabel()[2], "V")
			else
				curve.SetAxis (Y_AXIS, PWR_Vf, LIN_AXIS, dV, "E", "V")
			if (_AESmartSelector.Enabled () eq TRUE)
				; AE Curve
				i = 1
				while (i le AE_CHANNELS)
					if (_AESmartSelector.IsOn (i))		
						_Curve[i].SetPlotView (VIEW_SINGLE)
						_Curve[i].SetAxis (X_AXIS, PWR_AE_T, LIN_AXIS, NIL, "T","s")
						if (_UseSBHC)
							_Curve[i].SetAxis (Y_AXIS, PWR_AE_Vf1 + i - 1, LIN_AXIS, NIL, SeqAESBHCSelector.SBHC_AxisLabel()[i],"V")
						else
							_Curve[i].SetAxis (Y_AXIS, PWR_AE_Vf1 + i - 1, LIN_AXIS, NIL, Sprint("Vch", i),"V")
					i = i + 1

		else if (View eq PWR_LINPV)
			curve.SetPlotView (VIEW_SINGLE)
			curve.SetAxis (X_AXIS, PWR_Pwr, LIN_AXIS, dI, "Pwr", "W")
			curve.SetAxis (Y_AXIS, PWR_Vf, LIN_AXIS, dV, "E", "V")
			if (_AESmartSelector.Enabled () eq TRUE)
				; AE Curve
				i = 1
				while (i le AE_CHANNELS)
					if (_AESmartSelector.IsOn (i))		
						_Curve[i].SetPlotView (VIEW_SINGLE)
						_Curve[i].SetAxis (X_AXIS, PWR_AE_Pwr1 + i - 1, LIN_AXIS, NIL, Sprint("Pwr", i),"W")
						_Curve[i].SetAxis (Y_AXIS, PWR_AE_Vf1 + i - 1, LIN_AXIS, NIL, Sprint("Vch", i),"V")
					i = i + 1

		else if (View eq PWR_LINRV)
			curve.SetPlotView (VIEW_SINGLE)
			curve.SetAxis (X_AXIS, PWR_R, LIN_AXIS, dI, "R", "ohm")
			curve.SetAxis (Y_AXIS, PWR_Vf, LIN_AXIS, dV, "E", "V")
			if (_AESmartSelector.Enabled () eq TRUE)
				; AE Curve
				i = 1
				while (i le AE_CHANNELS)
					if (_AESmartSelector.IsOn (i))		
						_Curve[i].SetPlotView (VIEW_SINGLE)
						_Curve[i].SetAxis (X_AXIS, PWR_AE_R1 + i - 1, LIN_AXIS, NIL, Sprint("R", i),"ohm")
						_Curve[i].SetAxis (Y_AXIS, PWR_AE_Vf1 + i - 1, LIN_AXIS, NIL, Sprint("Vch", i),"V")
					i = i + 1

		else if (View eq PWR_LINIV)
			curve.SetPlotView (VIEW_SINGLE)
			curve.SetAxis (X_AXIS, PWR_Im, LIN_AXIS, dI, "I", "A")
			curve.SetAxis (Y_AXIS, PWR_Vf, LIN_AXIS, dV, "E", "V")
			if (_AESmartSelector.Enabled () eq TRUE)
				; AE Curve
				i = 1
				while (i le AE_CHANNELS)
					if (_AESmartSelector.IsOn (i))		
						_Curve[i].SetPlotView (VIEW_SINGLE)
						_Curve[i].SetAxis (X_AXIS, PWR_AE_Im, LIN_AXIS, NIL, "I","A")
						_Curve[i].SetAxis (Y_AXIS, PWR_AE_Vf1 + i - 1, LIN_AXIS, NIL, Sprint("Vch", i),"V")
					i = i + 1

		else
			Error ("Unknown plot style.")

	ifunction DataValue (row, column)
		self.Object ().DataValue (row, column)

	ifunction Duration ()
		duration = 0.0
		if (self.Count () gt 0)
			duration = self.DataValue (self.Count() - 1, PWR_T)
		duration
		return

	ifunction Capacity ()
		if (_Capacity eq NIL)
			if (self.Count () gt 0)
				_Capacity = 0.0
				; Calculate Capacity in Coulombs
				AvgI = self.DataCol(PWR_Im).Avg ()
				T = self.DataValue (self.Count() - 1, PWR_T)
				_Capacity = Abs (AvgI * T)

		_Capacity
		return

	ifunction Energy ()
		if (_Energy eq NIL)
			if (self.Count () gt 0)
				_Energy = 0.0
				lasttime = 0.0
				i = 0
				while (i lt self.Count ())
					now = self.DataValue (i, PWR_T)
					_Energy = _Energy + ((now - lasttime) * self.DataValue (i, PWR_Pwr))
					lasttime = now
					i = i + 1

		_Energy
		return

	ifunction SetOffsetDacsToLastV(value)
		curve = self.Object ()
		Vlast = curve.DataValue(curve.Count (), PWR_Vf)
		_Pstat.SetVchOffsetEnable (TRUE)
		_Pstat.SetVchOffset(Vlast)
		_Pstat.SetVchRangeMode (TRUE)
		if (_UseSBHC)
			Vlast = curve.DataValue(curve.Count (), PWR_Ach)
			_Pstat.SetAchOffsetEnable (TRUE)
			_Pstat.SetAchOffset(Vlast)
		else if (_AESmartSelector.Enabled () eq TRUE)
			i = 1
			while (i le AE_CHANNELS)
				if (_AESmartSelector.IsOn (i))		
					Vlast = _Curve[i].DataValue(_Curve[i].Count (), PWR_Vf)
					_myAe.SetOffsetEnable(TRUE)
					_myAe.SetOffset(i, Vlast)
					_myAe.SetRangeMode (NIL, AE_AutoRngAuto)
					_myAe.SetRange (NIL, AE_Rng30m)
				i = i + 1
		
	ifunction Vstart ()
		vstart = self.DataValue (0, PWR_Vf)
		vstart
		return

	ifunction Vend ()
		vend = self.DataValue (self.Count() - 1, PWR_Vf)
		vend
		return

	ifunction TempStart ()
		tempstart = self.DataValue (0, PWR_Temp)
		tempstart
		return

	ifunction TempEnd ()
		tempend = self.DataValue (self.Count() - 1, PWR_Temp)
		tempend
		return

	ifunction PrintCapacityHeader ()
		Printl ("CAPACITYCURVE\tTABLE")
		Print ("\tPt\tTime\tType\tCycle\tCharge\tDuration\tVstart\tVend\tEnergy\tTstart\tTend\tOver")
		if (_AESmartSelector.Enabled () eq TRUE)
			if (_UseSBHC)
				self.Object ().PrintSBHCCapacityHeaderColumns()
			else
				self.Object ().PrintCapacityHeaderColumns ()
		else
			Printl ("")

		Print ("\t#\ts\t#\t#\tC\ts\tV\tV\tJ\tdeg C\tdeg C\tbits")
		if (_AESmartSelector.Enabled () eq TRUE)
			self.Object ().PrintCapacityHeaderUnits ()
		else
			Printl ("")


	ifunction PrintCapacityPoint (point, telapsed, type, cycle)
		Print ("\t",point
&				,"\t",telapsed
&				,"\t",type
&				,"\t",cycle
&				,"\t",self.Capacity ()
&				,"\t",self.Duration ()
&				,"\t",self.Vstart ()
&				,"\t",self.Vend ()
&				,"\t",self.Energy ()
&				,"\t",self.TempStart ()
&				,"\t",self.TempEnd ()
&				,"\t",self.OverloadSummaryString ()
&				)
		if (_AESmartSelector.Enabled () eq TRUE)
			self.Object ().PrintCapacityPoint ()
		else
			Printl ("")


	ifunction Count ()
		self.Object ().Count ()	
	ifunction SprintPoint (pointnumber)
		self.Object ().SprintPoint (pointnumber)
	ifunction OverloadCount (bits)
		self.Object ().OverloadCount (bits)
	ifunction OverloadSummaryString ()
		self.Object ().OverloadSummaryString ()
	ifunction Sprint ()
		self.Object ().Sprint ()
	ifunction DataCol (columnnumber)
		self.Object ().DataCol (columnnumber)
	ifunction Activate ()
		self.Object ().Activate ()
	ifunction SetPlotView (view)
		self.Object ().SetPlotView (view)
	ifunction SetAxis  (axisno, source, scale, min, label, units)
		self.Object ().SetAxis  (axisno, source, scale, min, label, units)
	ifunction SetTitle  (title)
		if (_UseSBHC)
			if (_Electrometer eq ElectrometerRE)
				CurveTitle = Sprint(title, " ", SeqAESBHCSelector.SBHC_Suffix()[1])
			else
				CurveTitle = Sprint(title, " ", SeqAESBHCSelector.SBHC_Suffix()[2])
			self.Object().SetTitle(CurveTitle)
		else
			self.Object ().SetTitle (title)
		if (_AESmartSelector.Enabled () eq TRUE)
			i = 1
			while (i le AE_CHANNELS)
				if (_AESmartSelector.IsOn (i))		
					if (_UseSBHC)
						_Curve[i].SetTitle(title, " ", SeqAESBHCSelector.SBHC_Suffix()[i])
					else
						_Curve[i].SetTitle (title, " AE Channel ", i)
				i = i + 1



	ifunction Title ()
		self.Object ().Title ()

	ifunction SetStopVMin (value)
		self.Object ().SetStopVMin (value)
	ifunction SetStopAVMin(value)
		self.Object ().SetStopAVMin (value)
	ifunction SetStopDVMin(value)
		self.Object ().SetStopDVMin (value)
	ifunction SetStopADVMin(value)
		self.Object ().SetStopADVMin (value)
	ifunction SetStopVMax(value)
		self.Object ().SetStopVMax (value)
	ifunction SetStopAVMax(value)
		self.Object ().SetStopAVMax (value)
	ifunction SetStopDVMax(value)
		self.Object ().SetStopDVMax (value)
	ifunction SetStopADVMax(value)
		self.Object ().SetStopADVMax (value)
	ifunction SetStopIMin(value)
		self.Object ().SetStopIMin (value)
	ifunction SetStopAIMin(value)
		self.Object ().SetStopAIMin (value)
	ifunction SetStopDIMin(value)
		self.Object ().SetStopDIMin (value)
	ifunction SetStopADIMin(value)
		self.Object ().SetStopADIMin (value)
	ifunction SetStopIMax(value)
		self.Object ().SetStopIMax (value)
	ifunction SetStopAIMax(value)
		self.Object ().SetStopAIMax (value)
	ifunction SetStopDIMax(value)
		self.Object ().SetStopDIMax (value)
	ifunction SetStopADIMax(value)
		self.Object ().SetStopADIMax (value)
	ifunction SetStopAMin(value)
		self.Object ().SetStopAMin (value)
	ifunction SetStopAAMin(value)
		self.Object ().SetStopAAMin (value)
	ifunction SetStopDAMin(value)
		self.Object ().SetStopDAMin (value)
	ifunction SetStopADAMin(value)
		self.Object ().SetStopADAMin (value)
	ifunction SetStopAMax(value)
		self.Object ().SetStopAMax (value)
	ifunction SetStopAAMax(value)
		self.Object ().SetStopAAMax (value)
	ifunction SetStopDAMax(value)
		self.Object ().SetStopDAMax (value)
	ifunction SetStopADAMax(value)
		self.Object ().SetStopADAMax (value)
	ifunction SetStopPMin(value)
		self.Object ().SetStopPMin (value)
	ifunction SetStopAPMin(value)
		self.Object ().SetStopAPMin (value)
	ifunction SetStopDPMin(value)
		self.Object ().SetStopDPMin (value)
	ifunction SetStopADPMin(value)
		self.Object ().SetStopADPMin (value)
	ifunction SetStopPMax(value)
		self.Object ().SetStopPMax (value)
	ifunction SetStopAPMax(value)
		self.Object ().SetStopAPMax (value)
	ifunction SetStopDPMax(value)
		self.Object ().SetStopDPMax (value)
	ifunction SetStopADPMax(value)
		self.Object ().SetStopADPMax (value)
	ifunction SetStopQMin(value)
		self.Object ().SetStopQMin (value)
	ifunction SetStopAQMin(value)
		self.Object ().SetStopAQMin (value)
	ifunction SetStopQMax(value)
		self.Object ().SetStopQMax (value)
	ifunction SetStopAQMax(value)
		self.Object ().SetStopAQMax (value)
	ifunction SetStopEMin(value)
		self.Object ().SetStopEMin (value)
	ifunction SetStopAEMin(value)
		self.Object ().SetStopAEMin (value)
	ifunction SetStopEMax(value)
		self.Object ().SetStopEMax (value)
	ifunction SetStopAEMax(value)
		self.Object ().SetStopAEMax (value)
	ifunction SetStopTempMax(value)
		self.Object ().SetStopTempMax (value)
	ifunction SetStopDTempMax(value)
		self.Object ().SetStopDTempMax (value)
	ifunction SetStopADTempMax(value)
		self.Object ().SetStopADTempMax (value)
	ifunction SetStopAtDelayVMin(value)
		self.Object ().SetStopAtDelayVMin (value)
	ifunction SetStopAtDelayAVMin(value)
		self.Object ().SetStopAtDelayAVMin (value)
	ifunction SetStopAtDelayDVMin(value)
		self.Object ().SetStopAtDelayDVMin (value)
	ifunction SetStopAtDelayADVMin(value)
		self.Object ().SetStopAtDelayADVMin (value)
	ifunction SetStopAtDelayVMax(value)
		self.Object ().SetStopAtDelayVMax (value)
	ifunction SetStopAtDelayAVMax(value)
		self.Object ().SetStopAtDelayAVMax (value)
	ifunction SetStopAtDelayADVMax(value)
		self.Object ().SetStopAtDelayADVMax (value)
	ifunction SetStopAtDelayDVMax(value)
		self.Object ().SetStopAtDelayDVMax (value)
	ifunction SetStopAtDelayIMin(value)
		self.Object ().SetStopAtDelayIMin (value)
	ifunction SetStopAtDelayAIMin(value)
		self.Object ().SetStopAtDelayAIMin (value)
	ifunction SetStopAtDelayDIMin(value)
		self.Object ().SetStopAtDelayDIMin (value)
	ifunction SetStopAtDelayADIMin(value)
		self.Object ().SetStopAtDelayADIMin (value)
	ifunction SetStopAtDelayIMax(value)
		self.Object ().SetStopAtDelayIMax (value)
	ifunction SetStopAtDelayAIMax(value)
		self.Object ().SetStopAtDelayAIMax (value)
	ifunction SetStopAtDelayADIMax(value)
		self.Object ().SetStopAtDelayADIMax (value)
	ifunction SetStopAtDelayDIMax(value)
		self.Object ().SetStopAtDelayDIMax (value)
	ifunction SetStopAtDelayAMin(value)
		self.Object ().SetStopAtDelayAMin (value)
	ifunction SetStopAtDelayAAMin(value)
		self.Object ().SetStopAtDelayAAMin (value)
	ifunction SetStopAtDelayDAMin(value)
		self.Object ().SetStopAtDelayDAMin (value)
	ifunction SetStopAtDelayADAMin(value)
		self.Object ().SetStopAtDelayADAMin (value)
	ifunction SetStopAtDelayAMax(value)
		self.Object ().SetStopAtDelayAMax (value)
	ifunction SetStopAtDelayAAMax(value)
		self.Object ().SetStopAtDelayAAMax (value)
	ifunction SetStopAtDelayADAMax(value)
		self.Object ().SetStopAtDelayADAMax (value)
	ifunction SetStopAtDelayDAMax(value)
		self.Object ().SetStopAtDelayDAMax (value)
	ifunction SetStopAtDelayPMin(value)
		self.Object ().SetStopAtDelayPMin (value)
	ifunction SetStopAtDelayAPMin(value)
		self.Object ().SetStopAtDelayAPMin (value)
	ifunction SetStopAtDelayDPMin(value)
		self.Object ().SetStopAtDelayDPMin (value)
	ifunction SetStopAtDelayADPMin(value)
		self.Object ().SetStopAtDelayADPMin (value)
	ifunction SetStopAtDelayPMax(value)
		self.Object ().SetStopAtDelayPMax (value)
	ifunction SetStopAtDelayAPMax(value)
		self.Object ().SetStopAtDelayAPMax (value)
	ifunction SetStopAtDelayADPMax(value)
		self.Object ().SetStopAtDelayADPMax (value)
	ifunction SetStopAtDelayDPMax(value)
		self.Object ().SetStopAtDelayDPMax (value)
	ifunction SetStopAtDelayQMin(value)
		self.Object ().SetStopAtDelayQMin (value)
	ifunction SetStopAtDelayAQMin(value)
		self.Object ().SetStopAtDelayAQMin (value)
	ifunction SetStopAtDelayQMax(value)
		self.Object ().SetStopAtDelayQMax (value)
	ifunction SetStopAtDelayAQMax(value)
		self.Object ().SetStopAtDelayAQMax (value)
	ifunction SetStopAtDelayEMin(value)
		self.Object ().SetStopAtDelayEMin (value)
	ifunction SetStopAtDelayAEMin(value)
		self.Object ().SetStopAtDelayAEMin (value)
	ifunction SetStopAtDelayEMax(value)
		self.Object ().SetStopAtDelayEMax (value)
	ifunction SetStopAtDelayAEMax(value)
		self.Object ().SetStopAtDelayAEMax (value)
	ifunction SetStopAtDelayTempMax(value)
		self.Object ().SetStopAtDelayTempMax (value)
	ifunction SetStopAtDelayDTempMax(value)
		self.Object ().SetStopAtDelayDTempMax (value)
	ifunction SetStopAtDelayADTempMax(value)
		self.Object ().SetStopAtDelayADTempMax (value)
	ifunction SetThreshVMin(value)
		self.Object ().SetThreshVMin (value)
	ifunction SetThreshVMax(value)
		self.Object ().SetThreshVMax (value)
	ifunction SetThreshIMin(value)
		self.Object ().SetThreshIMin (value)
	ifunction SetThreshIMax(value)
		self.Object ().SetThreshIMax (value)
	ifunction SetThreshTMin(value)
		self.Object ().SetThreshTMin (value)
	ifunction SetThreshTMax(value)
		self.Object ().SetThreshTMax (value)
	ifunction SetThreshAMin(value)
		self.Object ().SetThreshAMin (value)
	ifunction SetThreshAMax(value)
		self.Object ().SetThreshAMax (value)
	ifunction SetThreshPMin(value)
		self.Object ().SetThreshPMin (value)
	ifunction SetThreshPMax(value)
		self.Object ().SetThreshPMax (value)
	ifunction SetThreshEMin(value)
		self.Object ().SetThreshEMin (value)
	ifunction SetThreshEMax(value)
		self.Object ().SetThreshEMax (value)
	ifunction SetThreshTempMin(value)
		self.Object ().SetThreshTempMin (value)
	ifunction SetThreshTempMax(value)
		self.Object ().SetThreshTempMax (value)



global CELL_TYPE_HALF = 0
global CELL_TYPE_FULL = 1
global CELL_TYPE_BOTH = 2

class CELLTYPE
	ivar _Selector
	ivar _CellTypeVector
	ivar _Prompt
	ivar _Tag
	ivar _Electrometer
	;ivar _ComplianceVoltage
	ivar _AchSelect
	ivar _WorkingConnection

	cfunction New (tag, value, prompt)
		self = ObjectNew (CELLTYPE)
		self.Init (tag, value, prompt)
		self
		return

	cfunction Convert (object)
		if (StrCmp(ClassName(object),"CELLTYPE") eq 0)
			; a CELLTYPE object was passed in, no need to convert
			object
			return
		; Expect a selector object, convert
		self = ObjectNew (CELLTYPE)
		self.Init ("CELLTYPE", object.Value (), object.Prompt ())
		self
		return

	ifunction Init(tag, value, prompt)
		_CellTypeVector = VectorNew (3)
		_CellTypeVector[CELL_TYPE_HALF] = "Half Cell"
		_CellTypeVector[CELL_TYPE_FULL] = "Full Cell"
		_CellTypeVector[CELL_TYPE_BOTH] = "Both"
		_Tag = tag
		_Prompt = prompt
		_Electrometer = ElectrometerRE
		;_ComplianceVoltage = NIL
		_AchSelect = AchSelect_GND

		_Selector = SELECTOR.New(_Tag, _CellTypeVector, value, _Prompt)

		return

	ifunction SetupObject()
		_Selector

	ifunction Printl(tag)
		if (StrCmp(ClassName(tag), "STRING") eq 0)
			dummy = self.SetupObject ()
			dummy.Printl (tag)
		else
			dummy = self.SetupObject ()
			dummy.Printl ()

	ifunction Value ()
		self.SetupObject ().Value ()
		return

	ifunction SetValue (value)
		self.SetupObject ().SetValue (value)

	ifunction Show()
		if (self.Value () eq CELL_TYPE_HALF)
			show = "Half Cell"
		else  if (self.Value () eq CELL_TYPE_FULL)
			show = "Full Cell"
		else
			show = "Both"
		show
		return
	
	ifunction Initialize (pstat)
		if (pstat.Has("ElectrometerCS") and (_Electrometer ne NIL))
			pstat.SetElectrometer (_Electrometer)
		;if (_ComplianceVoltage ne NIL)
			;pstat.SetComplianceVoltage(_ComplianceVoltage)
		if (_AchSelect ne NIL)
			pstat.SetAchSelect(_AchSelect)
		; Warning("In Initialize.  Testing _WorkingConnection")
		if (_WorkingConnection eq WORKING_POSITIVE)
			pstat.SetWorkingConnection(WORKING_POSITIVE)
			;pstat.SetConvention(Anodic)
		else if (_WorkingConnection eq WORKING_NEGATIVE)
			pstat.SetWorkingConnection(WORKING_NEGATIVE)
			;pstat.SetConvention(Cathodic)
		pstat.SetConvention(Anodic)
		
	ifunction SetElectrometer (electrometer)
		_Electrometer = electrometer

	ifunction Electrometer()
		_Electrometer

	;ifunction SetComplianceVoltage (complianceVoltage)
	;	_ComplianceVoltage = complianceVoltage
		
	ifunction SetAchSelect( achSelect)
		_AchSelect = achSelect
		
	ifunction SetWorkingConnection(workingConnection)
		_WorkingConnection = workingConnection

global WORKING_POSITIVE = 0
global WORKING_NEGATIVE = 1

class WORKINGCONNECTION
	ivar _Working
	ivar _WorkingVector
	cfunction New (tag, value, prompt)
		self = ObjectNew (WORKINGCONNECTION)
		self.Init (tag, value, prompt)
		self
		return

	cfunction Convert (object)
		if (StrCmp(ClassName(object),"WORKINGCONNECTION") eq 0)
			; a WORKINGCONNECTION object was passed in, no need to convert
			object
			return
		; Expect a selector object, convert
		self = ObjectNew (WORKINGCONNECTION)
		self.Init ("WORKINGCONNECTION", object.Value (), object.Prompt ())
		self
		return

	ifunction Init(tag, value, prompt)
		_WorkingVector = VectorNew (2)
		_WorkingVector[WORKING_POSITIVE] = "Positive"
		_WorkingVector[WORKING_NEGATIVE] = "Negative"
		_Working = SELECTOR.New(tag, _WorkingVector, value, prompt)
		return

	ifunction SetupObject()
		_Working

	ifunction Printl(tag)
		if (StrCmp(ClassName(tag), "STRING") eq 0)
			self.SetupObject ().Printl (tag)
		else
			self.SetupObject ().Printl ()

	ifunction Value ()
		self.SetupObject ().Value ()

	ifunction SetValue (value)
		self.SetupObject ().SetValue (value)

	ifunction Show ()
		if (self.Value() eq WORKING_POSITIVE)
			show = "Positive"
		else
			show = "Negative"
		show
		return
	

global STEP_CHARGE = 0
global STEP_DISCHARGE = 1

class FIRSTSTEP
	ivar _FirstStep
	ivar _FirstStepVector
	cfunction New (tag, value, prompt)
		self = ObjectNew (FIRSTSTEP)
		self.Init (tag, value, prompt)
		self
		return

	cfunction Convert (object)
		if (StrCmp(ClassName(object),"FIRSTSTEP") eq 0)
			; a FIRSTSTEP object was passed in, no need to convert
			object
			return
		; Expect a selector object, convert
		self = ObjectNew (FIRSTSTEP)
		self.Init ("FIRSTSTEP", object.Value (), object.Prompt ())
		self
		return

	ifunction Init(tag, value, prompt)
		_FirstStepVector = VectorNew (2)
		_FirstStepVector[STEP_CHARGE] = "Charge"
		_FirstStepVector[STEP_DISCHARGE] = "Discharge"
		_FirstStep = SELECTOR.New(tag, _FirstStepVector, value, prompt)
		return

	ifunction SetupObject()
		_FirstStep

	ifunction Printl(tag)
		if (StrCmp(ClassName(tag), "STRING") eq 0)
			self.SetupObject ().Printl (tag)
		else
			self.SetupObject ().Printl ()

	ifunction Value ()
		self.SetupObject ().Value ()

	ifunction SetValue (value)
		self.SetupObject ().SetValue (value)

	ifunction Show ()
		if (self.Value() eq STEP_CHARGE)
			show = "Charge"
		else
			show = "Discharge"
		show
		return


global PWR_SAVERAW_NO = 0
global PWR_SAVERAW_YES = 1

global PWR_SAVEINTERVAL_ALL = 0
global PWR_SAVEINTERVAL_SKIPN = 1
global PWR_SAVEINTERVAL_AFTERDELTAQ = 2

class PWRSAVERAW
	ivar _Selector
	ivar _SaveRawSelVector
	ivar _Prompt
	ivar _Tag
	ivar SaveVector
	ivar SkipNumber
	ivar SaveInterval
	ivar DeltaQIncrease
	ivar DeltaQDecrease
	ivar _LastQCharge
	ivar _LastQDischarge
	
	cfunction New (tag, value, prompt)
		self = ObjectNew (PWRSAVERAW)
		self.Init (tag, value, prompt)
		self
		return
	cfunction Convert (object)
		if (StrCmp(ClassName(object),"PWRSAVERAW") eq 0)
			; a PWRSAVERAW object was passed in, no need to convert
			object
			return
		
		if (StrCmp(ClassName(object),"ONEPARAM") eq 0)
			; A ONEPARAM object, convert
			self = ObjectNew (PWRSAVERAW)
			if (TRUE eq object.Check())
				self.Init ("PWRSAVERAW", PWR_SAVERAW_YES, "Save Raw Data")
				self.SetSaveInterval (PWR_SAVEINTERVAL_SKIPN)
				self.SetSkipNumber (Index(object.V1 ()))
			else
				self.Init ("PWRSAVERAW", PWR_SAVERAW_NO, "Save Raw Data")
			self
			return

		if (StrCmp(ClassName(object),"SELECTOR") eq 0)
			; A SELECTOR object, convert
			self = ObjectNew (PWRSAVERAW)
			self.Init ("PWRSAVERAW", object.Value (), object.Prompt ())
			self
			return

		; Could not convert
		NIL
		return
		
	ifunction Init(tag, value, prompt)
		_LastQCharge = 0.0
		_LastQDischarge = 0.0
		_SaveRawSelVector = VectorNew (2)
		_SaveRawSelVector[PWR_SAVERAW_NO] = "No"
		_SaveRawSelVector[PWR_SAVERAW_YES] = "Yes"

		_Tag = tag
		_Prompt = prompt

		_Selector = SELECTOR.New(_Tag, _SaveRawSelVector, value, _Prompt)

		SaveVector = VectorNew(3)										
		SaveVector[PWR_SAVEINTERVAL_ALL] = "All"										
		SaveVector[PWR_SAVEINTERVAL_SKIPN] = "Skip N"									
		SaveVector[PWR_SAVEINTERVAL_AFTERDELTAQ]  = "After DeltaQ"									
		SaveInterval = SELECTOR.New("SAVEINTERVAL", SaveVector, PWR_SAVEINTERVAL_ALL, "&Save Interval")

		SkipNumber = IQUANT.New ("SKIPNUMBER", 4, "Skip Number (#)")
		DeltaQIncrease = QUANT.New ("DELTAQINCREASE",6.0,"DeltaQ Increase (%)")	
		DeltaQDecrease = QUANT.New ("DELTAQDECREASE",3.0,"DeltaQ Decrease (%)")	

		return
		
	ifunction SetupObject()
		_Selector

	ifunction GetSetupVector()

		SetupVector = VectorNew (5)
		if (self.Value () eq PWR_SAVERAW_NO)
			i = 0
			while (i lt VectorCount(SetupVector))
				SetupVector[i] = DLGSPACE.New (0)
				i = i + 1
			SetupVector
			return

		SaveInterval = SELECTOR.New("SAVEINTERVAL", SaveVector, PWR_SAVEINTERVAL_ALL, "&Save Interval")

		result = SetupRestore ("PWR800.SET", "SAVERAW"
&			,SaveInterval
&			,SkipNumber
&			,DeltaQIncrease
&			,DeltaQDecrease
&			)

		SetupVector[0] = STATIC.New ("-- Save Raw Data Setup --")
		SetupVector[1] = SaveInterval
		SetupVector[2] = SkipNumber
		SetupVector[3] = DeltaQIncrease
		SetupVector[4] = DeltaQDecrease

		SetupVector
		return

	ifunction ValidateSetupVector(SetupVector)

		if (self.Value () eq PWR_SAVERAW_NO)
			TRUE
			return

		SaveInterval = SetupVector[1]
		SkipNumber = SetupVector[2]
		DeltaQIncrease = SetupVector[3]
		DeltaQDecrease = SetupVector[4]
		
		if (SkipNumber.Value () lt 0)
			SkipNumber.SetValue (0)				

		result = SetupSave ("PWR800.SET", "SAVERAW"
&			,SaveInterval
&			,SkipNumber
&			,DeltaQIncrease
&			,DeltaQDecrease
&			)

		TRUE
		return
		
		
	ifunction Printl(tag)
		if (StrCmp(ClassName(tag), "STRING") eq 0)
			dummy = self.SetupObject ()
			dummy.Printl (tag)
		else
			dummy = self.SetupObject ()
			dummy.Printl ()

	ifunction Value ()
		self.SetupObject ().Value ()
		return

	ifunction SetValue (value)
		self.SetupObject ().SetValue (value)

	ifunction SetSaveInterval (value)
		SaveInterval.SetValue (value)

	ifunction SetSkipNumber (value)
		if (value lt 0)
			value = 0

		SkipNumber.SetValue (value)

	ifunction SetDeltaQIncrease (value)
		DeltaQIncrease.SetValue (value)

	ifunction SetDeltaQDecrease (value)
		DeltaQDecrease.SetValue (value)

	ifunction Show()
		if (self.Value () eq PWR_SAVERAW_NO)
			show = "No"
		else
			show = "Yes"

		show
		return
		

	ifunction TimeToSaveByCycle (Cycle)
		if (self.Value () eq PWR_SAVERAW_NO)
			FALSE
			return

		if (SaveInterval.Value() eq PWR_SAVEINTERVAL_ALL)
			TRUE
			return

		if (SaveInterval.Value() eq PWR_SAVEINTERVAL_SKIPN)
			if ((Cycle % (SkipNumber.Value () + 1)) eq 0)
				TRUE
				return
			FALSE
			return


		FALSE
		return
							
	ifunction TimeToSaveByDeltaQ (Cycle, Q, Step)
		if (Step eq LOOPCCD_CHARGE)
			LastQ = _LastQCharge
			debugline = "CHECKSAVE - CHARGE"
		else
			LastQ = _LastQDischarge
			debugline = "CHECKSAVE - DISCHARGE"
			
		if (self.Value () eq PWR_SAVERAW_NO)
			FALSE
			return

		if (SaveInterval.Value() ne PWR_SAVEINTERVAL_AFTERDELTAQ)
			FALSE
			return

		if (LastQ eq 0.0)
			if (Step eq LOOPCCD_CHARGE)
				_LastQCharge = Q
			else
				_LastQDischarge = Q
			debugline = Sprint (debugline, " - First Cycle, Save")
;			Stdout (debugline)
			TRUE
			return
		if (LastQ eq Q)
			; Identical Charge, no need to save
;			Stdout (debugline, " - Identical Charge, no save")
			FALSE
			return
		if (LastQ gt Q)
			; Decrease in Charge, use the DeltaQDecrease value
			TestValue = DeltaQDecrease.Value()
		else
			; Increase in Charge, use the DeltaQIncrease value
			TestValue = DeltaQIncrease.Value()		
			
		DifferencePct = Abs((LastQ - Q)/LastQ) * 100.0
		debugline = Sprint (debugline, " - TestValue = ", TestValue, " : DifferencePct = ", DifferencePct, " : LastQ = ", LastQ, " : Q = ", Q)
		if (DifferencePct gt TestValue)
			if (Step eq LOOPCCD_CHARGE)
				_LastQCharge = Q
			else
				_LastQDischarge = Q
;			Stdout (debugline, " - SAVE")
			TRUE
			return
		else
;			Stdout (debugline, " - NO SAVE")
			FALSE
			return

;		Stdout (debugline, " - NO SAVE WHY HERE???")
		FALSE
		return

global PWR_EIS_SPECTRUM_NONE = 0
global PWR_EIS_SPECTRUM_CHARGE = 1
global PWR_EIS_SPECTRUM_DISCHARGE = 2
global PWR_EIS_SPECTRUM_BOTH = 3

class PWREISSPECTRUM
	ivar _Selector
	ivar _SpectrumTypeVector
	ivar _Prompt
	ivar _Tag
	ivar _Found
	ivar Params
	ivar SaveVector
	ivar StartOnCycle
	ivar SkipNumber
	ivar SaveInterval
	ivar DeltaQIncrease
	ivar DeltaQDecrease
	ivar _LastQCharge
	ivar _LastQDischarge


	cfunction New (tag, value, prompt)
		self = ObjectNew (PWREISSPECTRUM)
		self.Init (tag, value, prompt)
		self
		return

	cfunction Convert (object)
		if (StrCmp(ClassName(object),"PWREISSPECTRUM") eq 0)
			; a PWREISSPECTRUM object was passed in, no need to convert
			object
			return
		; Expect a selector object, convert
		self = ObjectNew (PWREISSPECTRUM)
		self.Init ("PWREISSPECTRUM", object.Value (), object.Prompt ())
		self
		return

	ifunction Init(tag, value, prompt)
		_SpectrumTypeVector = VectorNew (4)
		_SpectrumTypeVector[PWR_EIS_SPECTRUM_NONE] = "None"
		_SpectrumTypeVector[PWR_EIS_SPECTRUM_CHARGE] = "Charge"
		_SpectrumTypeVector[PWR_EIS_SPECTRUM_DISCHARGE] = "Discharge"
		_SpectrumTypeVector[PWR_EIS_SPECTRUM_BOTH] = "Both"
		_Tag = tag
		_Prompt = prompt

		; Check for an EIS300 authorization code
		if (NoPstatDemoMode () eq TRUE)
			_Found = TRUE
		else
			; Check all devices
			devices = EnumPstatDevices ()
			i = 0
			_Found = FALSE
			while (i lt VectorCount(devices))	
				PSTATCLASS = PstatClass (devices [i])
				_Pstat = PSTATCLASS.New ("PSTAT", devices [i])
				if (_Pstat.CheckAuth("EIS300",CHECKAUTHSEVERITY_SILENT))
					; Found one that supports EIS
					_Found = TRUE
					break
				i = i + 1			
			
		if (TRUE eq _Found)
			_Selector = SELECTOR.New(_Tag, _SpectrumTypeVector, value, _Prompt)
		else
			_Selector  = DLGSPACE.New (0)


		_LastQCharge = 0.0
		_LastQDischarge = 0.0

		SaveVector = VectorNew(3)										
		SaveVector[PWR_SAVEINTERVAL_ALL] = "All"										
		SaveVector[PWR_SAVEINTERVAL_SKIPN] = "Skip N"									
		SaveVector[PWR_SAVEINTERVAL_AFTERDELTAQ]  = "After DeltaQ"									
		SaveInterval = SELECTOR.New("SAVEINTERVAL", SaveVector, PWR_SAVEINTERVAL_ALL, "&Save Interval")

		StartOnCycle = IQUANT.New ("STARTONCYCLE", 1, "Start on Cycle (#)")
		SkipNumber = IQUANT.New ("SKIPNUMBER", 9, "Skip Number (#)")
		DeltaQIncrease = QUANT.New ("DELTAQINCREASE",10.0,"DeltaQ Increase (%)")	
		DeltaQDecrease = QUANT.New ("DELTAQDECREASE",5.0,"DeltaQ Decrease (%)")	


		return

	ifunction SetupObject()
		_Selector

	ifunction GetSetupVector()

		SetupVector = VectorNew (14)
		if (self.Value () eq PWR_EIS_SPECTRUM_NONE)
			i = 0
			while (i lt VectorCount(SetupVector))
				SetupVector[i] = DLGSPACE.New (0)
				i = i + 1
			SetupVector
			return

		IDCReq = QUANT.New ("IDCREQ", 0.0,"DC &Current (A)")
		IACReq       = QUANT.New ("IACREQ",0.0001,"AC &Current (A rms)")
		FreqInit     = QUANT.New ("FREQINIT",100000.0,"Initial Fre&q. (Hz)")	
		FreqFinal    = QUANT.New ("FREQFINAL",1.0,"Final Fre&q. (Hz)")	
		PointDensity = QUANT.New ("PTSPERDEC",10.0,"Points/&decade")

		ZGuess = QUANT.New ("ZGUESS", 100.0, "E&stimated Z (ohms)")
		
		SelectVector = VectorNew(3)										
		SelectVector[READZ_SPEED_FAST] = "Fast"										
		SelectVector[READZ_SPEED_NORM] = "Normal"									
		SelectVector[READZ_SPEED_LOW]  = "Low Noise"									
		Speed = SELECTOR.New("SPEED", SelectVector, 1, "&Optimize for:")

		SaveVector = VectorNew(3)										
		SaveVector[PWR_SAVEINTERVAL_ALL] = "All"										
		SaveVector[PWR_SAVEINTERVAL_SKIPN] = "Skip N"									
		SaveVector[PWR_SAVEINTERVAL_AFTERDELTAQ]  = "After DeltaQ"									
		SaveInterval = SELECTOR.New("SAVEINTERVAL", SaveVector, PWR_SAVEINTERVAL_SKIPN, "&Save Interval")
		
		SelectVector = VectorNew(2)										
		SelectVector[0] = "Off"										
		SelectVector[1] = "On"
		DriftCor = SELECTOR.New("DRIFTCOR", SelectVector, 0, "&Drift Correction")


		result = SetupRestore ("PWR800.SET", "GALVEIS"
&			,FreqInit
&			,FreqFinal
&			,PointDensity
&			,IACReq
&			,IDCReq
&			,ZGuess
&			,Speed
&			,StartOnCycle
&			,SaveInterval
&			,SkipNumber
&			,DeltaQIncrease
&			,DeltaQDecrease
&			,DriftCor
&			)

		SetupVector[0] = STATIC.New ("-- EIS Spectrum Parameters --")
		SetupVector[1] = FreqInit
		SetupVector[2] = FreqFinal
		SetupVector[3] = PointDensity
		SetupVector[4] = IDCReq
		SetupVector[5] = IACReq
		SetupVector[6] = ZGuess
		SetupVector[7] = Speed
		SetupVector[8] = StartOnCycle
		SetupVector[9] = SaveInterval
		SetupVector[10] = SkipNumber
		SetupVector[11] = DeltaQIncrease
		SetupVector[12] = DeltaQDecrease
		SetupVector[13] = DriftCor

		SetupVector
		return

	ifunction ValidateSetupVector(Pstat, Title, Output, Notes, CellType, Working, ExpectedMaxV, AESelector, SetupVector)

		if (self.Value () eq PWR_EIS_SPECTRUM_NONE)
			TRUE
			return


		FreqInit = SetupVector[1]
		FreqFinal = SetupVector[2]
		PointDensity = SetupVector[3]
		IDCReq = SetupVector[4]
		IACReq = SetupVector[5]
		ZGuess = SetupVector[6]
		Speed = SetupVector[7]
		StartOnCycle = SetupVector[8]
		SaveInterval = SetupVector[9]
		SkipNumber = SetupVector[10]
		DeltaQIncrease = SetupVector[11]
		DeltaQDecrease = SetupVector[12]
		DriftCor = SetupVector[13]

		PDV = PointDensity.Value ()
		FF = Abs (FreqFinal.Value ())
		IF = Abs (FreqInit.Value ())

		if (Pstat.CheckAuthFreq(IF, CHECKAUTHSEVERITY_WARNING) ne TRUE)
			FALSE
			return
		if (Pstat.CheckAuthFreq(FF, CHECKAUTHSEVERITY_WARNING) ne TRUE)
			FALSE
			return

		FLimUpper = Pstat.FreqLimitUpper ()
		FLimLower = Pstat.FreqLimitLower ()

			
		if (IF gt FLimUpper)
			Warning (Sprint ("Initial frequency exceeds upper limit - ", FLimUpper))
			IF = FLimUpper

		if (FF gt FLimUpper)
			Warning (Sprint ("Final frequency exceeds upper limit - ", FLimUpper))
			FF = FLimUpper

		if (IF lt FLimLower)
			Warning (Sprint ("Initial frequency exceeds lower limit - ", FLimLower))
			IF = FLimLower

		if (FF lt FLimLower)
			Warning (Sprint ("Final frequency exceeds lower limit - ", FLimLower))
			FF = FLimLower

		MaxPoints = CheckEISPoints (IF, FF, PDV)
		if (TestMaxPoints (MaxPoints, TRUE))
			FALSE
			return

		if (CheckCalibrationDate (Pstat, ACCAL) ne TRUE)
			FALSE
			return

		PWR800InitializePstat(Pstat, FALSE, CellType, SeqAESBHCSelector)
		ReadZGalv = SMARTREADZGALV.New (Pstat, AESelector)

		if (ReadZGalv.GalvTestGuess(FreqInit.Value(), IACReq.Value(), IDCReq.Value(), ZGuess.Value()) eq FALSE)
			ReadZGalv = NIL
			FALSE
			return

		if (StartOnCycle.Value () lt 1)
			StartOnCycle.SetValue (1)
		if (SkipNumber.Value () lt 0)
			SkipNumber.SetValue (0)				

		result = SetupSave ("PWR800.SET", "GALVEIS"
&			,FreqInit
&			,FreqFinal
&			,PointDensity
&			,IACReq
&			,IDCReq
&			,ZGuess
&			,Speed
&			,StartOnCycle
&			,SaveInterval
&			,SkipNumber
&			,DeltaQIncrease
&			,DeltaQDecrease
&			,DriftCor
&			)

		Params = VectorNew (16)
		Params[0] = LABEL.New ("TITLE", 100, Sprint (Title.Value (), " - Eis Spectrum"), "Test &Identifier")
		Params[1] = Output
		Params[2] = Notes
		Params[3] = Capacity
		Params[4] = CellType
		Params[5] = Working
		Params[6] = ExpectedMaxV
		Params[7] = FreqInit
		Params[8] = FreqFinal
		Params[9] = PointDensity
		Params[10] = IACReq
		Params[11] = IDCReq
		Params[12] = ZGuess
		Params[13] = Speed
		Params[14] = DriftCor
		Params[15] = ""
		TRUE
		return

	ifunction SetSaveInterval (value)
		SaveInterval.SetValue (value)

	ifunction SetSkipNumber (value)
		if (value lt 0)
			value = 0

		SkipNumber.SetValue (value)

	ifunction SetDeltaQIncrease (value)
		DeltaQIncrease.SetValue (value)

	ifunction SetDeltaQDecrease (value)
		DeltaQDecrease.SetValue (value)

	ifunction DischargeParams(cycle)
		if ((self.Value () eq PWR_EIS_SPECTRUM_DISCHARGE) or (self.Value () eq PWR_EIS_SPECTRUM_BOTH))
			Params[1] = OUTPUT.New ("OUTPUT", Sprint("DISCHARGE EIS SPECTRUM_#", cycle + 1,".DTA"), "Output File")
			Params[15] = " (Discharge)"
			dv = VectorNew (VectorCount (Params))
			i = 0
			while (i lt VectorCount (dv))
				dv[i] = Params[i]
				i = i + 1
			dv
			return
		NIL
		return

	ifunction ChargeParams(cycle)
		if ((self.Value () eq PWR_EIS_SPECTRUM_CHARGE) or (self.Value () eq PWR_EIS_SPECTRUM_BOTH))
			Params[1] = OUTPUT.New ("OUTPUT", Sprint("CHARGE EIS SPECTRUM_#", cycle + 1,".DTA"), "Output File")
			Params[15] = " (Charge)"
			dv = VectorNew (VectorCount (Params))
			i = 0
			while (i lt VectorCount (dv))
				dv[i] = Params[i]
				i = i + 1
			dv
			return
		NIL
		return

	ifunction Printl(tag)
		if (StrCmp(ClassName(tag), "STRING") eq 0)
			if (FALSE eq _Found)
				dummy = SELECTOR.New (_Tag, _SpectrumTypeVector, PWR_EIS_SPECTRUM_NONE, _Prompt)
			else
				dummy = self.SetupObject ()
			dummy.Printl (tag)
		else
			if (FALSE eq _Found)
				dummy = SELECTOR.New (_Tag, _SpectrumTypeVector, PWR_EIS_SPECTRUM_NONE, _Prompt)
			else
				dummy = self.SetupObject ()
			dummy.Printl ()

	ifunction Value ()
		if (FALSE eq _Found)
			PWR_EIS_SPECTRUM_NONE
			return

		self.SetupObject ().Value ()
		return

	ifunction SetValue (value)
		if (FALSE eq _Found)
			return

		self.SetupObject ().SetValue (value)

	ifunction Show()
		show = "None"

		if (self.Value () eq PWR_EIS_SPECTRUM_CHARGE)
			show = "Charge"
		else if (self.Value () eq PWR_EIS_SPECTRUM_DISCHARGE)
			show = "Discharge"
		else  if (self.Value () eq PWR_EIS_SPECTRUM_BOTH)
			show = "Charge and Discharge"

		show
		return

	ifunction Validate (Pstat)
		Pstat.CheckAuth("EIS300", CHECKAUTHSEVERITY_WARNING)
		TRUE
		return
	
	ifunction TimeToSaveByCycle (Cycle)
		if (Cycle lt (StartOnCycle.Value () - 1))
			FALSE
			return

		if (SaveInterval.Value() eq PWR_SAVEINTERVAL_ALL)
			TRUE
			return

		if (SaveInterval.Value() eq PWR_SAVEINTERVAL_SKIPN)
			if (((Cycle - (StartOnCycle.Value () - 1)) % (SkipNumber.Value () + 1)) eq 0)
				TRUE
				return
			FALSE
			return


		FALSE
		return
							
	ifunction TimeToSaveByDeltaQ (Cycle, Q, Step)
		if (Step eq LOOPCCD_CHARGE)
			LastQ = _LastQCharge
		else
			LastQ = _LastQDischarge
			
		if (Cycle lt (StartOnCycle.Value () - 1))
			FALSE
			return

		if (SaveInterval.Value() ne PWR_SAVEINTERVAL_AFTERDELTAQ)
			FALSE
			return

		if (LastQ eq 0.0)
			if (Step eq LOOPCCD_CHARGE)
				_LastQCharge = Q
			else
				_LastQDischarge = Q
			TRUE
			return
		if (LastQ eq Q)
			; Identical Charge, no need to save
			FALSE
			return
		if (LastQ gt Q)
			; Decrease in Charge, use the DeltaQDecrease value
			TestValue = DeltaQDecrease.Value()
		else
			; Increase in Charge, use the DeltaQIncrease value
			TestValue = DeltaQIncrease.Value()		
			
		DifferencePct = Abs((LastQ - Q)/LastQ) * 100.0
		if (DifferencePct gt TestValue)
			if (Step eq LOOPCCD_CHARGE)
				_LastQCharge = Q
			else
				_LastQDischarge = Q
			TRUE
			return
		else
			FALSE
			return

		FALSE
		return

		
global PWR_DISCHARGEMODEANDVALUE_CURRENT = 0
global PWR_DISCHARGEMODEANDVALUE_RESISTANCE = 1
global PWR_DISCHARGEMODEANDVALUE_POWER = 2
global PWR_DISCHARGEMODEANDVALUE_CRATEMULT = 3
global PWR_DISCHARGEMODEANDVALUE_CRATEDIV = 4


class DISCHARGEMODEANDVALUE
	ivar _DischargeMode
	ivar _PriVect
	ivar _SecVect
	ivar _Capacity
	
	cfunction New (tag, selection, value, prompt)
		self = ObjectNew (DISCHARGEMODEANDVALUE)
		self.Init (tag, selection, value, prompt)
		self
		return

	cfunction Convert (object)
		if (StrCmp(ClassName(object),"DISCHARGEMODEANDVALUE") eq 0)
			; a DISCHARGEMODEANDVALUE object was passed in, no need to convert
			object
			return
		; Expect a multiparam object, convert
		self = ObjectNew (DISCHARGEMODEANDVALUE)
		if (object.Variable() ne NIL)
			self.Init ("DISCHARGEMODEANDVALUE", object.Selection (), object.Variable (), object.Prompt ())
		else
			self.Init ("DISCHARGEMODEANDVALUE", object.Selection (), object.Value (), object.Prompt ())
		self
		return

	ifunction Init(tag, selection, value, prompt)
		_PriVect = VectorNew (5)
		_SecVect = VectorNew (5)
		_PriVect [PWR_DISCHARGEMODEANDVALUE_CURRENT] = "Constant Current"
		_PriVect [PWR_DISCHARGEMODEANDVALUE_RESISTANCE] = "Constant Load"
		_PriVect [PWR_DISCHARGEMODEANDVALUE_POWER] = "Constant Power"
		_PriVect [PWR_DISCHARGEMODEANDVALUE_CRATEMULT] = "Capacity * N"
		_PriVect [PWR_DISCHARGEMODEANDVALUE_CRATEDIV] = "Capacity / N"
		_SecVect [PWR_DISCHARGEMODEANDVALUE_CURRENT] = "Amp(s)"
		_SecVect [PWR_DISCHARGEMODEANDVALUE_RESISTANCE] = "Ohm(s)"
		_SecVect [PWR_DISCHARGEMODEANDVALUE_POWER] = "Watt(s)"
		_SecVect [PWR_DISCHARGEMODEANDVALUE_CRATEMULT] = "#N"
		_SecVect [PWR_DISCHARGEMODEANDVALUE_CRATEDIV] = "#N"

		_DischargeMode = MULTIPARAM.New (tag, _PriVect, _SecVect, selection, value, prompt)
		_Capacity = QUANT.New ("CAPACITY", 0.0, "Capacity (A-hr)")
		
		return

	ifunction SetupObject ()
		_DischargeMode

	ifunction Printl(tag)
		if (StrCmp(ClassName(tag), "STRING") eq 0)
			self.SetupObject ().Printl (tag)
		else
			self.SetupObject ().Printl ()

	ifunction Selection ()
		self.SetupObject ().Selection ()

	ifunction Value ()
		self.SetupObject ().Value ()

	ifunction SetValue (value)
		self.SetupObject ().SetValue (value)

	ifunction SetSelection (selection)
		self.SetupObject ().SetSelection (selection)

	ifunction Show ()
		show = Sprint (self.SetupObject ().SelectionDesc (), ": ", self.SetupObject ().Value (), " ", self.SetupObject ().ValueDesc ())
		show
		return
	ifunction SignalMode()
		Mode = PWR_MODE_CURRENT_DISCHARGE
		if (self.Selection() eq PWR_DISCHARGEMODEANDVALUE_RESISTANCE)
			Mode = PWR_MODE_RESISTANCE
		else if (self.Selection() eq PWR_DISCHARGEMODEANDVALUE_POWER)
			Mode = PWR_MODE_POWER

		Mode
		return
	ifunction SignalValue()
		_SignalValue = self.Value ()
		
		if (_Capacity.Value () gt 0.0)
			if (_SignalValue gt 0.0)
				if (self.Selection() eq PWR_DISCHARGEMODEANDVALUE_CRATEMULT)
					_SignalValue = _Capacity.Value () *_SignalValue
				else if (self.Selection() eq PWR_DISCHARGEMODEANDVALUE_CRATEDIV)
					_SignalValue =  _Capacity.Value () / _SignalValue
			else
				Warning ("N must be > 0 when using Capacity in the Discharge Mode.")
				Abort ()
			
		else
			Warning ("A positive Capacity must be set in order to use Capacity in Discharge Mode.")
			Abort ()
		_SignalValue
		return
	
	ifunction SetCapacity(capacity)
		_Capacity = capacity
		
	ifunction Capacity()
		_Capacity
		return

global PWR_CHARGEMODEANDVALUE_CURRENT = 0
global PWR_CHARGEMODEANDVALUE_CRATEMULT = 1
global PWR_CHARGEMODEANDVALUE_CRATEDIV = 2


class CHARGEMODEANDVALUE
	ivar _ChargeMode
	ivar _PriVect
	ivar _SecVect
	ivar _Capacity
	
	cfunction New (tag, selection, value, prompt)
		self = ObjectNew (CHARGEMODEANDVALUE)
		self.Init (tag, selection, value, prompt)
		self
		return

	cfunction Convert (object)
		if (StrCmp(ClassName(object),"CHARGEMODEANDVALUE") eq 0)
			; a CHARGEMODEANDVALUE object was passed in, no need to convert
			object
			return
		else if (StrCmp(ClassName(object),"QUANT") eq 0)
			; a QUANT object was passed in, convert
			self = ObjectNew (CHARGEMODEANDVALUE)
			self.Init ("CHARGEMODEANDVALUE", PWR_CHARGEMODEANDVALUE_CURRENT, object.Value (), "Charge Current (A)")
			self
			return
		else
			; Expect a multiparam object, convert
			self = ObjectNew (CHARGEMODEANDVALUE)
			if (object.Variable() ne NIL)
				self.Init ("CHARGEMODEANDVALUE", object.Selection (), object.Variable (), object.Prompt ())
			else
				self.Init ("CHARGEMODEANDVALUE", object.Selection (), object.Value (), object.Prompt ())
			self
			return

	ifunction Init(tag, selection, value, prompt)
		_PriVect = VectorNew (3)
		_SecVect = VectorNew (3)
		_PriVect [PWR_CHARGEMODEANDVALUE_CURRENT] = "Constant Current"
		_PriVect [PWR_CHARGEMODEANDVALUE_CRATEMULT] = "Capacity * N"
		_PriVect [PWR_CHARGEMODEANDVALUE_CRATEDIV] = "Capacity / N"
		_SecVect [PWR_CHARGEMODEANDVALUE_CURRENT] = "Amp(s)"
		_SecVect [PWR_CHARGEMODEANDVALUE_CRATEMULT] = "#N"
		_SecVect [PWR_CHARGEMODEANDVALUE_CRATEDIV] = "#N"

		_ChargeMode = MULTIPARAM.New (tag, _PriVect, _SecVect, selection, value, prompt)
		_Capacity = QUANT.New ("CAPACITY", 0.0, "Capacity (A-hr)")
		
		return

	ifunction SetupObject ()
		_ChargeMode

	ifunction Printl(tag)
		if (StrCmp(ClassName(tag), "STRING") eq 0)
			self.SetupObject ().Printl (tag)
		else
			self.SetupObject ().Printl ()

	ifunction Selection ()
		self.SetupObject ().Selection ()

	ifunction Value ()
		self.SetupObject ().Value ()

	ifunction SetValue (value)
		self.SetupObject ().SetValue (value)

	ifunction SetSelection (selection)
		self.SetupObject ().SetSelection (selection)

	ifunction Show ()
		show = Sprint (self.SetupObject ().SelectionDesc (), ": ", self.SetupObject ().Value (), " ", self.SetupObject ().ValueDesc ())
		show
		return
	ifunction SignalMode()
		Mode = PWR_MODE_CURRENT_CHARGE

		Mode
		return
	ifunction SignalValue()
		_SignalValue = self.Value ()
		
		if (_Capacity.Value () gt 0.0)
			if (_SignalValue gt 0.0)
				if (self.Selection() eq PWR_CHARGEMODEANDVALUE_CRATEMULT)
					_SignalValue = _Capacity.Value () *_SignalValue
				else if (self.Selection() eq PWR_CHARGEMODEANDVALUE_CRATEDIV)
					_SignalValue =  _Capacity.Value () / _SignalValue
			else
				Warning ("N must be > 0 when using Capacity in the Charge Mode.")
				Abort ()
			
		else
			Warning ("A positive Capacity must be set in order to use Capacity in Charge Mode.")
			Abort ()
		_SignalValue
		return
	
	ifunction SetCapacity(capacity)
		_Capacity = capacity
		
	ifunction Capacity()
		_Capacity
		return

class DISCHARGEMODE
	ivar _DischargeMode
	ivar _PriVect
	cfunction New (tag, selection, prompt)
		self = ObjectNew (DISCHARGEMODE)
		self.Init (tag, selection, prompt)
		self
		return

	cfunction Convert (object)
		if (StrCmp(ClassName(object),"DISCHARGEMODE") eq 0)
			; a DISCHARGEMODE object was passed in, no need to convert
			object
			return
		; Expect a dropdown object, convert
		self = ObjectNew (DISCHARGEMODE)
		self.Init ("DISCHARGEMODE", object.Selection (), object.Prompt ())
		self
		return

	ifunction Init(tag, selection, prompt)
		_PriVect = VectorNew (3)
		_PriVect [PWR_MODE_CURRENT_DISCHARGE] = "Constant Current"
		_PriVect [PWR_MODE_RESISTANCE] = "Constant Load"
		_PriVect [PWR_MODE_POWER] = "Constant Power"

		_DischargeMode = DROPDOWN.New (tag, _PriVect, selection, prompt)
		return

	ifunction SetupObject ()
		_DischargeMode

	ifunction Printl(tag)
		if (StrCmp(ClassName(tag), "STRING") eq 0)
			self.SetupObject ().Printl (tag)
		else
			self.SetupObject ().Printl ()

	; Here for consistency, even though this is a DROPDOWN object
	ifunction Selection ()
		self.SetupObject ().Value ()

	ifunction SetSelection (value)
		self.SetupObject ().SetValue (value)

	ifunction Value ()
		self.SetupObject ().Value ()

	ifunction SetValue (value)
		self.SetupObject ().SetValue (value)

	ifunction Show ()
		show = _PriVect [_DischargeMode.Value ()]
		show
		return


global TIME_SECONDS = 0
global TIME_MINUTES = 1
global TIME_HOURS = 2
global TIME_DAYS = 3

class TIMEENTRY
	ivar _TimeEntry
	ivar _PriVect
	ivar _SecVect
	cfunction New (tag, selection, value, prompt)
		self = ObjectNew (TIMEENTRY)
		self.Init (tag, selection, value, prompt)
		self
		return

	cfunction Convert (object)
		if (StrCmp(ClassName(object),"TIMEENTRY") eq 0)
			; a TIMEENTRY object was passed in, no need to convert
			object
			return
		; Expect a variable and units object, convert
		self = ObjectNew (TIMEENTRY)
		self.Init ("TIMEENTRY", object.Selection (), object.Value (), object.Prompt ())
		self
		return

	ifunction Init(tag, selection, value, prompt)
		_PriVect = VectorNew (4)
		_SecVect = VectorNew (4)
		_PriVect [TIME_SECONDS] = "second(s)"
		_PriVect [TIME_MINUTES] = "minute(s)"
		_PriVect [TIME_HOURS] = "hour(s)"
		_PriVect [TIME_DAYS] = "day(s)"
		_SecVect [TIME_SECONDS] = 1.0
		_SecVect [TIME_MINUTES] = 60.0
		_SecVect [TIME_HOURS] = 3600.0
		_SecVect [TIME_DAYS] = 86400.0

		_TimeEntry = VARIABLEANDUNITS.New (tag, value, _PriVect, selection, "s", _SecVect, prompt)
		return

	ifunction SetupObject()
		_TimeEntry

	ifunction Printl(tag)
		if (StrCmp(ClassName(tag), "STRING") eq 0)
			self.SetupObject ().Printl (tag)
		else
			self.SetupObject ().Printl ()

	ifunction Selection ()
		self.SetupObject ().Selection ()

	ifunction Value ()
		self.SetupObject ().Value ()

	ifunction SetValue (value)
		self.SetupObject ().SetValue (value)

	ifunction SetSelection (selection)
		self.SetupObject ().SetSelection (selection)

	ifunction SIValue ()
		self.SetupObject ().SIValue ()

	ifunction Show ()
		show = Sprint (self.Value (), " ", self.SetupObject ().SelectionDesc ())
		show
		return

global PWR_STOP_NONE = 0
global PWR_STOP_VMINSTOP = 1
global PWR_STOP_AVMINSTOP = 2
global PWR_STOP_DVMINSTOP = 3
global PWR_STOP_ADVMINSTOP = 4

global PWR_STOP_VMAXSTOP = 5
global PWR_STOP_AVMAXSTOP = 6
global PWR_STOP_DVMAXSTOP = 7
global PWR_STOP_ADVMAXSTOP = 8

global PWR_STOP_IMINSTOP = 9
global PWR_STOP_AIMINSTOP = 10
global PWR_STOP_DIMINSTOP = 11
global PWR_STOP_ADIMINSTOP = 12

global PWR_STOP_IMAXSTOP = 13
global PWR_STOP_AIMAXSTOP = 14
global PWR_STOP_DIMAXSTOP = 15
global PWR_STOP_ADIMAXSTOP = 16

global PWR_STOP_AMINSTOP = 17
global PWR_STOP_AAMINSTOP = 18
global PWR_STOP_DAMINSTOP = 19
global PWR_STOP_ADAMINSTOP = 20

global PWR_STOP_AMAXSTOP = 21
global PWR_STOP_AAMAXSTOP = 22
global PWR_STOP_DAMAXSTOP = 23
global PWR_STOP_ADAMAXSTOP = 24

global PWR_STOP_PMINSTOP = 25
global PWR_STOP_APMINSTOP = 26
global PWR_STOP_DPMINSTOP = 27
global PWR_STOP_ADPMINSTOP = 28

global PWR_STOP_PMAXSTOP = 29
global PWR_STOP_APMAXSTOP = 30
global PWR_STOP_DPMAXSTOP = 31
global PWR_STOP_ADPMAXSTOP = 32

global PWR_STOP_QMINSTOP = 33
global PWR_STOP_AQMINSTOP = 34
global PWR_STOP_QMAXSTOP = 35
global PWR_STOP_AQMAXSTOP = 36

global PWR_STOP_EMINSTOP = 37
global PWR_STOP_AEMINSTOP = 38
global PWR_STOP_EMAXSTOP = 39
global PWR_STOP_AEMAXSTOP = 40

global PWR_STOP_TEMPMAXSTOP = 41
global PWR_STOP_DTEMPMAXSTOP = 42
global PWR_STOP_ADTEMPMAXSTOP = 43

global PWR_STOP_CHARGE_DEFAULTS = 44
global PWR_STOP_DISCHARGE_DEFAULTS = 45
global PWR_STOP_CHARGEDISCHARGE_DEFAULTS = 46
global PWR_STOP_POTENTIOSTATIC_DEFAULTS = 47
global PWR_STOP_GALVANOSTATIC_DEFAULTS = 48
global PWR_STOP_READVOLTAGE_DEFAULTS = 49

global PWR_STOP_COUNT = 50

class PWRSTOPAT
	ivar _PwrStopAt
	ivar _MasterListDescription
	ivar _MasterListUnits
	ivar _ActualListDescription
	ivar _ActualListUnits
	ivar _ActualListIndex
	cfunction New (tag, selections, selection, value, prompt)
		self = ObjectNew (PWRSTOPAT)
		self.Init (tag, selections, selection, value, prompt, FALSE)
		self
		return

	cfunction Convert (object, selections)
		if (StrCmp(ClassName(object),"PWRSTOPAT") eq 0)
			; a PWRSTOPAT object was passed in, no need to convert
			object
			return
		; Expect a multiparam object, convert
		self = ObjectNew (PWRSTOPAT)
		if (object.Variable() ne NIL)
			self.Init ("PWRSTOPAT", selections, object.Selection (), object.Variable (), object.Prompt (), TRUE)
		else
			self.Init ("PWRSTOPAT", selections, object.Selection (), object.Value (), object.Prompt (), TRUE)
		self
		return

	ifunction Init(tag, selections, selection, value, prompt, converting)
		_ActualListIndex = VectorNew (0)
		_ActualListDescription = VectorNew (0)
		_ActualListUnits = VectorNew (0)
		_MasterListDescription = VectorNew (PWR_STOP_COUNT)
		_MasterListUnits = VectorNew (PWR_STOP_COUNT)
		_MasterListDescription [PWR_STOP_NONE] = "None"
		_MasterListDescription [PWR_STOP_VMINSTOP] = "Voltage < Limit"
		_MasterListDescription [PWR_STOP_AVMINSTOP] = "|Voltage| < Limit"
		_MasterListDescription [PWR_STOP_DVMINSTOP] = "dV/dT < Limit"
		_MasterListDescription [PWR_STOP_ADVMINSTOP] = "|dV/dT| < Limit"

		_MasterListDescription [PWR_STOP_VMAXSTOP] = "Voltage > Limit"
		_MasterListDescription [PWR_STOP_AVMAXSTOP] = "|Voltage| > Limit"
		_MasterListDescription [PWR_STOP_DVMAXSTOP] = "dV/dT > Limit"
		_MasterListDescription [PWR_STOP_ADVMAXSTOP] = "|dV/dT| > Limit"

		_MasterListDescription [PWR_STOP_IMINSTOP] = "Current < Limit"
		_MasterListDescription [PWR_STOP_AIMINSTOP] = "|Current| < Limit"
		_MasterListDescription [PWR_STOP_DIMINSTOP] = "dI/dT < Limit"
		_MasterListDescription [PWR_STOP_ADIMINSTOP] = "|dI/dT| < Limit"

		_MasterListDescription [PWR_STOP_IMAXSTOP] = "Current > Limit"
		_MasterListDescription [PWR_STOP_AIMAXSTOP] = "|Current| > Limit"
		_MasterListDescription [PWR_STOP_DIMAXSTOP] = "dI/dT > Limit"
		_MasterListDescription [PWR_STOP_ADIMAXSTOP] = "|dI/dT| > Limit"

		_MasterListDescription [PWR_STOP_AMINSTOP] = "Aux < Limit"
		_MasterListDescription [PWR_STOP_AAMINSTOP] = "|Aux| < Limit"
		_MasterListDescription [PWR_STOP_DAMINSTOP] = "dA/dT < Limit"
		_MasterListDescription [PWR_STOP_ADAMINSTOP] = "|dA/dT| < Limit"

		_MasterListDescription [PWR_STOP_AMAXSTOP] = "Aux > Limit"
		_MasterListDescription [PWR_STOP_AAMAXSTOP] = "|Aux| > Limit"
		_MasterListDescription [PWR_STOP_DAMAXSTOP] = "dA/dT > Limit"
		_MasterListDescription [PWR_STOP_ADAMAXSTOP] = "|dA/dT| > Limit"

		_MasterListDescription [PWR_STOP_PMINSTOP] = "Power < Limit"
		_MasterListDescription [PWR_STOP_APMINSTOP] = "|Power| < Limit"
		_MasterListDescription [PWR_STOP_DPMINSTOP] = "dP/dT < Limit"
		_MasterListDescription [PWR_STOP_ADPMINSTOP] = "|dP/dT| < Limit"

		_MasterListDescription [PWR_STOP_PMAXSTOP] = "Power > Limit"
		_MasterListDescription [PWR_STOP_APMAXSTOP] = "|Power| > Limit"
		_MasterListDescription [PWR_STOP_DPMAXSTOP] = "dP/dT > Limit"
		_MasterListDescription [PWR_STOP_ADPMAXSTOP] = "|dP/dT| > Limit"

		_MasterListDescription [PWR_STOP_QMINSTOP] = "Charge < Limit"
		_MasterListDescription [PWR_STOP_AQMINSTOP] = "|Charge| < Limit"
		_MasterListDescription [PWR_STOP_QMAXSTOP] = "Charge > Limit"
		_MasterListDescription [PWR_STOP_AQMAXSTOP] = "|Charge| > Limit"

		_MasterListDescription [PWR_STOP_EMINSTOP] = "Energy < Limit"
		_MasterListDescription [PWR_STOP_AEMINSTOP] = "|Energy| < Limit"
		_MasterListDescription [PWR_STOP_EMAXSTOP] = "Energy > Limit"
		_MasterListDescription [PWR_STOP_AEMAXSTOP] = "|Energy| > Limit"

		_MasterListDescription [PWR_STOP_TEMPMAXSTOP] = "Temp > Limit"
		_MasterListDescription [PWR_STOP_DTEMPMAXSTOP] = "dTemp/dt > Limit"
		_MasterListDescription [PWR_STOP_ADTEMPMAXSTOP] = "|dTemp/dt| > Limit"

		_MasterListUnits [PWR_STOP_NONE] = "N/A"
		_MasterListUnits [PWR_STOP_VMINSTOP] = "V"
		_MasterListUnits [PWR_STOP_AVMINSTOP] = "V"
		_MasterListUnits [PWR_STOP_DVMINSTOP] = "V/s"
		_MasterListUnits [PWR_STOP_ADVMINSTOP] = "V/s"

		_MasterListUnits [PWR_STOP_VMAXSTOP] = "V"
		_MasterListUnits [PWR_STOP_AVMAXSTOP] = "V"
		_MasterListUnits [PWR_STOP_DVMAXSTOP] = "V/s"
		_MasterListUnits [PWR_STOP_ADVMAXSTOP] = "V/s"

		_MasterListUnits [PWR_STOP_IMINSTOP] = "A"
		_MasterListUnits [PWR_STOP_AIMINSTOP] = "A"
		_MasterListUnits [PWR_STOP_DIMINSTOP] = "A/s"
		_MasterListUnits [PWR_STOP_ADIMINSTOP] = "A/s"

		_MasterListUnits [PWR_STOP_IMAXSTOP] = "A"
		_MasterListUnits [PWR_STOP_AIMAXSTOP] = "A"
		_MasterListUnits [PWR_STOP_DIMAXSTOP] = "A/s"
		_MasterListUnits [PWR_STOP_ADIMAXSTOP] = "A/s"

		_MasterListUnits [PWR_STOP_AMINSTOP] = "V"
		_MasterListUnits [PWR_STOP_AAMINSTOP] = "V"
		_MasterListUnits [PWR_STOP_DAMINSTOP] = "V"
		_MasterListUnits [PWR_STOP_ADAMINSTOP] = "V"

		_MasterListUnits [PWR_STOP_AMAXSTOP] = "V"
		_MasterListUnits [PWR_STOP_AAMAXSTOP] = "V"
		_MasterListUnits [PWR_STOP_DAMAXSTOP] = "V/s"
		_MasterListUnits [PWR_STOP_ADAMAXSTOP] = "V/s"

		_MasterListUnits [PWR_STOP_PMINSTOP] = "W"
		_MasterListUnits [PWR_STOP_APMINSTOP] = "W"
		_MasterListUnits [PWR_STOP_DPMINSTOP] = "W/s"
		_MasterListUnits [PWR_STOP_ADPMINSTOP] = "W/s"

		_MasterListUnits [PWR_STOP_PMAXSTOP] = "W"
		_MasterListUnits [PWR_STOP_APMAXSTOP] = "W"
		_MasterListUnits [PWR_STOP_DPMAXSTOP] = "W/s"
		_MasterListUnits [PWR_STOP_ADPMAXSTOP] = "W/s"

		_MasterListUnits [PWR_STOP_QMINSTOP] = "A h"
		_MasterListUnits [PWR_STOP_AQMINSTOP] = "A h"
		_MasterListUnits [PWR_STOP_QMAXSTOP] = "A h"
		_MasterListUnits [PWR_STOP_AQMAXSTOP] = "A h"

		_MasterListUnits [PWR_STOP_EMINSTOP] = "J"
		_MasterListUnits [PWR_STOP_AEMINSTOP] = "J"
		_MasterListUnits [PWR_STOP_EMAXSTOP] = "J"
		_MasterListUnits [PWR_STOP_AEMAXSTOP] = "J"

		_MasterListUnits [PWR_STOP_TEMPMAXSTOP] = "°C"
		_MasterListUnits [PWR_STOP_DTEMPMAXSTOP] = "°C/min"
		_MasterListUnits [PWR_STOP_ADTEMPMAXSTOP] = "°C/min"

		if (StrCmp(ClassName(selections), "VECTOR") eq 0)
			; a vector of selections has been passed in
			i = 0
			while (i lt VectorCount(selections))
				self.AddItem(selections[i])
				i = i + 1

		else if (StrCmp(ClassName(selections), "INDEX") eq 0)
			; a single selection has been passed in
			self.AddItem(selections)
		else
			; Nothing else is valid, so ignore
			self.AddItem(PWR_STOP_NONE)

		if (converting eq TRUE)
			selectionindex = selection
		else
			selectionindex = self._GetSelectionIndex (selection)
		_PwrStopAt = MULTIPARAM.New (tag, _ActualListDescription, _ActualListUnits, selectionindex, value, prompt)
		return

	ifunction SetupObject()
		_PwrStopAt

	ifunction _GetSelectionIndex (selection)
		i = 0
		while (i lt VectorCount (_ActualListIndex))
			if (selection eq _ActualListIndex [i])
				i
				return
			i = i + 1
		; selection was not found
		0
		return

	ifunction Selection ()
		selection = _ActualListIndex [_PwrStopAt.Selection ()]
		selection
		return

	ifunction Value ()
		value = _PwrStopAt.Value ()
		value
		return

	ifunction Activate (Curve)
		; Check to see if this is a SMARTPWR object
		if (StrCmp(ClassName(Curve), "SMARTPWR") eq 0)
			Curve = Curve.Object ()

		which = _ActualListIndex[_PwrStopAt.Selection ()]

		if (which eq PWR_STOP_VMINSTOP)
			Curve.SetStopVMin (_PwrStopAt.Value ())
			return
		if (which eq PWR_STOP_AVMINSTOP)
			Curve.SetStopAVMin (_PwrStopAt.Value ())
			return
		if (which eq PWR_STOP_DVMINSTOP)
			Curve.SetStopDVMin (_PwrStopAt.Value ())
			return
		if (which eq PWR_STOP_ADVMINSTOP)
			Curve.SetStopADVMin (_PwrStopAt.Value ())
			return
		if (which eq PWR_STOP_VMAXSTOP)
			Curve.SetStopVMax (_PwrStopAt.Value ())
			return
		if (which eq PWR_STOP_AVMAXSTOP)
			Curve.SetStopAVMax (_PwrStopAt.Value ())
			return
		if (which eq PWR_STOP_DVMAXSTOP)
			Curve.SetStopDVMax (_PwrStopAt.Value ())
			return
		if (which eq PWR_STOP_ADVMAXSTOP)
			Curve.SetStopADVMax (_PwrStopAt.Value ())
			return
		if (which eq PWR_STOP_IMINSTOP)
			Curve.SetStopIMin (_PwrStopAt.Value ())
			return
		if (which eq PWR_STOP_AIMINSTOP)
			Curve.SetStopAIMin (_PwrStopAt.Value ())
			return
		if (which eq PWR_STOP_DIMINSTOP)
			Curve.SetStopDIMin (_PwrStopAt.Value ())
			return
		if (which eq PWR_STOP_ADIMINSTOP)
			Curve.SetStopADIMin (_PwrStopAt.Value ())
			return
		if (which eq PWR_STOP_IMAXSTOP)
			Curve.SetStopIMax (_PwrStopAt.Value ())
			return
		if (which eq PWR_STOP_AIMAXSTOP)
			Curve.SetStopAIMax (_PwrStopAt.Value ())
			return
		if (which eq PWR_STOP_DIMAXSTOP)
			Curve.SetStopDIMax (_PwrStopAt.Value ())
			return
		if (which eq PWR_STOP_ADIMAXSTOP)
			Curve.SetStopADIMax (_PwrStopAt.Value ())
			return
		if (which eq PWR_STOP_AMINSTOP)
			Curve.SetStopAMin (_PwrStopAt.Value ())
			return
		if (which eq PWR_STOP_AAMINSTOP)
			Curve.SetStopAAMin (_PwrStopAt.Value ())
			return
		if (which eq PWR_STOP_DAMINSTOP)
			Curve.SetStopDAMin (_PwrStopAt.Value ())
			return
		if (which eq PWR_STOP_ADAMINSTOP)
			Curve.SetStopADAMin (_PwrStopAt.Value ())
			return
		if (which eq PWR_STOP_AMAXSTOP)
			Curve.SetStopAMax (_PwrStopAt.Value ())
			return
		if (which eq PWR_STOP_AAMAXSTOP)
			Curve.SetStopAAMax (_PwrStopAt.Value ())
			return
		if (which eq PWR_STOP_DAMAXSTOP)
			Curve.SetStopDAMax (_PwrStopAt.Value ())
			return
		if (which eq PWR_STOP_ADAMAXSTOP)
			Curve.SetStopADAMax (_PwrStopAt.Value ())
			return
		if (which eq PWR_STOP_PMINSTOP)
			Curve.SetStopPMin (_PwrStopAt.Value ())
			return
		if (which eq PWR_STOP_APMINSTOP)
			Curve.SetStopAPMin (_PwrStopAt.Value ())
			return
		if (which eq PWR_STOP_DPMINSTOP)
			Curve.SetStopDPMin (_PwrStopAt.Value ())
			return
		if (which eq PWR_STOP_ADPMINSTOP)
			Curve.SetStopADPMin (_PwrStopAt.Value ())
			return
		if (which eq PWR_STOP_PMAXSTOP)
			Curve.SetStopPMax (_PwrStopAt.Value ())
			return
		if (which eq PWR_STOP_APMAXSTOP)
			Curve.SetStopAPMax (_PwrStopAt.Value ())
			return
		if (which eq PWR_STOP_DPMAXSTOP)
			Curve.SetStopDPMax (_PwrStopAt.Value ())
			return
		if (which eq PWR_STOP_ADPMAXSTOP)
			Curve.SetStopADPMax (_PwrStopAt.Value ())
			return
		if (which eq PWR_STOP_QMINSTOP)
			; Convert Amp Hours to Coulombs
			Curve.SetStopQMin (_PwrStopAt.Value () * 3600.0)
			return
		if (which eq PWR_STOP_AQMINSTOP)
			; Convert Amp Hours to Coulombs
			Curve.SetStopAQMin (_PwrStopAt.Value () * 3600.0)
			return
		if (which eq PWR_STOP_QMAXSTOP)
			; Convert Amp Hours to Coulombs
			Curve.SetStopQMax (_PwrStopAt.Value () * 3600.0)
			return
		if (which eq PWR_STOP_AQMAXSTOP)
			; Convert Amp Hours to Coulombs
			Curve.SetStopAQMax (_PwrStopAt.Value () * 3600.0)
			return
		if (which eq PWR_STOP_EMINSTOP)
			Curve.SetStopEMin (_PwrStopAt.Value ())
			return
		if (which eq PWR_STOP_AEMINSTOP)
			Curve.SetStopAEMin (_PwrStopAt.Value ())
			return
		if (which eq PWR_STOP_EMAXSTOP)
			Curve.SetStopEMax (_PwrStopAt.Value ())
			return
		if (which eq PWR_STOP_AEMAXSTOP)
			Curve.SetStopAEMax (_PwrStopAt.Value ())
			return
		if (which eq PWR_STOP_TEMPMAXSTOP)
			Curve.SetStopTempMax (_PwrStopAt.Value ())
			return
		if (which eq PWR_STOP_DTEMPMAXSTOP)
			; Convert deg C / min to deg C / s
			Curve.SetStopDTempMax (_PwrStopAt.Value () / 60.0)
			Curve.SetStopAtDelayDTempMax (Index(PWR800_DEFAULT_DTEMP_DELAY / PWR800_DEFAULT_TIMER_RESOLUTION))
			return
		if (which eq PWR_STOP_ADTEMPMAXSTOP)
			; Convert deg C / min to deg C / s
			Curve.SetStopDTempMax (_PwrStopAt.Value () / 60.0 )
			Curve.SetStopAtDelayDTempMax (Index(PWR800_DEFAULT_DTEMP_DELAY / PWR800_DEFAULT_TIMER_RESOLUTION))
			return

		return

	ifunction AddItem(itemindex)
		if ((itemindex lt 0) or (itemindex ge PWR_STOP_COUNT))
			; invalid index, do nothing
			return

		; check to see if it is already on the list
		i = 0
		while (i lt VectorCount (_ActualListIndex))
			if (_ActualListIndex[i] eq itemindex)
				; Already in list, ignore
				return
			i = i + 1

		; check to see if it is a combination index
		if (itemindex eq PWR_STOP_CHARGE_DEFAULTS)
			self._AddItemActual (PWR_STOP_NONE)
			self._AddItemActual (PWR_STOP_AVMINSTOP)
			self._AddItemActual (PWR_STOP_AVMAXSTOP)
			self._AddItemActual (PWR_STOP_VMINSTOP)
			self._AddItemActual (PWR_STOP_VMAXSTOP)
			self._AddItemActual (PWR_STOP_TEMPMAXSTOP)
			self._AddItemActual (PWR_STOP_ADTEMPMAXSTOP)
			self._AddItemActual (PWR_STOP_AQMAXSTOP)
			self._AddItemActual (PWR_STOP_AEMAXSTOP)
		
		else if (itemindex eq PWR_STOP_DISCHARGE_DEFAULTS)
			self._AddItemActual (PWR_STOP_NONE)
			self._AddItemActual (PWR_STOP_AVMINSTOP)
			self._AddItemActual (PWR_STOP_AVMAXSTOP)
			self._AddItemActual (PWR_STOP_VMINSTOP)
			self._AddItemActual (PWR_STOP_VMAXSTOP)
			self._AddItemActual (PWR_STOP_TEMPMAXSTOP)
			self._AddItemActual (PWR_STOP_ADTEMPMAXSTOP)
			self._AddItemActual (PWR_STOP_AQMAXSTOP)
			self._AddItemActual (PWR_STOP_AEMAXSTOP)

		else if (itemindex eq PWR_STOP_CHARGEDISCHARGE_DEFAULTS)
			self._AddItemActual (PWR_STOP_NONE)

		else if (itemindex eq PWR_STOP_POTENTIOSTATIC_DEFAULTS)
			self._AddItemActual (PWR_STOP_NONE)
			self._AddItemActual (PWR_STOP_AIMINSTOP)
			self._AddItemActual (PWR_STOP_AIMAXSTOP)
			self._AddItemActual (PWR_STOP_IMINSTOP)
			self._AddItemActual (PWR_STOP_IMAXSTOP)
			self._AddItemActual (PWR_STOP_ADIMINSTOP)
			self._AddItemActual (PWR_STOP_TEMPMAXSTOP)
			self._AddItemActual (PWR_STOP_ADTEMPMAXSTOP)
		
		else if (itemindex eq PWR_STOP_GALVANOSTATIC_DEFAULTS)
			self._AddItemActual (PWR_STOP_NONE)
			self._AddItemActual (PWR_STOP_AVMINSTOP)
			self._AddItemActual (PWR_STOP_AVMAXSTOP)
			self._AddItemActual (PWR_STOP_VMINSTOP)
			self._AddItemActual (PWR_STOP_VMAXSTOP)
			self._AddItemActual (PWR_STOP_ADVMINSTOP)
			self._AddItemActual (PWR_STOP_TEMPMAXSTOP)
			self._AddItemActual (PWR_STOP_ADTEMPMAXSTOP)
			self._AddItemActual (PWR_STOP_AQMAXSTOP)
			self._AddItemActual (PWR_STOP_AEMAXSTOP)

		else if (itemindex eq PWR_STOP_READVOLTAGE_DEFAULTS)
			self._AddItemActual (PWR_STOP_NONE)
			self._AddItemActual (PWR_STOP_AVMINSTOP)
			self._AddItemActual (PWR_STOP_AVMAXSTOP)
			self._AddItemActual (PWR_STOP_VMINSTOP)
			self._AddItemActual (PWR_STOP_VMAXSTOP)
			self._AddItemActual (PWR_STOP_ADVMINSTOP)
			self._AddItemActual (PWR_STOP_ADVMAXSTOP)

		else
			; Normal, single item
			self._AddItemActual (itemindex)
		

	ifunction _AddItemActual(itemindex)
		_ActualListIndex = self._IncrementVector (_ActualListIndex)
		_ActualListDescription = self._IncrementVector (_ActualListDescription)
		_ActualListUnits = self._IncrementVector (_ActualListUnits)

		_ActualListIndex[VectorCount (_ActualListIndex) - 1] = itemindex
		_ActualListDescription[VectorCount (_ActualListIndex) - 1] = _MasterListDescription[itemindex]
		_ActualListUnits[VectorCount (_ActualListIndex) - 1] = _MasterListUnits[itemindex]
		return

	ifunction _IncrementVector (vector)
		newvector = VectorNew (VectorCount(vector) + 1)
		i = 0
		while (i lt VectorCount (vector))
			newvector[i] = vector [i]
			i = i + 1
		newvector
		return

	ifunction Printl(tag)
		if (StrCmp(ClassName(tag), "STRING") eq 0)
			self.SetupObject ().Printl (tag)
		else
			self.SetupObject ().Printl ()

	ifunction Show()
		show = Sprint (_ActualListDescription[_PwrStopAt.Selection ()], ": ", _PwrStopAt.Value (), " ", _ActualListUnits[_PwrStopAt.Selection ()])
		show
		return



global LOOP_END_COUNT = 2
global LOOP_END_NONE = 0
global LOOP_END_DISCHARGETIMEUNDER = 1
global LOOP_END_CHARGETIMEOVER = 2
global LOOP_END_CAPACITYUNDER = 3

class LOOPEND
	ivar _LoopEnd
	ivar _PriVect
	ivar _SecVect
	cfunction New (tag, selection, value, prompt)
		self = ObjectNew (LOOPEND)
		self.Init (tag, selection, value, prompt)
		self
		return

	cfunction Convert (object)
		if (StrCmp(ClassName(object),"LOOPEND") eq 0)
			; a LOOPEND object was passed in, no need to convert
			object
			return
		; Expect a selector object, convert
		self = ObjectNew (LOOPEND)
		self.Init ("LOOPEND", object.Selection (), object.Value (), object.Prompt ())
		self
		return	

	ifunction Init(tag, selection, value, prompt)
		_PriVect = VectorNew (4)
		_SecVect = VectorNew (4)
		_PriVect [LOOP_END_NONE] = "None"
		_PriVect [LOOP_END_DISCHARGETIMEUNDER] = "Discharge Time < Limit"
		_PriVect [LOOP_END_CHARGETIMEOVER] = "Charge Time > Limit"
		_PriVect [LOOP_END_CAPACITYUNDER] = "Capacity < Limit"
		_SecVect [LOOP_END_NONE] = "N/A"
		_SecVect [LOOP_END_DISCHARGETIMEUNDER] = "s"
		_SecVect [LOOP_END_CHARGETIMEOVER] = "s"
		_SecVect [LOOP_END_CAPACITYUNDER] = "A h"

		_LoopEnd = MULTIPARAM.New (tag, _PriVect, _SecVect, selection, value, prompt)
		return

	ifunction SetupObject()
		_LoopEnd
		return

	ifunction Printl(tag)
		if (StrCmp(ClassName(tag), "STRING") eq 0)
			self.SetupObject ().Printl (tag)
		else
			self.SetupObject ().Printl ()

	ifunction Selection ()
		self.SetupObject ().Selection ()

	ifunction Value ()
		self.SetupObject ().Value ()

	ifunction SetValue ()
		self.SetupObject ().SetValue ()

	ifunction Show ()
		show = Sprint (self.SetupObject ().SelectionDesc (), ": ", self.SetupObject ().Value (), " ", self.SetupObject ().ValueDesc ())
		show
		return

function PWR800ConfigureAndConfirm(Pstat, DisplayConfiguration, expectedmaxv, WorkingConnection, CellType, AESBHCSelector)
	if (Pstat.CheckAuth("PWR800", CHECKAUTHSEVERITY_WARNING) ne TRUE)
		ConfigurationValid = FALSE
		return

	ExpectedMaxV = expectedmaxv.Value()

	Pstat.Open ()		; Make sure Pstat is open.
	ConfigurationValid = TRUE
	lModel = Pstat.ModelNo()
	lWorkingConnection = WorkingConnection.Value()
	lCellType = CellType.Value()
	lAESBHCSelector = FALSE			; set false by default
	lElectrometer = NIL			; set NIL by default.
	;lComplianceVoltage = NIL
	lAchSelect = NIL

	Warn = NIL
	WarnConfig	= "The selected instrument does not support the requested config."
	WarnMaxV = "The expected maximum voltage exceeds the instrument capability."
	WarnPosReq = "The selected instrument & config requires positive working connection."
	WarnDualMeas = "The selected instrument cannot perform dual electrometer measurements."
	WarnSetElect = "The selected instrument and requested config is not valid.  Use alternate electrometer."
	WarnCompliance = "The selected instrument compliance voltage must be set to High."

	if (lModel eq IFC5000)
		lAchSelect = AchSelect_CSEL
		if (ExpectedMaxV gt 6.0)
			Warn = WarnMaxV
			ConfigurationValid = FALSE
		else if (lCellType eq CELL_TYPE_FULL)
			if (lWorkingConnection eq WORKING_POSITIVE)
				_cablecheck_positive = "WE, WS"
				_cablecheck_negative = "CE, CS"
			else 
				_cablecheck_positive = "CE, CS"
				_cablecheck_negative = "WE, WS"
			_cablecheck_reference = NIL
			_cablecheck_ground = "RE"
			lElectrometer = ElectrometerCS
			lAESBHCSelector = FALSE
		else if (lCellType eq CELL_TYPE_HALF) 
			if (lWorkingConnection eq WORKING_POSITIVE)
				_cablecheck_positive = "WE, WS"
				_cablecheck_negative = "CE"
			else	
				_cablecheck_positive = "CE"
				_cablecheck_negative = "WE, WS"
			_cablecheck_reference = "RE"
			_cablecheck_ground = "CS"
			lElectrometer = ElectrometerRE
			lAESBHCSelector = FALSE
		else if (lCellType eq CELL_TYPE_BOTH)
			if  (lWorkingConnection eq WORKING_POSITIVE)
				_cablecheck_positive = "WE, WS"
				_cablecheck_negative = "CE, CS"
			else
				_cablecheck_positive = "CE, CS"
				_cablecheck_negative = "WE, WS"
			_cablecheck_reference = "RE"
			_cablecheck_ground = NIL
			lElectrometer = ElectrometerCS   ; so full cell meas. goes to Vch.
			lAESBHCSelector = TRUE
		else
			Warn = WarnSetElect
			ConfigurationValid = FALSE
			
	else if (lModel eq EISBOX5000)
		lElectrometer = ElectrometerRE
		if (ExpectedMaxV gt 6.0)
			Warn = WarnMaxV
			ConfigurationValid = FALSE
		else if (lCellType eq CELL_TYPE_FULL)
			if (lWorkingConnection eq WORKING_POSITIVE)
				_cablecheck_positive = "WE, WS"
				_cablecheck_negative = "CE, RE"
			else if (lWorkingConnection eq WORKING_NEGATIVE)
				_cablecheck_positive = "CE, RE"
				_cablecheck_negative = "WE, WS"
			_cablecheck_reference = NIL
			_cablecheck_ground = NIL
		else if (lCellType eq CELL_TYPE_HALF)
			if (lWorkingConnection eq WORKING_POSITIVE)
				_cablecheck_positive = "WE, WS"
				_cablecheck_negative = "CE"
			else if (lWorkingConnection eq WORKING_NEGATIVE)
				_cablecheck_positive = "CE"
				_cablecheck_negative = "WE, WS"
			_cablecheck_reference = "RE"
			_cablecheck_ground = NIL
		else if (lCellType eq CELL_TYPE_BOTH)
			Warn = WarnDualMeas
			ConfigurationValid = FALSE
		else
			; dont think you can get here, but just in case.
			Warn = WarnConfig
			ConfigurationValid = FALSE

	else if (lModel eq EISBOX1010)
		lElectrometer = ElectrometerRE
		if (ExpectedMaxV gt 12.0)
			Warn = WarnMaxV
			ConfigurationValid = FALSE
		else if (lCellType eq CELL_TYPE_FULL)
			if (lWorkingConnection eq WORKING_POSITIVE)
				_cablecheck_positive = "WE, WS"
				_cablecheck_negative = "CE, RE"
			else if (lWorkingConnection eq WORKING_NEGATIVE)
				_cablecheck_positive = "CE, RE"
				_cablecheck_negative = "WE, WS"
			_cablecheck_reference = NIL
			_cablecheck_ground = NIL
		else if (lCellType eq CELL_TYPE_HALF)
			if (lWorkingConnection eq WORKING_POSITIVE)
				_cablecheck_positive = "WE, WS"
				_cablecheck_negative = "CE"
			else if (lWorkingConnection eq WORKING_NEGATIVE)
				_cablecheck_positive = "CE"
				_cablecheck_negative = "WE, WS"
			_cablecheck_reference = "RE"
			_cablecheck_ground = NIL
		else if (lCellType eq CELL_TYPE_BOTH)
			Warn = WarnDualMeas
			ConfigurationValid = FALSE
		else
			; dont think you can get here, but just in case.
			Warn = WarnConfig
			ConfigurationValid = FALSE

	else if ((lModel eq IFC1000) or (lModel eq IFC1010) or (lModel eq REF600) or (lModel eq REF600P) or (lModel eq REF620))
		lElectrometer = ElectrometerRE
		if (ExpectedMaxV gt 12.0)
			Warn = WarnMaxV
			ConfigurationValid = FALSE
		else if (lCellType eq CELL_TYPE_FULL)
			if (lWorkingConnection eq WORKING_POSITIVE)
				_cablecheck_positive = "WE, WS"
				_cablecheck_negative = "CE, RE"
			else if (lWorkingConnection eq WORKING_NEGATIVE)
				_cablecheck_positive = "CE, RE"
				_cablecheck_negative = "WE, WS"
			_cablecheck_reference = NIL
			_cablecheck_ground = "CS"
		else if (lCellType eq CELL_TYPE_HALF)
			if (lWorkingConnection eq WORKING_POSITIVE)
				_cablecheck_positive = "WE, WS"
				_cablecheck_negative = "CE"
			else if (lWorkingConnection eq WORKING_NEGATIVE)
				_cablecheck_positive = "CE"
				_cablecheck_negative = "WE, WS"
			_cablecheck_reference = "RE"
			_cablecheck_ground = "CS"
		else if (lCellType eq CELL_TYPE_BOTH)
			Warn = WarnDualMeas
			ConfigurationValid = FALSE
		else
			; dont think you can get here, but just in case.
			Warn = WarnConfig
			ConfigurationValid = FALSE

	else if (lModel eq REF3000)
		; REF3000 allocs +/-32V at high compliance, +/-15V at low.
		lAchSelect = AchSelect_CSEL		  ; Make sure we're measuring CS
		lComplianceVoltage = Pstat.ComplianceVoltage()
		if (ExpectedMaxV gt 32.0)
			Warn = WarnMaxV
			ConfigurationValid = FALSE
		else if (ExpectedMaxV gt 15.0 and lComplianceVoltage ne PC5_Compliance_Hi)
			Warn = WarnCompliance
			ConfigurationValid = FALSE

		else if (lCellType eq CELL_TYPE_FULL and ExpectedMaxV lt 12.0)
			; USE RE in full cell config.
			if (lWorkingConnection eq WORKING_POSITIVE)
				_cablecheck_positive = "WE, WS"
				_cablecheck_negative = "CE, RE"
			else
				_cablecheck_positive = "CE, RE"
				_cablecheck_negative = "WE, WS"
			_cablecheck_reference = NIL
			_cablecheck_ground = "CS"
			lElectrometer = ElectrometerRE
		else if (lCellType eq CELL_TYPE_FULL and ExpectedMaxV ge 12.0)
			; use CS in full cell.
			if (lWorkingConnection eq WORKING_POSITIVE)
				_cablecheck_positive = "WE, WS"
				_cablecheck_negative = "CE, CS"
				_cablecheck_reference = NIL
				_cablecheck_ground = "RE"
				lElectrometer = ElectrometerCS
			else
				; Invalid by software limitation
				Warn = WarnPosReq
				ConfigurationValid = FALSE
			
		else if (lCellType eq CELL_TYPE_HALF and ExpectedMaxV lt 12.0)
			if (lWorkingConnection eq WORKING_POSITIVE)
				; use RE to measure RE, WS to measure +
				_cablecheck_positive = "WE, WS"
				_cablecheck_negative = "CE"
			else
				; use RE to measure RE, WS to measure Negative electrode
				_cablecheck_positive = "CE"
				_cablecheck_negative = "WE, WS"
			_cablecheck_reference = "RE"
			_cablecheck_ground = "CS"
			lElectrometer = ElectrometerRE
		else if (lCellType eq CELL_TYPE_HALF and ExpectedMaxV ge 12.0)
			if (lWorkingConnection eq WORKING_POSITIVE)
				; use CS for half cell
				_cablecheck_positive = "WE, WS"
				_cablecheck_negative = "CE"
				_cablecheck_reference = "CS"
				_cablecheck_ground = "RE"
				lElectrometer = ElectrometerCS
			else
				; Invalid by software limitation
				Warn = WarnPosReq
				ConfigurationValid = FALSE
				
		else if (lCellType eq CELL_TYPE_BOTH)
			Warn = WarnDualMeas
			ConfigurationValid = FALSE
		else
			; Warning("Bang")
			; don't think you can get here, but just in case.
			Warn = WarnConfig
			ConfigurationValid = FALSE		
	
	else if (lModel eq REF30K)
		; Ref30 allows -20V to charge (-20 on CE, 0 on WE),  +2V to discharge.
		lAchSelect = AchSelect_CSEL
		if (ExpectedMaxV gt 20.0)
			Warn = WarnMaxV
			ConfigurationValid = FALSE
		else if (lWorkingConnection eq WORKING_NEGATIVE)
			Warn = WarnPosReq
			ConfigurationValid = FALSE
		else if (lCellType eq CELL_TYPE_FULL)
			if (ExpectedMaxV lt 12.0)
				_cablecheck_negative = "CE, RE"
				_cablecheck_ground = "CS"
				lElectrometer = ElectrometerRE
			else if (ExpectedMaxV ge 12.0)
				_cablecheck_negative = "CE, CS"
				_cablecheck_ground = "RE"
				lElectrometer = ElectrometerCS
			_cablecheck_positive = "WE, WS"
			_cablecheck_reference = NIL
		else if (lCellType eq CELL_TYPE_HALF)
			if (ExpectedMaxV lt 12.0)
				_cablecheck_reference = "RE"
				_cablecheck_ground = "CS"
				lElectrometer = ElectrometerRE
			else if (ExpectedMaxV ge 12.0)
				_cablecheck_reference = "CS"
				_cablecheck_ground = "RE"
				lElectrometer = ElectrometerCS
			_cablecheck_positive = "WE, WS"
			_cablecheck_negative = "CE"
			
		else
			; Warning("Bang")
			; don't think you can get here, but just in case.
			Warn = WarnConfig
			ConfigurationValid = FALSE		
	else if (lModel eq LPI1010)
		; LPI1010 limit is based on power device
		lElectrometer = ElectrometerRE
		if (ExpectedMaxV gt (Pstat.LPIVchRangeMultiplier() * 10.0))
			Warn = WarnMaxV
			ConfigurationValid = FALSE
		else if (lWorkingConnection eq WORKING_NEGATIVE)
			Warn = WarnPosReq
			ConfigurationValid = FALSE
		else if (lCellType eq CELL_TYPE_FULL)
			_cablecheck_positive = "WE, WS"
			_cablecheck_negative = "CE, RE"
		else if (lCellType eq CELL_TYPE_HALF)
			_cablecheck_positive = "WE, WS"
			_cablecheck_negative = "CE"
			_cablecheck_reference = "RE"
		else if (lCellType eq CELL_TYPE_BOTH)
			Warn = WarnDualMeas
			ConfigurationValid = FALSE
		else
			; dont think you can get here, but just in case.
			Warn = WarnConfig
			ConfigurationValid = FALSE
			
	else
		; really don't think you can get here...
		Warn = WarnConfig
		ConfigurationValid = FALSE
		
	; Now we're through the cases. report to user
	if (ConfigurationValid eq FALSE)
		MessageBox("Measurement Warning", Warn, MB_OK or MB_ICONWARNING)
		FALSE
		return
			
	if (lElectrometer eq NIL)
		Warning("Invalid Electrometer Setting")

	; finally if we are here, configuration is valid.  set up the potentiostat
	if (lElectrometer ne NIL)
		CellType.SetElectrometer(lElectrometer)	; so this setting can be used in the future
	;if (lComplianceVoltage ne NIL)
	;	CellType.SetComplianceVoltage(lComplianceVoltage)  ; again, make this value usable in future call
	if (lAchSelect ne NIL)
		CellType.SetAchSelect(lAchSelect)
	if (lWorkingConnection ne NIL)
		CellType.SetWorkingConnection(lWorkingConnection)
	CellType.Initialize(Pstat)
	AESBHCSelector.SetValue(lAESBHCSelector)
	
	; now tell the user how to hook up the cables and then test them.
	ConfirmationMessage = Sprint("Pstat: ", Pstat.Label(), "\n")
	ConfirmationMessage = Sprint (ConfirmationMessage, "Connect ", _cablecheck_positive, " to Positive\n")
	ConfirmationMessage = Sprint (ConfirmationMessage, "Connect ", _cablecheck_negative, " to Negative\n")		
	if (_cablecheck_reference ne NIL)
		ConfirmationMessage = Sprint (ConfirmationMessage, "Connect ", _cablecheck_reference, " to Reference\n")
	if (_cablecheck_ground ne NIL)
		ConfirmationMessage = Sprint (ConfirmationMessage, "Connect ", _cablecheck_ground, " to Ground.\n")
	ConfirmationMessage = Sprint(ConfirmationMessage,"\nPress OK after connections are confirmed.")

	loop
		if (DisplayConfiguration eq TRUE)	
			result = MessageBox("Cable Check", ConfirmationMessage, MB_OKCANCEL or MB_ICONWARNING)
			if (result eq IDOK)
				ConfigurationValid = TRUE
			if (result eq IDCANCEL)
				ConfigurationValid = FALSE
				FALSE
				return
				
		; Now test that the user has correct connections made
		Pstat.FindVchRange()
		VoltageReading = Pstat.MeasureV()
		if ((WorkingConnection.Value () eq WORKING_POSITIVE) and (VoltageReading lt -0.005)) or
&		   ((WorkingConnection.Value () eq WORKING_NEGATIVE) and (VoltageReading gt 0.005))
			; Bad case
			MeasurementMessage = Sprint("Pstat: ", Pstat.Label(), "\n")
			MeasurementMessage = Sprint (MeasurementMessage, "Voltage is ", VoltageReading," V \n","Press YES to allow, NO to Recheck it.")
			result = MessageBox("Measurement Warning", MeasurementMessage, MB_YESNO or MB_ICONWARNING)
			if (result ne IDYES)
				DisplayConfiguration = TRUE
			else 
				break
		else	
			; good gase
			break
	
	ConfigurationValid
	return
		
class PSTATSMARTSELECTOR
	ivar _PstatSelect
	ivar _ShowSetup

	cfunction New (tag, prompt)
		self = ObjectNew (PSTATSMARTSELECTOR)
		self.Init (tag,  prompt)
		self
		return

	ifunction Init(tag, prompt)
		_ShowSetup = FALSE
		_PstatSelect = PSTATSELECT.New (tag, prompt)
		; Check for an instrument that has an AE
		if (NoPstatDemoMode () eq TRUE)
			_ShowSetup = TRUE
		else
			devices = EnumPstatDevices ()
			if (VectorCount(devices) gt 1)
				_ShowSetup = TRUE			

	ifunction Selector (style)
		_PstatSelect.Selector(style)

	ifunction CreatePstat (Tag, Key)
		_PstatSelect.CreatePstat(Tag, Key)
		
	ifunction ShowSetup()
		if (_ShowSetup eq FALSE)
			TRUE
			return
		
		result = Setup ("Potentiostat Selection"
&					,_PstatSelect.Selector(SELECTOR_ASTERISK)
&					)
		result
		return
	
		
function PWR800InitializePstat(Pstat, IRToggle, celltype, aesbhcselector)
	Pstat.Open()
	Pstat.SetCell(CellOff)
	Pstat.InstrumentSpecificInitialize()
	celltype.Initialize(Pstat)    		; this handles ComplianceVolate, AchSelect,IConvention
	aesbhcselector.Initialize(Pstat)
	if (Pstat.Has("ElectrometerCS"))
		Pstat.SetAchSelect(AchSelect_CSEL)
	Pstat.SetCtrlMode(GstatMode)
	Pstat.SetStability(StabilityFast)
	Pstat.SetCASpeed(CASpeedNorm)
	Pstat.SetSenseSpeed(SenseSlow)
	Pstat.SetSenseSpeedMode(FALSE)
	Pstat.SetGround(Float)

	Pstat.SetIchRange(3.0)
	Pstat.SetIchRangeMode(TRUE)
	Pstat.SetIchOffsetEnable(FALSE)
	Pstat.SetIchFilter(60000.0)

	Pstat.SetVchRange (10.0)
	Pstat.SetVchRangeMode (TRUE)
	Pstat.SetVchOffsetEnable (FALSE)
	Pstat.SetVchFilter (60000.0)
 
	Pstat.SetAchRange (3.0)
	Pstat.SetAchOffsetEnable(FALSE)
	Pstat.SetAchRangeMode(TRUE)
	Pstat.SetAchFilter(60000.0)
	
	;Lower Current Range Limit for Derived Control modes.  This can be lowered for Const Current mode
	Pstat.SetIERangeLowerLimit (7)				
	
	Pstat.SetAnalogOut (0.0)
	Pstat.SetPosFeedEnable (FALSE)
	Pstat.SetDDSEnable (FALSE)
	if (IRToggle)
		Pstat.SetIruptMode(IruptOff, EuExtrap, IruptTime, POTEN.Eoc(), 1.0)
		Pstat.SetVchFilter (100000.0)
	else
		Pstat.SetIruptMode (IruptOff)
	return

function PWR800ClearPstat(Pstat)
	Pstat.Open()

	;Issue #3897 Clear Lower Current Range Limit for other experiments
	Pstat.SetIERangeLowerLimit(NIL)				

; #4584 Check PWR Sample Time
function PWR800CheckSampleTime(SampleTime)
	if (SampleTime lt SIGNAL_CHANGING_THRESHOLD)
		MessageBox ("Experimental Parameter Warning",
&			Sprint ("The requested sample period  ("
&			,SampleTime
&			," s) is too small."
&			,"  Your sample period must be at least (", SIGNAL_CHANGING_THRESHOLD," s)."
&			,"  Please change your acquisition parameters to increase your sample time.")
&			,MB_OK or MB_ICONINFORMATION)
		FALSE 
		return

	TRUE
	return