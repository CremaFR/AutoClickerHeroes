#cs ----------------------------------------------------------------------------

	AutoIt Version : 3.3.8.1
	Auteur:         Crema

	Fonction of the Script :
	A simple auto clicker for Clicker Heroes

#ce ----------------------------------------------------------------------------


; Hotkey of the autoCliker
HotKeySet("!a", "Quit") ;Alt-a
HotKeySet("!c", "Keep_bonus") ;Alt-c
HotKeySet("!r", "Run_bonus") ;Alt-r
HotKeySet("!n", "Ascension") ;Alt-n


;This positions depends on your windows size. this is for the default size.

;position min of the window
$x_min = 661
$y_min = 120

;position max of the window
$x_max = 1050
$y_max = 550


;time beetween 2 clicks
$sleep_time = 75;
$keep_mode_time = 5000;

$w = 0 ;var for the end of app
$ascension = 0; use to know if we are in ascension mode

;while function quit isn't called
While $w = 0
	;randomly click into the window (to catch some bonuses)
	ControlClick("Clicker Heroes", "", "", "left", 1, Random($x_min, $x_max, 1), Random($y_min, $y_max, 1))
	Sleep($sleep_time);
	if $ascension == 1 Then
		MouseWheel("down",10)
		ControlClick("Clicker Heroes", "", "", "left", 1, 101, 502)
	EndIf
WEnd

;---------------------------------------
;---------------------------------------
;
;FUNCTION OF THE APP DO NOT TOUCH UNLESS YOU ARE AWARE OF WHAT YOU DOING !!
;
;---------------------------------------
;---------------------------------------

;Quit the app and shows a splashText during 1s
Func Quit()
	SplashTextOn("", "End of auto Cliker !! ,  See you soon !! ", 450, 70, -1, -1, 0 + 1 + 16 + 32, "Times New Roman", 12, 800)
	Sleep(1000)
	$w = 1;
	; Fermeture du splash.
	SplashOff()
	Exit
EndFunc   ;==>Quit

;Click sometimes to keep the bonus of Juggernaut
Func Keep_bonus()
	SplashTextOn("", "Switch to keep bonus mode", 450, 70, -1, -1, 0 + 1 + 16 + 32, "Times New Roman", 12, 800)
	Sleep(1000)
	$sleep_time = $keep_mode_time;
	$ascension = 0;
	SplashOff()
EndFunc   ;==>Keep_bonus

;spam click enjoy !!
Func Run_bonus()
	SplashTextOn("", "Switch to run mode", 450, 70, -1, -1, 0 + 1 + 16 + 32, "Times New Roman", 12, 800)
	Sleep(1000)
	$sleep_time = 1;
	$ascension = 0;
	SplashOff()
EndFunc

Func Ascension()
	SplashTextOn("", "Switch to Ascension mode", 450, 70, -1, -1, 0 + 1 + 16 + 32, "Times New Roman", 12, 800)
	Sleep(1000)
	$sleep_time = 1;
	$ascension = 1;
	SplashOff()
EndFunc   ;==>Ascension

