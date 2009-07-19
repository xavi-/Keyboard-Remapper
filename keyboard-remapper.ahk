CoordMode Mouse, Screen
CustomColor = 00FFFF  ; Can be any RGB color (it will be made transparent below).

Gui +LastFound +AlwaysOnTop -Caption +ToolWindow  ; +ToolWindow avoids a taskbar button and an alt-tab menu item.
Gui, Color, %CustomColor%
Gui, Font, s16
Gui, Font, w1000  ; Set a large font size (16-point).
Gui, Add, Text, vMyText cBlack, 1000 YYYYY  ; XX & YY serve to auto-size the window.


;;;;;;;;;;;;;;;;;;;;;;;
;; Mouse Move
#UseHook 
Increment = 2
MouseDelay = 0 

s:: 
d:: 
f:: 
e:: 
xVal= 
yVal= 
if GetKeyState("CapsLock","T") 
{ 
  IncrementValue := Increment        
  Loop, 
  { 
    if (A_Index > IncrementValue * 2.5) and (IncrementValue < Increment * 20)  
       IncrementValue := IncrementValue * 2
    if GetKeyState("D", "P") 
       yVal := IncrementValue 
    else if GetKeyState("E", "P") 
       yVal := -IncrementValue 
    if !yVal 
       yVal := 0 
    if GetKeyState("S", "P") 
       xVal := -IncrementValue 
    else if GetKeyState("F", "P") 
       xVal := IncrementValue 
    if !xVal 
       xVal := 0 
    if GetKeyState(A_ThisHotKey, "P")  
       MouseMove, %xVal%, %yVal%,%MouseDelay%,R 
    else  
       Break 
  } 
}
else 
   send % "{" . A_ThisHotKey . "}" 
return 

;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;
;; Show Capslock Message

*CapsLock::
GetKeyState press, CapsLock, T
if press = U
{
  SetCapsLockState On
  
  GuiControl,, MyText, Capslock on

  MouseX = 5
  MouseY = 5

  Gui, Show, x%MouseX% y%MouseY% NoActivate  ; NoActivate avoids deactivating the currently active window.
}
else
{
  Gui, Cancel
  SetCapsLockState Off
}
return

;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;
;;Arrow Keys

$*J::
if GetKeyState("Capslock", "T")
  send {blind}{left}
else
  send {blind}{j}
return

$*L::
if GetKeyState("Capslock", "T")
  send {blind}{right}
else
  send {blind}{l}
return

$*K::
if GetKeyState("Capslock", "T")
  send {blind}{down}
else
  send {blind}{k}
return

$*I::
if GetKeyState("Capslock", "T")
  send {blind}{up}
else
  send {blind}{i}
return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;
;;Home and End keys

$*U::
if GetKeyState("Capslock", "T")
  send {blind}{home}
else
  send {blind}{u}
return

$*O::
if GetKeyState("Capslock", "T")
  send {blind}{end}
else
  send {blind}{o}
return

$*P::
if GetKeyState("Capslock", "T")
  send {blind}{end}
else
  send {blind}{p}
return

;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;
;;Backspace and Delete

$*M::
if GetKeyState("Capslock", "T")
  send {blind}{del}
else
  send {blind}{m}
return

$*N::
if GetKeyState("Capslock", "T")
  send {blind}{backspace}
else
  send {blind}{n}
return

;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;
;;Page up and Page down

$G::
if GetKeyState("Capslock", "T")
  send {PgUp}
else
  send {blind}{g}
return

$+G::
if GetKeyState("Capslock", "T")
  send +{PgUp}
else
  send {blind}{g}
return


$V::
if GetKeyState("Capslock", "T")
  send {PgDn}
else
  send {blind}{v}
return

$+V::
if GetKeyState("Capslock", "T")
  send +{PgDn}
else
  send {blind}{v}
return

;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;
;;Browser Controls

$Z::
if GetKeyState("Capslock", "T")
  send {Browser_Back}
else
  send {blind}{z}
return

$X::
if GetKeyState("Capslock", "T")
  send {Browser_Forward}
else
  send {blind}{x}
return

$Q::
if GetKeyState("Capslock", "T")
  send {Browser_Stop}
else
  send {blind}{q}
return

$A::
if GetKeyState("Capslock", "T")
  send {Browser_Refresh}
else
  send {blind}{a}
return

;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Volume

$B::
if GetKeyState("Capslock", "T")
  send {Volume_Mute}
else
  send {blind}{b}
return

;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Tab Modifilers

`::ShiftAltTab

^`::send ^+{Tab}

$Tab::
if GetKeyState("Capslock", "T")
  send {blind}{Esc} 
else
  send {blind}{Tab}
return

;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;
;; Mouse Button

$*R::
if GetKeyState("Capslock", "T")
  send {blind}{LButton}
else
  send {blind}{r}
return

$W::
if GetKeyState("Capslock", "T")
  send {RButton}
else
  send {blind}{w}
return

;;;;;;;;;;;;;;;;;;;;;;;;;