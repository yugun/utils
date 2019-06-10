"-----------------------------"

" Common Configuration

"-----------------------------"

set hlsearch
set ts=4
set sw=4
set ci
set si
set ai
set nu
set vb
set list
set listchars=tab:>-,trail:-
set encoding:utf-8
syntax on
filetype on
nmap <F12> :noh<CR>
autocmd BufWritePre * :%s/\s\+$//e
set clipboard=unnamedplus

"-----------------------------"

" cscope Configuration

"-----------------------------"

set csprg=/usr/bin/cscope
set csto=0
set cst
set nocsverb
cscope add /home/yugun/linux/cscope.out /home/yugun/linux


"-----------------------------"

" Tag List Configuration

"-----------------------------"

nmap <F7> :TlistToggle<CR>
let Tlist_Use_Right_Window = 1
let Tlist_Ctags_Cmd="/usr/bin/ctags"
let Tlist_Inc_Winwidth=0
let Tlist_Exit_OnlyWindow=0
let Tlist_Auto_Open=0
let Tlist_Use_Right_Window=1
set tags=./tags
set tags+=/home/yugun/working_directory/linux-4.12.9/tags
set tags+=/usr/include/tags
set tags+=/home/yugun/working_directory/ofpvpn/kmodules/pnlib/tags
set tags+=/home/yugun/working_directory/ofpvpn/kmodules/tpmode/tags
set tags+=/home/yugun/working_directory/ofpvpn/uproxy/bcache/tags

"-----------------------------"

" Source Explorer Configuration

"-----------------------------"

nmap <F8> :SrcExplToggle<CR>
nmap <C-H> <C-W>h
nmap <C-J> <C-W>j
nmap <C-K> <C-W>k
nmap <C-L> <C-W>l
let g:SrcExpl_winHeight = 10
let g:SrcExpl_refreshTime = 100
let g:SrcExpl_jumpKey = "<ENTER>"
let g:SrcExpl_gobackKey = "<SPACE>"
"let g:SrcExpl_pluginList = [
"         \ "__Tag_List__",
"         \ "_NERD_tree_",
"         \ "Source_Explorer"
"     \ ]
let g:SrcExpl_isUpdateTags = 0


"-----------------------------"

" NERDTree Configuration

"-----------------------------"
let NERDTreeWinPos="left"
nmap <F9> :NERDTreeToggle<CR>
