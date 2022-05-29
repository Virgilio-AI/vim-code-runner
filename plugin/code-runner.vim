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
		call s:CAR_Python()
	elseif (&ft == 'markdown')
		call s:CAR_Markdown()
	elseif (&ft == 'cpp')
		call s:CAR_C_CPP("g++")
	elseif (&ft == 'c')
		call s:CAR_C_CPP("gcc")
	elseif (&ft == 'tex' || &ft == 'plaintex')
		call s:CAR_Latex()
	elseif (&ft == 'sh')
		call s:CAR_Bash()
	elseif (&ft == 'elm')
		call s:CAR_Elm()
	elseif (&ft == 'r')
		call s:CAR_R()
	elseif (&ft == 'zsh')
		call s:CAR_Zsh()
	elseif (&ft == 'cs')
		call s:CAR_cs()
	elseif (&ft == 'sql')
		call s:CAR_Sql()
	elseif (&ft == 'html')
		call s:CAR_Html()
	endif
endfun



fun! s:CompileAndRunInput()
	if (&ft == 'python')
		call s:CARI_Python()
	elseif (&ft == 'cpp')
		call s:CARI_Cpp()
	elseif (&ft == 'c')
		echo "feature not available yet or there is no practical use in it"
	elseif (&ft == 'sh')
		echo "feature not available yet or there is no practical use in it"
	elseif (&ft == 'elm')
		echo "feature not available yet or there is no practical use in it"
	elseif (&ft == 'r')
		echo "feature not available yet or there is no practical use in it"
	elseif (&ft == 'zsh')
		echo "feature not available yet or there is no practical use in it"
	elseif (&ft == 'cs')
		echo "feature not available yet or there is no practical use in it"
	elseif (&ft == 'sql')
		echo "feature not available yet or there is no practical use in it"
	endif
endfun

fun! s:CompileAndRunForceStdInput()
	if (&ft == 'python')
		call s:CARFSI_Python()
	elseif (&ft == 'cpp')
		echo "feature not available yet or there is no practical use in it"
	elseif (&ft == 'c')
		echo "feature not available yet or there is no practical use in it"
	elseif (&ft == 'sh')
		echo "feature not available yet or there is no practical use in it"
	elseif (&ft == 'elm')
		echo "feature not available yet or there is no practical use in it"
	elseif (&ft == 'r')
		echo "feature not available yet or there is no practical use in it"
	elseif (&ft == 'zsh')
		echo "feature not available yet or there is no practical use in it"
	elseif (&ft == 'cs')
		echo "feature not available yet or there is no practical use in it"
	elseif (&ft == 'sql')
		echo "feature not available yet or there is no practical use in it"
	endif
endfun

fun! s:CompileAndRunProject()
	if (&ft == 'python')
	elseif (&ft == 'markdown')
		echo "feature not available yet or there is no practical use in it"
	elseif (&ft == 'cpp')
		echo "feature not available yet or there is no practical use in it"
	elseif (&ft == 'c')
		echo "feature not available yet or there is no practical use in it"
	elseif (&ft == 'tex' || &ft == 'plaintex')
		call s:CARP_Latex()
	elseif (&ft == 'sh')
		echo "feature not available yet or there is no practical use in it"
	elseif (&ft == 'elm')
		echo "feature not available yet or there is no practical use in it"
	elseif (&ft == 'r')
		echo "feature not available yet or there is no practical use in it"
	elseif (&ft == 'zsh')
		echo "feature not available yet or there is no practical use in it"
	elseif (&ft == 'cs')
		echo "feature not available yet or there is no practical use in it"
	elseif (&ft == 'sql')
		echo "feature not available yet or there is no practical use in it"
	elseif (&ft == 'html')
		echo "feature not available yet or there is no practical use in it"
	endif
endfun

fun! s:CreateEnvironment()
	if (&ft == 'python')
		call s:CE_Python()
	elseif (&ft == 'markdown')
		echo "feature not available yet or there is no practical use in it"
	elseif (&ft == 'cpp')
		echo "feature not available yet or there is no practical use in it"
	elseif (&ft == 'c')
		echo "feature not available yet or there is no practical use in it"
	elseif (&ft == 'tex' || &ft == 'plaintex')
		echo "feature not available yet or there is no practical use in it"
	elseif (&ft == 'sh')
		echo "feature not available yet or there is no practical use in it"
	elseif (&ft == 'elm')
		echo "feature not available yet or there is no practical use in it"
	elseif (&ft == 'r')
		echo "feature not available yet or there is no practical use in it"
	elseif (&ft == 'zsh')
		echo "feature not available yet or there is no practical use in it"
	elseif (&ft == 'cs')
		echo "feature not available yet or there is no practical use in it"
	elseif (&ft == 'sql')
		echo "feature not available yet or there is no practical use in it"
	elseif (&ft == 'html')
		echo "feature not available yet or there is no practical use in it"
	endif
