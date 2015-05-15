#cs ----------------------------------------------------------------------------

	AutoIt Version : 3.3.8.1
	Auteur:         MonNom

	Fonction du Script :
	Modèle de Script AutoIt.

#ce ----------------------------------------------------------------------------

; Début du script - Ajouter votre code ci-dessous.


HotKeySet("!a", "Quit") ;Alt-a
HotKeySet("!c", "Maintien_bonus") ;Alt-c
HotKeySet("!r", "Run_bonus") ;Alt-r
$w = 0 ;variable pour finir la boucle
;MsgBox(1,"Script", "début du script Start", 5) ;information de depart

$x_min = 661
$y_min = 120

$x_max = 1050
$y_max = 550

$sleep_time = 1;


;tout dessous est useless =)
While $w = 0

	ControlClick("Clicker Heroes", "", "", "left", 1, Random($x_min, $x_max, 1), Random($y_min, $y_max, 1))
	Sleep($sleep_time);
WEnd

MsgBox(1, "Script", "le script prend fin", 1) ;information de fin


Func Quit()
	SplashTextOn("", "Fermeture du script en cours,  Veuillez patienter ...", 450, 70, -1, -1, 0 + 1 + 16 + 32, "Times New Roman", 12, 800)

	; Pause de 3 secondes.
	Sleep(1000)
	$w = 1;
	; Fermeture du splash.
	SplashOff()

	Exit
EndFunc   ;==>Quit

Func Maintien_bonus()
	SplashTextOn("", "Switch to mode maintien", 450, 70, -1, -1, 0 + 1 + 16 + 32, "Times New Roman", 12, 800)

	; Pause de 3 secondes.
	Sleep(1000)
	$sleep_time = 5000;
	; Fermeture du splash.
	SplashOff()
EndFunc   ;==>Maintien_bonus

Func Run_bonus()
	SplashTextOn("", "Switch to mode Run", 450, 70, -1, -1, 0 + 1 + 16 + 32, "Times New Roman", 12, 800)

	; Pause de 3 secondes.
	Sleep(1000)
	$sleep_time = 1;
	; Fermeture du splash.
	SplashOff()
EndFunc   ;==>Run

