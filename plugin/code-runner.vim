" ------------------------------------------------------------------------------
" Exit when your app has already been loaded (or "compatible" mode set)
if exists("g:loaded_code_runner") || &cp
  finish
endif
let g:loaded_code_runner= 1 " your version number
let s:keepcpo           = &cpo
set cpo&vim

" Public Interface:
" This are the default mappings
" Example:
" if !hasmapto('<Plug>AppFunction')
"   map <unique> <F11> <Plug>AppFunction
" endif

" for compile and run file, std input or custom files
if !hasmapto('<Plug>CompileAndRun')
  map <unique> <F11> <Plug>CompileAndRun
endif

" for compile and run file, input from custom files
if !hasmapto('<Plug>CompileAndRunInput')
  map <unique> <F11><F11> <Plug>CompileAndRunInput
endif


" Global Maps:
"
" Example:
"
" noremap <silent> <unique> <script> <Plug>AppFunction
"  \ :call <SID>AppFunction()<CR>


noremap <silent> <unique> <script> <Plug>CompileAndRun
 \ :call <SID>CompileAndRun()<CR>

noremap <silent> <unique> <script> <Plug>CompileAndRunInput
 \ :call <SID>CompileAndRunInput()<CR>




" ------------------------------------------------------------------------------
" Global Functions: here are the global functions that will call all the other
" local functions
" Example:
" fun! s:AppFunction()
"   call s:InternalAppFunction()
"   call s:InternalAppFunction()
" endfun



fun! s:CompileAndRun()
	echo &ft
	if &filetype ==# 'python'
		echo "correct"
	endif

	if (&ft == 'python')
		echo "running on python file"
	else
		echo "running on generic file"
	endif
endfun



fun! s:CompileAndRunInput()
	if (&ft == 'py')
		echo "running on python file"
	else
		echo "running on generic file"
	endif
endfun

" ------------------------------------------------------------------------------
" Internal Functions: these are the internal functions that cannot be accesed
" outside of the script
" Example:
" fun! s:InternalAppFunction()
" 	echo "calling the internal app function"
" endfun

" ------------------------------------------------------------------------------
let &cpo= s:keepcpo
unlet s:keepcpo
