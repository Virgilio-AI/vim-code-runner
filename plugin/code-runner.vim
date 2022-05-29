" =================================
" ========== Functions
" =================================
function! CompileAndRunFile()
	echo "Entered Compile And Run"
endfunction









" =================================
" ========== mappings 
" =================================


" for running the file either on the terminal
" or through multiple test cases
autocmd! BufEnter * nnoremap <F11> :call CompileAndRunFile()



" for compiling and running a project
" autocmd! BufEnter * nnoremap <F10> CompileAndRunProject()
" " for running a file against multiple test cases
" autocmd! BufEnter * nnoremap <F11><F11> InputAndRunFile()
" " for forcing the run in just one file and normal input from the terminal
" autocmd! BufEnter * nnoremap <F11><F11><F11> RunFileTerminalForce()
