nnoremap U :vsc Edit.Redo<cr>
nnoremap [j :vsc View.NavigateBackward<cr>
nnoremap ]j :vsc View.NavigateForward<cr>
nnoremap gi :vsc Edit.GoToImplementation<cr>
nnoremap gr :vsc Edit.FindAllReferences<cr>

vnoremap J :vsc Edit.MoveSelectedLinesDown<cr>
vnoremap K :vsc Edit.MoveSelectedLinesUp<cr>

set ignorecase
set incsearch
set nohlsearch
set number
set relativenumber
set smartcase