endfun

" ------------------------------------------------------------------------------
" Internal Functions: these are the internal functions that cannot be accesed
" outside of the script
" Example:
" fun! s:InternalAppFunction()
" 	echo "calling the internal app function"
" endfun


" =================================
" ========== Compile And Run functions 
" =================================

fun! s:CAR_Markdown()

	let l:ExecuteCommands = ':AsyncRun st -T "floating" -e sh -c '
	let l:FileName = expand("%")

	let l:Temp = expand("%<")
	let l:Name = ""

	let l:chars = split(l:Temp,'\zs')
	let l:strlen = len(l:Temp)
	let l:cont =0
	while l:cont < l:strlen
		if l:cont != 0 || l:chars[l:cont] != '.'
			let l:Name = l:Name . l:chars[l:cont]
		endif
		let l:cont = l:cont + 1
	endwhile

	let l:CreatePandoc = 'pandoc ' . l:FileName. ' -t beamer -o ' . l:Name . '.pdf ; '
	let l:OpenPandoc = ' zathura ' . l:Name . '.pdf '
	exe l:ExecuteCommands . '"' . l:CreatePandoc . l:OpenPandoc . ' ; read -n1 ' . '"'

endfun




function! Helper_CompileAndRunCppDefault(RunCommand)
	exe ':AsyncRun st -T "floating" -e sh -c "' . a:RunCommand . ' %:p -o %< && ./%< ; read -n1 "'
endfunction

function! Helper_CompileAndRunCppForCompetition(RunCommand)
	if filereadable("runcpp.sh")
		exe ':AsyncRun sh runcpp.sh '
	else
		if filereadable("In.txt")
			exe ':AsyncRun st -T "floating" -e sh -c "' . a:RunCommand . ' %:p -o %< && ./%< < In.txt ; read -n1 "'
		else
			exe ':AsyncRun st -T "floating" -e sh -c " nvim In.txt ; ' . a:RunCommand . ' %:p -o %< && ./%< < In.txt ; read -n1"'
		endif
	endif
endfunction


function! Helper_CompileAndRunCppForNcurses(RunCommand)
	exe ':AsyncRun st -T "floating" -e sh -c " ' . a:RunCommand . ' -lncurses %:p -o %<_nc && ./%<_nc ; read -n1"'
endfunction



fun! s:CAR_C_CPP(RunCommand)
	:w!
	if filereadable("In.txt") || filereadable("runcpp.sh")
		:call Helper_CompileAndRunCppForCompetition(a:RunCommand)
	else
		if filereadable("%<_nc")
			:call Helper_CompileAndRunCppForNcurses(a:RunCommand)
			return
		endif
		let tempChar = input("(c)ompetition-(n)curses-(d)efault: ")
		if tempChar == "c"
			:call Helper_CompileAndRunCppForCompetition(a:RunCommand)
		elseif tempChar == "d"
			:call Helper_CompileAndRunCppDefault(a:RunCommand)
		else
			:call Helper_CompileAndRunCppForNcurses(a:RunCommand)
		endif
	endif
endfun


fun! s:CAR_Latex()
	:w!
	if filereadable('tempFileForConfig.tex')
		echo "there is a tempFileForConfig.tex in the folder, the binding wont work until you delete it"
		return
	endif
	let l:OpenTerminal = 'AsyncRun st -T "floating" -e sh -c '
	let l:CopyConfigFileToCurrentPath = ' cp ~/.config/nvim/runFileConfigurations/configuration.tex . ; '
	let l:CopyFileToMainTex = 'cp ' . b:FileNameNoExtension . '.tex tempFileForConfig.tex ; '
	let l:RunPdfLatex = ' pdflatex --shell-escape configuration.tex ; '
	let l:ChangeNamePdf = ' mv configuration.pdf ' . b:FileNameNoExtension . '.pdf ; '
	let l:removeJunkFiles = ' rm -rfd tempFileForConfig.tex configuration.* _minted-configuration ; '
	let l:OpenPdf = ' zathura ' . b:FileNameNoExtension . '.pdf'
	exe l:OpenTerminal . '"' . l:CopyConfigFileToCurrentPath . l:CopyFileToMainTex . l:RunPdfLatex . l:RunPdfLatex .  l:ChangeNamePdf . l:removeJunkFiles . l:OpenPdf  . '"'
endfun




