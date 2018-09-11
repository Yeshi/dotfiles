colorscheme desert
"set transparency=5

if has('multi_byte_ime') || has('xim') || has('gui_macvim')
  highlight Cursor guifg=NONE guibg=Green
  highlight CursorIM guifg=NONE guibg=Purple
endif

if has('Gui_macvim')
  set guifont=Osaka-Mono:h18
elseif has('mac')
  set guifont=Osaka-等幅:h18
endif

