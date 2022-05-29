" =================================
" ========== Functions
" =================================



function! s:compileAndRunPython()
	if isdirectory('venv')
		echom " using environment"
		let l:source = 'source venv/bin/activate ;'
		let l:deactivate = 'deactivate ; '
		let l:StTerminal = ':AsyncRun st -T "floating" -g "100x50" -e sh -c "'
		let l:StTerminalCLose = ' read -n1 "'
		let l:filename = expand('%<')
		if filereadable('.ReadInputsPython.zsh') && filereadable('.RunPython.zsh')
			exe l:StTerminal . l:source . ' zsh .RunPython.zsh -1 ' . l:filename. ' ; ' . l:deactivate  . StTerminalCLose
		else
			exe l:StTerminal . ' python ' . l:filename . '.py ; ' . l:StTerminalCLose
		endif
	else
		let l:StTerminal = ':AsyncRun st -T "floating" -g "100x50" -e sh -c "'
		let l:StTerminalCLose = ' read -n1 "'
		let l:filename = expand('%<')
		if filereadable('.ReadInputsPython.zsh') && filereadable('.RunPython.zsh')
			exe l:StTerminal . ' zsh .RunPython.zsh -1 ' . l:filename. ' ; ' . StTerminalCLose
		else
			exe l:StTerminal . ' python ' . l:filename . '.py ; ' . l:StTerminalCLose
		endif
	endif


endfunction



function! s:CompileAndRunFile()
	if (&ft=='py')
		compileAndRunPython()
	else
		echo "Entered Compile And Run"
	endif
endfunction









" =================================
" ========== mappings 
" =================================


" for running the file either on the terminal
" or through multiple test cases
autocmd! BufEnter * nnoremap <F11> :call CompileAndRunFile()<cr>



" for compiling and running a project
" autocmd! BufEnter * nnoremap <F10> :call CompileAndRunProject()<CR>
" " for running a file against multiple test cases
" autocmd! BufEnter * nnoremap <F11><F11> :call InputAndRunFile()<CR>
" " for forcing the run in just one file and normal input from the terminal
" autocmd! BufEnter * nnoremap <F11><F11><F11> :call RunFileTerminalForce()<CR>
