if !exists('g:loaded_ctrlp') 
	finish 
endif

set wildignore+=*\\tmp\\*,*\\node_modules\\*,*.swp,*.zip,*.exe,*.pdb  " Windows
set wildignore+=*/tmp/*,*/node_modules/*,*.so,*.swp,*.zip     " MacOSX/Linux

let g:ctrlp_show_hidden = 1
