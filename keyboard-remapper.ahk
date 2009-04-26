CoordMode Mouse, Screen
CustomColor = FF00FF  ; Can be any RGB color (it will be made transparent below).

Gui +LastFound +AlwaysOnTop -Caption +ToolWindow  ; +ToolWindow avoids a taskbar button and an alt-tab menu item.
Gui, Color, %CustomColor%
Gui, Font, s16
Gui, Font, w1000  ; Set a large font size (16-point).
Gui, Add, Text, vMyText cBlack, 1000 YYYYY  ; XX & YY serve to auto-size the window.

CapsLock::
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
;;Arrow Keys

J::
GetKeyState c, CapsLock, T
if c = D
	send {left}
else
  send {blind}{j}
return

+J::
GetKeyState c, CapsLock, T
if c = D
	send +{left}
else
  send {blind}{j}
return

^J::
GetKeyState c, CapsLock, T
if c = D
	send ^{left}
else
  send {blind}{j}
return

+^J::
GetKeyState c, CapsLock, T
if c = D
	send +^{left}
else
  send {blind}{j}
return
j::j


L::
GetKeyState c, CapsLock, T
if c = D
	send {right}
else
  send {blind}{l}
return

+L::
GetKeyState c, CapsLock, T
if c = D
	send +{right}
else
  send {blind}{l}
return

^L::
GetKeyState c, CapsLock, T
if c = D
	send ^{right}
else
  send {blind}{l}
return

+^L::
GetKeyState c, CapsLock, T
if c = D
	send +^{right}
else
  send {blind}{l}
return
l::l


K::
GetKeyState c, CapsLock, T
if c = D
	send {down}
else
  send {blind}{k}
return

+K::
GetKeyState c, CapsLock, T
if c = D
	send +{down}
else
  send {blind}{k}
return

^K::
GetKeyState c, CapsLock, T
if c = D
	send ^{down}
else
  send {blind}{k}
return

+^K::
GetKeyState c, CapsLock, T
if c = D
	send +^{down}
else
  send {blind}{k}
return
k::k


I::
GetKeyState c, CapsLock, T
if c = D
	send {up}
else
  send {blind}{i}
return

+I::
GetKeyState c, CapsLock, T
if c = D
	send +{up}
else
  send {blind}{i}
return

^I::
GetKeyState c, CapsLock, T
if c = D
	send ^{up}
else
  send {blind}{i}
return

+^I::
GetKeyState c, CapsLock, T
if c = D
	send +^{up}
else
  send {blind}{i}
return
i::i

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;
;;Home and End keys

U::
GetKeyState c, CapsLock, T
if c = D
	send {home}
else
  send {blind}{u}
return

+U::
GetKeyState c, CapsLock, T
if c = D
	send +{home}
else
  send {blind}{u}
return

^U::
GetKeyState c, CapsLock, T
if c = D
	send ^{home}
else
  send {blind}{u}
return

+^U::
GetKeyState c, CapsLock, T
if c = D
	send +^{home}
else
  send {blind}{u}
return
u::u


O::
GetKeyState c, CapsLock, T
if c = D
	send {end}
else
  send {blind}{o}
return

+O::
GetKeyState c, CapsLock, T
if c = D
	send +{end}
else
  send {blind}{o}
return

^O::
GetKeyState c, CapsLock, T
if c = D
	send ^{end}
else
  send {blind}{o}
return

+^O::
GetKeyState c, CapsLock, T
if c = D
	send +^{end}
else
  send {blind}{o}
return
o::o

P::
GetKeyState c, CapsLock, T
if c = D
	send {end}
else
  send {blind}{p}
return

+P::
GetKeyState c, CapsLock, T
if c = D
	send +{end}
else
  send {blind}{p}
return

^P::
GetKeyState c, CapsLock, T
if c = D
	send ^{end}
else
  send {blind}{p}
return

+^P::
GetKeyState c, CapsLock, T
if c = D
	send +^{end}
else
  send {blind}{p}
return
p::p
;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;
;;Backspace and Delete

M::
GetKeyState c, CapsLock, T
if c = D
	send {del}
else
  send {blind}{m}
return

^M::
GetKeyState c, CapsLock, T
if c = D
	send ^{del}
else
  send {blind}{m}
return
m::m


N::
GetKeyState c, CapsLock, T
if c = D
	send {backspace}
else
  send {blind}{n}
return

^N::
GetKeyState c, CapsLock, T
if c = D
	send ^{backspace}
else
  send {blind}{n}
return
n::n

;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;
;;Page up and Page down

F::
GetKeyState c, CapsLock, T
if c = D
	send {PgUp}
else
  send {blind}{f}
return

+F::
GetKeyState c, CapsLock, T
if c = D
	send +{PgUp}
else
  send {blind}{f}
return
f::f


V::
GetKeyState c, CapsLock, T
if c = D
	send {PgDn}
else
  send {blind}{v}
return

+V::
GetKeyState c, CapsLock, T
if c = D
	send +{PgDn}
else
  send {blind}{v}
return
v::v

;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;
;;Browser Controls

S::
GetKeyState c, CapsLock, T
if c = D
	send {Browser_Back}
else
  send {blind}{s}
return
s::s


D::
GetKeyState c, CapsLock, T
if c = D
	send {Browser_Forward}
else
  send {blind}{d}
return
d::d


Q::
GetKeyState c, CapsLock, T
if c = D
	send {Browser_Stop}
else
  send {blind}{q}
return
q::q


R::
GetKeyState c, CapsLock, T
if c = D
	send {Browser_Refresh}
else
  send {blind}{r}
return
r::r

;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Volume

B::
GetKeyState c, CapsLock, T
if c = D
	send {Volume_Mute}
else
  send {blind}{b}
return
b::b

;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Tab Modifilers


`::ShiftAltTab

;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;
;; Backspace and Delete Modifiers

Delete::
GetKeyState c, CapsLock, T
if c = D
	send ^{Delete}
else
  send {Delete}
return
Delete::Delete


Backspace::
GetKeyState c, CapsLock, T
if c = D
	send ^{Backspace}
else
  send {Backspace}
return
Backspace::Backspace

;;;;;;;;;;;;;;;;;;;;;;;;;
