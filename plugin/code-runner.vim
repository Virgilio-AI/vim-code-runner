" ------------------------------------------------------------------------------
" Exit when your app has already been loaded (or "compatible" mode set)
if exists("g:loaded_code_runner") || &cp
  finish
endif
let g:loaded_code_runner= 1 " your version number
let s:keepcpo           = &cpo
set cpo&vim

" Public Interface:
" AppFunction: is a function you expect your users to call
" PickAMap: some sequence of characters that will run your AppFunction
" Repeat these three lines as needed for multiple functions which will
" be used to provide an interface for the user
if !hasmapto('<Plug>AppFunction')
  map <unique> <F11> <Plug>AppFunction
endif

" Global Maps:
"
noremap <silent> <unique> <script> <Plug>AppFunction
 \ :set lz<CR>:call <SID>AppFunction()<CR>:set nolz<CR>

" ------------------------------------------------------------------------------
" s:AppFunction: this function is available via the <Plug>/<script> interface above
fun! s:AppFunction()
  " your script function can set up maps to internal functions
  " nnoremap <silent> <Left> :set lz<CR>:silent! call <SID>AppFunction2()<CR>

  " your app can call functions in its own script and not worry about name
  " clashes by preceding those function names with <SID>
  call s:InternalAppFunction()

  " or you could call it with
  call s:InternalAppFunction()
endfun

" ------------------------------------------------------------------------------
" s:InternalAppFunction: this function cannot be called from outside the
" script, and its name won't clash with whatever else the user has loaded
fun! s:InternalAppFunction()
	echo "calling the internal app function"
endfun

" ------------------------------------------------------------------------------
let &cpo= s:keepcpo
unlet s:keepcpo