fun! s:CAR_Bash()
	:w!
	:AsyncRun st -T "floating" -e sh -c "sh %:p ; read -n1"
endfun



function! s:Helper_CompileToJavaScript()
	let l:ExecuteCommands = ':AsyncRun st -e sh -c '
	let l:CdRootDir = 'cd $(git rev-parse --show-toplevel) ; '
	let l:CompileToJavascript = 'elm make src/Main.elm --output app.js ; '
	let l:RunHtml = 'brave index.html'
	if system('git status | grep fatal') == 'fatal'
		echo "fatal not a git repo"
		return
	endif
	exe l:ExecuteCommands . '"' . l:CdRootDir . l:CompileToJavascript . "read -n1 ; " . l:RunHtml . '"'
endfunction

function! s:Helper_CompileAndRunElm()
	let l:ExecuteCommands = ':AsyncRun st -e sh -c '
	let l:CdRootDir = 'cd $(git rev-parse --show-toplevel) ; '
	let l:CompileElm = 'elm make src/Main.elm ; '
	let l:CompileToJavascript = 'elm make src/Main.elm --output app.js ; '
	let l:RunHtml = 'brave index.html'
	if system('git status | grep fatal') == 'fatal'
		echo "fatal not a git repo"
	else
		if filereadable('../app.js')
			exe l:ExecuteCommands . '"' . l:CdRootDir . l:CompileToJavascript . "read -n1 ; " . l:RunHtml . '"'
		else
			exe l:ExecuteCommands . '"' . l:CdRootDir . l:CompileElm . "read -n1 ; " . l:RunHtml . '"'
		endif
	endif
endfunction


fun! s:CAR_Elm()
	let ans = input("Compile to javascript?(Y,n)")
	if ans == "" || ans == "y"
		call s:Helper_CompileToJavaScript()
	else
		call s:Helper_CompileAndRunElm()
	endif
endfun





fun! s:CAR_R()
	let l:ExecuteCommands = ':AsyncRun st -T "floating" -e sh -c '
	let l:FileName = expand("%")

	let l:FileName_NoExtension = expand("%<")
	let l:runScript = 'Rscript ' . l:FileName . ' '

	exe l:ExecuteCommands . '"' . l:runScript . ' ; read -n1 ' . '"'
endfun

fun! s:CAR_Zsh()
	let l:ExecuteCommands = ':AsyncRun st -T "floating" -e sh -c '
	let l:FileName = expand("%")

	let l:FileName_NoExtension = expand("%<")
	let l:runScript = 'Rscript ' . l:FileName . ' '

	exe l:ExecuteCommands . '"' . l:runScript . ' ; read -n1 ' . '"'
endfun

fun! CAR_Python()
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
endfun


function! s:Helper_RunMariaDb()
	let l:ExecuteCommands = ':AsyncRun st -g "170x30+0+0" -T "floating" -e sh -c '
	let l:FileName = expand("%")
	let l:FileName_NoExtension = expand("%<")
	let l:runScript = 'mariadb --execute=\"source ' . l:FileName . ' ;\" '
	let l:final  = l:ExecuteCommands . '"' . l:runScript . ' ; read -n1 '. '"'
	echom l:final
	let outFile = input("write output to termnal?(y/n): ")
	if outFile == 'n'
		exe l:ExecuteCommands . '"' . l:runScript .  ' > mariadb.txt ; read -n1  ' . '"  '
	else
		exe l:ExecuteCommands . '"' . l:runScript .  '  ; read -n1 ' . '" '
	endif
endfunction

function! s:Helper_RunMariaDbRoot()
	let l:ExecuteCommands = ':AsyncRun st -g "170x30+0+0" -T "floating" -e sh -c '
	let l:FileName = expand("%")
	let l:FileName_NoExtension = expand("%<")
	let l:runScript = 'sudo mariadb --execute=\"source ' . l:FileName . ' ;\" '
	let l:final  = l:ExecuteCommands . '"' . l:runScript . ' ; read -n1 '. '"'
	echom l:final
	let outFile = input("write output to termnal?(y/n): ")
	if outFile == 'n'
		exe l:ExecuteCommands . '"' . l:runScript .  ' > mariadb.txt ; read -n1  ' . '"  '
	else
		exe l:ExecuteCommands . '"' . l:runScript .  '  ; read -n1 ' . '" '
	endif
endfunction


fun! s:CAR_Sql()
let ans = input("run as root?(y,N)")
if ans == 'n' || ans == '' || ans == 'N'
	call s:Helper_RunMariaDb()
else
	call s:Helper_RunMariaDbRoot()
endif
endfun




