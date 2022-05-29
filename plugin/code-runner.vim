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

" for forcing std input on a code run
if !hasmapto('<Plug>CompileAndRunForceStdInput')
  map <unique> <F11><F11><F11> <Plug>CompileAndRunForceStdInput
endif

" compile and run a whole project
if !hasmapto('<Plug>CompileAndRunProject')
  map <unique> <F10> <Plug>CompileAndRunProject
endif


" compile and run a whole project
if !hasmapto('<Plug>CreateEnvironment')
  map <unique> <F5> <Plug>CreateEnvironment
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


noremap <silent> <unique> <script> <Plug>CompileAndRunForceStdInput
 \ :call <SID>CompileAndRunForceStdInput()<CR>


noremap <silent> <unique> <script> <Plug>CompileAndRunProject
 \ :call <SID>CompileAndRunProject()<CR>


noremap <silent> <unique> <script> <Plug>CreateEnvironment
 \ :call <SID>CreateEnvironment()<CR>






" ------------------------------------------------------------------------------
" Global Functions: here are the global functions that will call all the other
" local functions
" Example:
" fun! s:AppFunction()
"   call s:InternalAppFunction()
"   call s:InternalAppFunction()
" endfun



fun! s:CompileAndRun()

	if (&ft == 'python')
	elseif (&ft == 'markdown')
	elseif (&ft == 'cpp')
	elseif (&ft == 'c')
	elseif (&ft == 'tex' || &ft == 'plaintex')
	elseif (&ft == 'sh')
	elseif (&ft == 'elm')
	elseif (&ft == 'r')
	elseif (&ft == 'zsh')
	elseif (&ft == 'cs')
	elseif (&ft == 'sql')
	elseif (&ft == 'html')
	endif
endfun



fun! s:CompileAndRunInput()
	if (&ft == 'python')
		call s:test()
	elseif (&ft == 'markdown')
	elseif (&ft == 'cpp')
	elseif (&ft == 'c')
	elseif (&ft == 'tex' || &ft == 'plaintex')
	elseif (&ft == 'sh')
	elseif (&ft == 'elm')
	elseif (&ft == 'r')
	elseif (&ft == 'zsh')
	elseif (&ft == 'cs')
	elseif (&ft == 'sql')
	elseif (&ft == 'html')
	endif
endfun

fun! s:CompileAndRunForceStdInput()
	if (&ft == 'python')
	elseif (&ft == 'markdown')
	elseif (&ft == 'cpp')
	elseif (&ft == 'c')
	elseif (&ft == 'tex' || &ft == 'plaintex')
	elseif (&ft == 'sh')
	elseif (&ft == 'elm')
	elseif (&ft == 'r')
	elseif (&ft == 'zsh')
	elseif (&ft == 'cs')
	elseif (&ft == 'sql')
	elseif (&ft == 'html')
	endif
endfun

fun! s:CompileAndRunProject()
	if (&ft == 'python')
	elseif (&ft == 'markdown')
	elseif (&ft == 'cpp')
	elseif (&ft == 'c')
	elseif (&ft == 'tex' || &ft == 'plaintex')
	elseif (&ft == 'sh')
	elseif (&ft == 'elm')
	elseif (&ft == 'r')
	elseif (&ft == 'zsh')
	elseif (&ft == 'cs')
	elseif (&ft == 'sql')
	elseif (&ft == 'html')
	endif
endfun

fun! s:CreateEnvironment()
	if (&ft == 'python')
	elseif (&ft == 'markdown')
	elseif (&ft == 'cpp')
	elseif (&ft == 'c')
	elseif (&ft == 'tex' || &ft == 'plaintex')
	elseif (&ft == 'sh')
	elseif (&ft == 'elm')
	elseif (&ft == 'r')
	elseif (&ft == 'zsh')
	elseif (&ft == 'cs')
	elseif (&ft == 'sql')
	elseif (&ft == 'html')
	endif
endfun

" ------------------------------------------------------------------------------
" Internal Functions: these are the internal functions that cannot be accesed
" outside of the script
" Example:
" fun! s:InternalAppFunction()
" 	echo "calling the internal app function"
" endfun
fun! s:test()
	echo "calling the internal app function"
	echo 'source ' . expand('%:p:h') . '/CompileAndRunFunctions.vim'
endfun

" ------------------------------------------------------------------------------
let &cpo= s:keepcpo
unlet s:keepcpo
