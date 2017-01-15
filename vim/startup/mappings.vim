" Mappings

"Kill the arrow keys to force practice with hjkl
no <up> <Nop>
no <down> <Nop>
no <left> <Nop>
no <right> <Nop>
ino <up> <Nop>
ino <down> <Nop>
ino <left> <Nop>
ino <right> <Nop>

" Map jk to ESC for easy hand-positioning
ino jk <esc>

"" F-Keys Mapping
" Toggle paste mode
set pastetoggle=<F2>

" toggle hlsearch
nmap <silent> <F3> :set nohlsearch!<CR>
imap <silent> <F3> <c-o>:set nohlsearch!<CR>

" Strip whitespace
noremap <leader>ss :call StripWhitespace()<CR>

" Toggle Syntax Highlighting
nnoremap <F4> :call ToggleSyntax()<CR>

" Switch between conventional/relative numbering
noremap <leader>rn :call ToggleNumbering()<CR>

" Toggle Gitgutter
nnoremap <F9> :GitGutterToggle<CR>

" YouCompleteMe mappings
nnoremap <F12> :YcmForceCompileAndDiagnostics<CR>
nnoremap <leader>jd :YcmCompleter GoTo<CR>

" Open Nerdtree in new tab
nn <Leader>h :tabnew %:h<CR>

" Tab handling shortcuts
nn <C-Tab> :tabnext<CR>
nn <C-S-Tab> :tabprevious<CR>
no <C-S-Tab> :tabprevious<CR>
no <C-Tab> :tabnext<CR>
ino <C-S-Tab> <ESC>:tabprevious<CR>
ino <C-Tab> <ESC>:tabnext<CR>

" Open and source .vimrc and startup scripts
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>em :vsplit ~/.vim/startup/mappings.vim<cr>
nnoremap <leader>es :vsplit ~/.vim/startup/settings.vim<cr>
nnoremap <leader>ep :vsplit ~/.vim/startup/plugins.vim<cr>

"Nerd Tree
nnoremap <leader>nt :NERDTreeToggle<cr>

