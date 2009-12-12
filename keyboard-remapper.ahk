CoordMode Mouse, Screen
CustomColor = 00FFFF  ; Can be any RGB color (it will be made transparent below).

Gui +LastFound +AlwaysOnTop -Caption +ToolWindow  ; +ToolWindow avoids a taskbar button and an alt-tab menu item.
Gui, Color, %CustomColor%
Gui, Font, s16
Gui, Font, w1000  ; Set a large font size (16-point).
Gui, Add, Text, vMyText cBlack, 1000 YYYYY  ; XX & YY serve to auto-size the window.

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

$T::
if GetKeyState("Capslock", "T")
  send {PgUp}
else
  send {blind}{t}
return

$+T::
if GetKeyState("Capslock", "T")
  send {blind}{PgUp}
else
  send {blind}{t}
return

$G::
if GetKeyState("Capslock", "T")
  send {PgDn}
else
  send {blind}{g}
return

$+G::
if GetKeyState("Capslock", "T")
  send {blind}{PgDn}
else
  send {blind}{g}
return

;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;
;;Browser Controls

$H::
if GetKeyState("Capslock", "T")
  send {Browser_Back}
else
  send {blind}{h}
return

$;::
if GetKeyState("Capslock", "T")
  send {Browser_Forward}
else
  send {blind}{;}
return

$Y::
if GetKeyState("Capslock", "T")
  send {Browser_Refresh}
else
  send {blind}{y}
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

^`::send {blind}+{Tab}

;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;
;; Override Esc

$Q::
if GetKeyState("Capslock", "T")
  send {blind}{Esc} 
else
  send {blind}{q}
return

;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;
;; Mouse Button

$*,::
if GetKeyState("Capslock", "T")
  send {blind}{LButton}
else
  send {blind}{,}
return

;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;
;; Number Pad

$A::
if GetKeyState("Capslock", "T")
  send {blind}{0} 
else
  send {blind}{a}
return


$W::
if GetKeyState("Capslock", "T")
  send {blind}{1} 
else
  send {blind}{w}
return

$S::
if GetKeyState("Capslock", "T")
  send {blind}{2} 
else
  send {blind}{s}
return

$X::
if GetKeyState("Capslock", "T")
  send {blind}{3}
else
  send {blind}{x}
return

$E::
if GetKeyState("Capslock", "T")
  send {blind}{4} 
else
  send {blind}{e}
return

$D::
if GetKeyState("Capslock", "T")
  send {blind}{5} 
else
  send {blind}{d}
return

$C::
if GetKeyState("Capslock", "T")
  send {blind}{6} 
else
  send {blind}{c}
return

$R::
if GetKeyState("Capslock", "T")
  send {blind}{7} 
else
  send {blind}{r}
return

$F::
if GetKeyState("Capslock", "T")
  send {blind}{8} 
else
  send {blind}{f}
return

$V::
if GetKeyState("Capslock", "T")
  send {blind}{9} 
else
  send {blind}{v}
return


;;;;;;;;;;;;;;;;;;;;;;;;;
