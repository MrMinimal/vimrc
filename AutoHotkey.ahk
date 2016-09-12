#Persistent
SetCapsLockState, AlwaysOff

; Capslock + jkli (left, down, up, right)
; Right Hand
Capslock & j::Send {Blind}{Left DownTemp}
Capslock & j up::Send {Blind}{Left Up}

Capslock & k::Send {Blind}{Down DownTemp}
Capslock & k up::Send {Blind}{Down Up}

Capslock & i::Send {Blind}{Up DownTemp}
Capslock & i up::Send {Blind}{Up Up}

Capslock & l::Send {Blind}{Right DownTemp}
Capslock & l up::Send {Blind}{Right Up}

; wordwise
Capslock & u::Send {Blind}{Ctrl Down}{Left DownTemp}
Capslock & u up::Send {Blind}{Ctrl Up}{Left Up}

Capslock & o::Send {Blind}{Ctrl Down}{Right DownTemp}
Capslock & o up::Send {Blind}{Ctrl Down}{Right Up}


; Capslock home/end movement 
Capslock & h::SendInput {Blind}{Home Down}
Capslock & h up::SendInput {Blind}{Home Up}

Capslock & n::SendInput {Blind}{End Down}
Capslock & n up::SendInput {Blind}{End Up}


; Capslock left hand 
Capslock & e::SendInput {Blind}{Shift Down}{Up DownTemp}
Capslock & e up::SendInput {Blind}{Shift Up}{Up Up}

Capslock & s::SendInput {Blind}{Shift Down}{Left DownTemp}
Capslock & s up::SendInput {Blind}{Shift Up}{Left Up}

Capslock & d::SendInput {Blind}{Shift Down}{Down DownTemp}
Capslock & d up::SendInput {Blind}{Shift Up}{Down Up}

Capslock & f::SendInput {Blind}{Shift Down}{Right DownTemp}
Capslock & f up::SendInput {Blind}{Shift Up}{Right Up}

; wordwise
Capslock & w::Send {Blind}{Ctrl Down}{Shift Down}{Left DownTemp}
Capslock & w up::Send {Blind}{Ctrl Up}{Shift Up}{Left Up}

Capslock & r::Send {Blind}{Shift Down}{Ctrl Down}{Right DownTemp}
Capslock & r up::Send {Blind}{Shift Up}{Ctrl Up}{Right Up}


; Make Capslock+Space -> Enter
Capslock & Space::SendInput {Enter Down}


; Left hand home/end movement
Capslock & g::SendInput {Blind}{Shift Down}{Home Down}
Capslock & g up::SendInput {Blind}{Shift Up}{Home Up}

Capslock & v::SendInput {Blind}{Shift Down}{End Down}
Capslock & v up::SendInput {Blind}{Shift Up}{End Up}


; Make Win Key + Capslock work like Capslock
#Capslock::
If GetKeyState("CapsLock", "T") = 1
    SetCapsLockState, AlwaysOff
Else 
    SetCapsLockState, AlwaysOn
Return

return
