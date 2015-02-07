hi      clear
syntax  reset
let     background     =              "dark"
let     g:colors_name  =              "akr"

hi      Normal         gui=NONE       cterm=NONE       guifg=#F2F2F2  guibg=#171717  ctermfg=8     ctermbg=0
hi      NonText        gui=NONE       cterm=NONE       guifg=#171717  guibg=#171717  ctermfg=0     ctermbg=0
hi      LineNr         gui=NONE       cterm=NONE       guifg=#605c5a  guibg=NONE     ctermfg=7     ctermbg=NONE
hi      Cursor         gui=reverse    cterm=reverse    guifg=NONE     guibg=NONE     ctermfg=NONE  ctermbg=NONE
hi      CursorColumn   gui=NONE       cterm=NONE       guifg=NONE     guibg=#000000  ctermfg=NONE
hi      CursorLine     gui=NONE       cterm=NONE       guifg=NONE     guibg=#212121  ctermfg=NONE
hi      CursorLineNr   gui=NONE       cterm=NONE       guifg=NONE     guibg=#212121  ctermfg=NONE

hi      TabLine        gui=NONE       cterm=NONE       guifg=#909636  guibg=#171717  ctermfg=10    ctermbg=0
hi      TabLineFill    gui=NONE       cterm=NONE       guifg=NONE     guibg=#262626  ctermfg=NONE  ctermbg=0
hi      TabLineSel     gui=NONE       cterm=NONE       guifg=#171717  guibg=#909636  ctermfg=0     ctermbg=10
hi      StatusLine     gui=NONE       cterm=NONE       guifg=#909636  guibg=#212121  ctermfg=10    ctermbg=0
hi      StatusLineNC   gui=NONE       cterm=NONE       guifg=#909637  guibg=#212121  ctermfg=2     ctermbg=0
hi      VertSplit      gui=NONE       cterm=NONE       guifg=#262626  guibg=#262626  ctermfg=0     ctermbg=0
hi      Visual         gui=NONE       cterm=NONE       guifg=#E4E093  guibg=#8C3346  ctermfg=3     ctermbg=1
hi      VisualNOS      gui=NONE       cterm=NONE       guifg=NONE     guibg=NONE     ctermfg=NONE  ctermbg=NONE

hi      Pmenu          gui=NONE       cterm=NONE       guifg=NONE     guibg=#000000  ctermfg=NONE  ctermbg=0
hi      PmenuSbar      gui=NONE       cterm=NONE       guifg=NONE     guibg=#262626  ctermfg=NONE
hi      PmenuSel       gui=NONE       cterm=NONE       guifg=NONE     guibg=#333333  ctermfg=NONE
hi      PmenuThumb     gui=NONE       cterm=NONE       guifg=NONE     guibg=#424242  ctermfg=NONE
hi      DiffAdd        gui=NONE       cterm=NONE       guifg=NONE     guibg=#082608  ctermfg=NONE
hi      DiffChange     gui=NONE       cterm=NONE       guifg=NONE     guibg=#000000  ctermfg=NONE  ctermbg=0
hi      DiffDelete     gui=NONE       cterm=NONE       guifg=NONE     guibg=#260808  ctermfg=NONE
hi      DiffText       gui=NONE       cterm=NONE       guifg=NONE     guibg=#333333  ctermfg=NONE
hi      Search         gui=NONE       cterm=NONE       guifg=#171717  guibg=#909636  ctermfg=0     ctermbg=10
hi      IncSearch      gui=NONE       cterm=NONE       guifg=#171717  guibg=#909636  ctermfg=0     ctermbg=10

hi      Comment        gui=italic     cterm=italic     guifg=#F2F2F2  guibg=NONE     ctermfg=8     ctermbg=NONE
hi      Type           gui=NONE       cterm=NONE       guifg=#aadb0f  guibg=NONE     ctermfg=2     ctermbg=NONE
hi      Boolean        gui=NONE       cterm=NONE       guifg=#aadb0f  guibg=NONE     ctermfg=2     ctermbg=NONE
hi      String         gui=NONE       cterm=NONE       guifg=#aadb0f  guibg=NONE     ctermfg=2     ctermbg=NONE
hi      Number         gui=NONE       cterm=NONE       guifg=#aadb0f  guibg=NONE     ctermfg=2     ctermbg=NONE
hi      Title          gui=bold       cterm=bold       guifg=#aadb0f  guibg=NONE     ctermfg=2     ctermbg=NONE
hi      Todo           gui=standout   cterm=standout   guifg=NONE     guibg=NONE     ctermfg=NONE  ctermbg=NONE
hi      Constant       gui=italic     cterm=italic     guifg=#F2F2F2  guibg=NONE     ctermfg=8     ctermbg=NONE
hi      Identifier     gui=bold       cterm=bold       guifg=#F2F2F2  guibg=#171717  ctermfg=8     ctermbg=0
hi      Statement      gui=bold       cterm=bold       guifg=#aadb0f  guibg=NONE     ctermfg=2     ctermbg=NONE
hi      StorageClass   gui=bold       cterm=bold       guifg=#aadb0f  guibg=NONE     ctermfg=2     ctermbg=NONE
hi      Conditional    gui=bold       cterm=bold       guifg=#aadb0f  guibg=NONE     ctermfg=2     ctermbg=NONE
hi      MatchParen     gui=bold       cterm=bold       guifg=NONE     guibg=NONE     ctermfg=NONE  ctermbg=NONE

