call pathogen#infect()

set backspace=indent,eol,start
colorscheme molokai
syntax on
set nu
set rnu
nmap <silent> <leader>n :bp!<cr>
nmap <silent> <leader>m :bn!<cr>
nmap <silent> <C-n> :tabp<cr>
nmap <silent> <C-m> :tabn<cr>
nmap <silent> <leader>d :bd<cr>
nmap <silent> <leader>D :bd!<cr>
nmap <silent> <leader>e :NERDTreeToggle<cr>
nmap <silent> <leader>l :CtrlPBuffer<cr>
nmap <silent> <leader>r :CtrlPMRU<cr>
nmap <silent> <leader>s :CtrlP<cr>

let g:airline#extensions#tabline#enabled = 1
set laststatus=2
set guifont=Source_Code_Pro:h10:cANSI

au BufNewFile,BufRead *.cr set filetype=ruby
au FileType ruby set ts=3 sw=3 expandtab

" OmniCppComplete
set tags+=%HOMEPATH%/vimfiles/tags/cpp-stdlib
nmap <C-F5> :!ctags -R --sort=yes --c++-kinds=+p --fields=+iaS --extra=+q .<cr>
let OmniCpp_NamespaceSearch = 1
let OmniCpp_GlobalScopeSearch = 1
let OmniCpp_ShowAccess = 1
let OmniCpp_ShowPrototypeInAbbr = 1
let OmniCpp_MayCompleteDot = 1
let OmniCpp_MayCompleteArrow = 1
let OmniCpp_MayCompleteScope = 1
let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
set completeopt=menuone,menu,longest,preview
au BufNewFile,BufRead *.cpp,*.hpp set omnifunc=omni#cpp#complete#Main

