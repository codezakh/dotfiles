execute pathogen#infect()
syntax on
filetype plugin indent on
set number
set background=dark
colorscheme gruvbox 
set rtp^="/Users/zaidkhan/.opam/system/share/ocp-indent/vim
set rtp+=/Users/zaidkhan/.opam/system/share/merlin/vim
set omnifunc=syntaxcomplete#Complete
set tags=tags;/
augroup vimrc_autocmds
	autocmd BufEnter * highlight OverLength ctermbg=darkgrey guibg=#DF0101
	autocmd BufEnter * match OverLength /\%75v.*/
augroup END
let g:indent_guides_enable_on_vim_startup = 1
set ts=4 sw=4 et
let g:indent_guides_guide_size = 1
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd guibg=#573847 ctermbg=3
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=#8A6D60 ctermbg=4
autocmd VimEnter * IndentGuidesEnable