hi      Special        gui=NONE       cterm=NONE       guifg=#808080  guibg=NONE     ctermfg=8     ctermbg=NONE
hi      SpecialKey     gui=bold       cterm=bold       guifg=#212121  guibg=NONE     ctermfg=0     ctermbg=NONE

hi      xmlTagName     gui=NONE       cterm=NONE       guifg=#F2F2F2  guibg=NONE     ctermfg=8     ctermbg=NONE
hi      xmlEndTag      gui=NONE       cterm=NONE       guifg=#F2F2F2  guibg=NONE     ctermfg=8     ctermbg=NONE
hi      xmlNamespace   gui=bold       cterm=bold       guifg=#F2F2F2  guibg=NONE     ctermfg=8     ctermbg=NONE
hi      xmlAttrib      gui=NONE       cterm=NONE       guifg=#F2F2F2  guibg=NONE     ctermfg=8     ctermbg=NONE

hi      ColorColumn    gui=NONE       cterm=NONE       guifg=NONE     guibg=#000000
hi      Conceal        gui=NONE       cterm=NONE       guifg=#808080  guibg=NONE
hi      Directory      gui=NONE       cterm=NONE       guifg=#F2F2F2  guibg=NONE     ctermfg=8
hi      Error          gui=NONE       cterm=NONE       guifg=NONE     guibg=#8C3346  ctermfg=NONE  ctermbg=1
hi      ErrorMsg       gui=NONE       cterm=NONE       guifg=NONE     guibg=#8C3346  ctermfg=NONE  ctermbg=1
hi      FoldColumn     gui=NONE       cterm=NONE       guifg=#616161  guibg=NONE
hi      Folded         gui=NONE       cterm=NONE       guifg=#707070  guibg=NONE
hi      Ignore         gui=NONE       cterm=NONE       guifg=NONE     guibg=NONE     ctermfg=NONE  ctermbg=NONE
hi      ModeMsg        gui=NONE       cterm=NONE       guifg=NONE     guibg=NONE     ctermfg=NONE  ctermbg=NONE
hi      MoreMsg        gui=NONE       cterm=NONE       guifg=NONE     guibg=NONE     ctermfg=NONE  ctermbg=NONE
hi      Question       gui=NONE       cterm=NONE       guifg=NONE     guibg=NONE     ctermfg=NONE  ctermbg=NONE
hi      SignColumn     gui=NONE       cterm=NONE       guifg=#616161  guibg=NONE
hi      Underlined     gui=NONE       cterm=NONE       guifg=NONE     guibg=NONE     ctermfg=NONE  ctermbg=NONE
hi      WarningMsg     gui=NONE       cterm=NONE       guifg=NONE     guibg=#260808
hi      WildMenu       gui=NONE       cterm=NONE       guifg=NONE     guibg=#525252
hi      lCursor        gui=NONE       cterm=NONE       guifg=NONE     guibg=NONE     ctermfg=NONE  ctermbg=NONE
hi      PreProc        gui=NONE       cterm=NONE       guifg=NONE     guibg=NONE     ctermfg=NONE  ctermbg=NONE

hi      SpellBad       gui=undercurl  cterm=undercurl  guifg=NONE     guibg=#260808  ctermfg=NONE
hi      SpellCap       gui=undercurl  cterm=undercurl  guifg=NONE     guibg=NONE     ctermfg=NONE  ctermbg=NONE
hi      SpellLocal     gui=undercurl  cterm=undercurl  guifg=NONE     guibg=#082608  ctermfg=NONE
hi      SpellRare      gui=undercurl  cterm=undercurl  guifg=NONE     guibg=#262626  ctermfg=NONE
