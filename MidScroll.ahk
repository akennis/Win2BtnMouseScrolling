#SingleInstance Force

scrollThreshold := 8
comboActive := false
lastX := 0
lastY := 0

~LButton & RButton::StartScroll()
~RButton & LButton::StartScroll()

LButton Up::StopScroll()
RButton Up::StopScroll()

StartScroll() {
    global comboActive, lastX, lastY
    if (!comboActive) {
        comboActive := true
        
        ; Release the mouse down state and click to clear text selection immediately
        Send("{LButton Up}")
        Click
        
        MouseGetPos(&lastX, &lastY)
        SetTimer(WatchScroll, 10)
    }
}

StopScroll() {
    global comboActive
    if (comboActive) {
        comboActive := false
        SetTimer(WatchScroll, 0)
    }
}

WatchScroll() {
    global lastX, lastY, scrollThreshold
    MouseGetPos(&curX, &curY)
    dy := curY - lastY
    dx := curX - lastX

    if (Abs(dy) >= scrollThreshold) {
        if (dy < 0)
            Send("{WheelUp}")
        else
            Send("{WheelDown}")
        lastY := curY
    }
    if (Abs(dx) >= scrollThreshold) {
        if (dx < 0)
            Send("{WheelLeft}")
        else
            Send("{WheelRight}")
        lastX := curX
    }

    MouseMove(lastX, lastY, 0)
}