fun! s:CAR_Html()
	let l:ExecuteCommands = ':AsyncRun st -g "170x30+0+0" -T "floating" -e sh -c '
	let l:runScript = 'brave ' . expand("%")

	exe l:ExecuteCommands . '"' . l:runScript .  '  ; read -n1 ' . '" '
endfun



fun! s:CAR_Cs()
	autocmd BufEnter *.cs nnoremap <F11> :call CompileAndRunCsharp()<CR>
	autocmd BufEnter *.cs nnoremap <F12> :call CompileAndRunCsharpAvalonia()<CR>
endfun









" =================================
" ========== Compile And Run With Input from a text file options CARI
" =================================




fun! s:CARI_Python()
		let l:StTerminal = ':AsyncRun st -T "floating" -g "100x50" -e sh -c "'
	let l:StTerminalCLose = ' read -n1 "'
	let l:filename = expand('%<')
	let l:RunFileFolder = ' ~/.config/nvim/runFileConfigurations'
	let l:copyFilesToHome =' cp '. l:RunFileFolder.'/.RunPython.zsh . ; cp '.l:RunFileFolder.'/.ReadInputsPython.zsh . ; '
	let l:filenameNoEx = expand('%:p<')
	if filereadable('.ReadInputsPython.zsh') && filereadable('.RunPython.zsh')
		exe l:StTerminal . ' zsh .RunPython.zsh -1 ' . l:filename. ' ; ' . StTerminalCLose
	else
		let l:InputFiles = input("enter the number of input files: ")
		let l:enableDiff = input("enable diff with a correct out sample? (y/n): ")
		let l:readI = ' zsh .ReadInputsPython.zsh '.l:InputFiles.' "' . l:filename . '" '.l:enableDiff.' ; '
		let l:RunP = ' zsh .RunPython.zsh '.l:InputFiles.' "' . l:filename . '" '.l:enableDiff.'; '
		:echom l:RunP
		:echom l:readI
		exe l:StTerminal . l:copyFilesToHome . l:readI . l:RunP . l:StTerminalCLose
	endif
endfun

fun! CARI_Cpp()
	let l:RunCommandInStTerminal='!AsyncRun st -T "floating" -e sh -c '
	let l:openDoublequotes='"'
	let l:closeDoublequotes='"'
	let l:copyGenerationFile='cp ~/.config/nvim/runFileConfigurations/generateRunFile.cpp . ; '
	let l:runConfigurationFile=a:RunCommand . 'generateRunFile.cpp -o generateRunFile && ./generateRunFile'
	let l:runruncpp='sh runcpp.sh'
endfun



" =================================
" ========== Compile and Run Force std input
" =================================





fun! s:CARFSI_Python()
	let l:StTerminal = ':AsyncRun st -T "floating" -g "100x50" -e sh -c "'
	let l:StTerminalCLose = ' read -n1 "'
	let l:filename = expand('%<')
	exe l:StTerminal . ' python ' . l:filename . '.py ; ' . l:StTerminalCLose
endfun




" =================================
" ========== Compile and Run project 
" =================================




fun! s:CARP_Latex()
	:w!
	let l:PdfFile = b:FileNameNoExtension . ".pdf"
	let l:TerminalCall = 'AsyncRun st -T "floating" -g "=80x45+600+80" -e sh -c '
	let l:cdIntoDir = 'cd %:p:h && '
	let l:RunCommand = 'pdflatex --shell-escape ' . b:FileName . ' ; '
	let l:OpenPdf = 'zathura ' . l:PdfFile
	exe l:TerminalCall . '"' . l:cdIntoDir . l:RunCommand  . l:RunCommand . l:OpenPdf . '"'
	"	exe 'AsyncRun st -T "floating" -g "=80x45+600+80" -e sh -c "cd %:p:h && pdflatex --shell-escape ' . b:FileName .  '"'
	"	sleep 4
	"	exe 'AsyncRun st -T "floating" -g "=80x45+600+80" -e sh -c "cd %:p:h && zathura ' . l:PdfFile . '"'
endfun

















" =================================
" ========== Create Working environment 
" =================================

fun! s:CE_Python()
	let l:StTerminal = ':AsyncRun st -T "floating" -g "200x50" -e sh -c "'
	let l:StTerminalCLose = ' read -n1 "'
	let l:pythonV = "python --version | grep -P \'\d\d+' -o > python_version.txt ;"
	let l:createEnv = "python -m venv venv/ ; "
	exe l:StTerminal .  .  l:StTerminalCLose
endfun




" ------------------------------------------------------------------------------
let &cpo= s:keepcpo
unlet s:keepcpo
