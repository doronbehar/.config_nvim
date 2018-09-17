if expand('$DISPLAY') !=# '$DISPLAY'
  au InsertLeave * call capslock#unset()
endif
