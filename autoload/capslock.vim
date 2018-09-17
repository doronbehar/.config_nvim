" {{{ Toggle capslock mode
function! capslock#status()
    return matchstr(system('xset -q'), '00: Caps Lock:\s\+\zs\(on\|off\)\ze')
endfunction
function! capslock#toggle()
    return system("xdotool key Caps_Lock")
endfunction
function! capslock#set()
    if capslock#status() == "off"
        return capslock#toggle()
    endif
endfunction
function! capslock#unset()
    if capslock#status() == "on"
        return capslock#toggle()
    endif
endfunction
