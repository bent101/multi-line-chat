global delay = 1000

q::
    Loop {
        FileReadLine, line, %A_ScriptDir%\messages.txt, %A_Index%
        if ErrorLevel {
            break
        }
        Clipboard = %line%
        SendInput, ^v {Enter}
        Sleep, %delay%
    }
    return

+q::
    Loop {
        Loop {
            FileReadLine, line, %A_ScriptDir%\messages.txt, %A_Index%
            if ErrorLevel {
                break
            }
            Clipboard = %line%
            SendInput, ^v {Enter}
            Sleep, %delay%
        }
    }
    return

Esc:: Reload

+Esc:: ExitApp