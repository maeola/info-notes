= Setup
== Vim bindings
```vim
syntax on
filetype indent on

set mouse=a
set number
set numberwidth=6

let mapleader=' '
au filetype cpp nnoremap <buffer> <leader>c :up<cr>:!g++ -std=gnu++20 -DDEBUG -O2 -Wall -Wextra -Wshadow "%" -o "%:r"<cr>
au filetype cpp nnoremap <buffer> <leader><leader> :vsplit<cr><c-w>w:term "./%:r"<cr>
```
