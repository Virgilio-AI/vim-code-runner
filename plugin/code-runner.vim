" Date: 29/May/2022 - Sunday
" Author: Virgilio Murillo Ochoa
" personal github: Virgilio-AI
" linkedin: https://www.linkedin.com/in/virgilio-murillo-ochoa-b29b59203
" contact: virgiliomurilloochoa1@gmail.com
" web: virgiliomurillo.com


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
		call s:CAR_Cs()
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
	:w
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




function! s:Helper_CompileAndRunCppDefault(RunCommand)
	:w
	exe ':AsyncRun st -T "floating" -e sh -c "' . a:RunCommand . ' %:p -o %< && ./%< ; read -n1 "'
endfunction

function! s:Helper_CompileAndRunCppForCompetition(RunCommand)
	:w
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


function! s:Helper_CompileAndRunCppForNcurses(RunCommand)
	:w
	exe ':AsyncRun st -T "floating" -e sh -c " ' . a:RunCommand . ' -lncurses %:p -o %<_nc && ./%<_nc ; read -n1"'
endfunction



fun! s:CAR_C_CPP(RunCommand)
	:w!
	if filereadable("In.txt") || filereadable("runcpp.sh")
		:call s:Helper_CompileAndRunCppForCompetition(a:RunCommand)
	else
		if filereadable("%<_nc")
			:call s:Helper_CompileAndRunCppForNcurses(a:RunCommand)
			return
		endif
		let tempChar = input("(c)ompetition-(n)curses-(d)efault: ")
		if tempChar == "c"
			:call s:Helper_CompileAndRunCppForCompetition(a:RunCommand)
		elseif tempChar == "d"
			:call s:Helper_CompileAndRunCppDefault(a:RunCommand)
		else
			:call s:Helper_CompileAndRunCppForNcurses(a:RunCommand)
		endif
	endif
endfun


fun! s:CAR_Latex()
	:w!

	let l:OpenTerminal = 'AsyncRun st -g "70x60+100+100" -T "floating" -e sh -c '

	" ask a question to the user and read the answer
	let l:tempChar = input("Do you want to use an external configuration? (Y/n): ")

	if l:tempChar == "y" || l:tempChar == "Y" || l:tempChar == ""
		" store the file name in a variable
		let l:FileName = expand("%")
		let l:Name = expand("%<")
		let l:Command = l:OpenTerminal . '" pdflatex --shell-scape ' . l:FileName . ' ; zathura ' . l:Name . '.pdf ; read -n1 "'

		echo l:Command

		exe l:Command

	else
		let l:CopyConfigFileToCurrentPath = ' cp ~/.config/nvim/runFileConfigurations/configuration.tex . ; '
		let l:CopyFileToMainTex = 'cp ' . b:FileNameNoExtension . '.tex tempFileForConfig.tex ; '
		let l:RunPdfLatex = ' pdflatex --shell-escape configuration.tex ; '
		let l:ChangeNamePdf = ' mv configuration.pdf ' . b:FileNameNoExtension . '.pdf ; '
		let l:removeJunkFiles = ' rm -rfd tempFileForConfig.tex configuration.* _minted-configuration ; '
		let l:OpenPdf = ' zathura ' . b:FileNameNoExtension . '.pdf'
		exe l:OpenTerminal . '"' . l:CopyConfigFileToCurrentPath . l:CopyFileToMainTex . l:RunPdfLatex . l:RunPdfLatex .  l:ChangeNamePdf . l:removeJunkFiles . l:OpenPdf  . '"'
	endif
	return

endfun




fun! s:CAR_Bash()
	:w!
	:AsyncRun st -T "floating" -e sh -c "sh %:p ; read -n1"
endfun



function! s:Helper_CompileToJavaScript()
	:w
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
	:w
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
	:w
	let ans = input("Compile to javascript?(Y,n)")
	if ans == "" || ans == "y"
		call s:Helper_CompileToJavaScript()
	else
		call s:Helper_CompileAndRunElm()
	endif
endfun





fun! s:CAR_R()
	:w
	let l:ExecuteCommands = ':AsyncRun st -T "floating" -e sh -c '
	let l:FileName = expand("%")

	let l:FileName_NoExtension = expand("%<")
	let l:runScript = 'Rscript ' . l:FileName . ' '

	exe l:ExecuteCommands . '"' . l:runScript . ' ; read -n1 ' . '"'
endfun

fun! s:CAR_Zsh()
	:w
	let l:ExecuteCommands = ':AsyncRun st -T "floating" -e sh -c '
	let l:FileName = expand("%")
	let l:FileName_NoExtension = expand("%<")
	let l:runScript = 'zsh ' . l:FileName . ' '
	exe l:ExecuteCommands . '"' . l:runScript . ' ; read -n1 ' . '"'
endfun

fun! s:CAR_Python()
	:w

	let l:name = expand('%<')
	let l:folderLocation =  '.code-runner/' . l:name

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
			exe l:StTerminal . l:source .  ' python ' . l:filename . '.py ; ' . l:deactivate . l:StTerminalCLose
		endif
	else

		let l:StTerminal = ':AsyncRun st -T "floating" -g "100x50" -e sh -c "'
		let l:StTerminalCLose = ' read -n1 "'
		let l:filename = expand('%<')
		if filereadable(l:folderLocation . '/.ReadInputsPython.zsh') && filereadable( l:folderLocation . '/.RunPython.zsh')
			:echom l:StTerminal . ' zsh '.l:folderLocation.'/.RunPython.zsh -1 ' . l:filename. ' ; ' . l:StTerminalCLose
			exe l:StTerminal . ' zsh '.l:folderLocation.'/.RunPython.zsh -1 ' . l:filename. ' ; ' . l:StTerminalCLose
		else
			exe l:StTerminal . ' python ' . l:filename . '.py ; ' . l:StTerminalCLose
		endif
	endif

endfun


function! s:Helper_RunMariaDb()
	:w
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
	:w
	let l:ExecuteCommands = ':AsyncRun st -g "170x30+0+0" -T "floating" -e sh -c '
	let l:FileName = expand("%")
	let l:FileName_NoExtension = expand("%<")
	let l:runScript = 'mariadb -u root -p --execute=\"source ' . l:FileName . ' ;\" '
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
	:w
let ans = input("run as root?(y,N)")
if ans == 'n' || ans == '' || ans == 'N'
	call s:Helper_RunMariaDb()
else
	call s:Helper_RunMariaDbRoot()
endif
endfun




fun! s:CAR_Html()
	:w
	let l:ExecuteCommands = ':AsyncRun st -g "170x30+0+0" -T "floating" -e sh -c '
	let l:runScript = 'brave ' . expand("%")

	exe l:ExecuteCommands . '"' . l:runScript .  '  ; read -n1 ' . '" '
endfun



fun! s:CAR_Cs()
	:w
	let l:ExecuteCommands = ':AsyncRun st -T "floating" -e sh -c '
	if filereadable('run.sh')
		exe ':AsyncRun st -T "floating" -e sh -c "sh run.sh ; read -n1" '
	else
		let l:filename = expand("%<")
		let l:CompileCsharp = 'mcs ' . l:filename . '.cs ; '
		let l:RunCSharp = 'mono ' . l:filename . '.exe ; '
		exe l:ExecuteCommands . '"' . l:CompileCsharp . l:RunCSharp . ' read -n1 ; "'
	endif
endfun









" =================================
" ========== Compile And Run With Input from a text file options CARI
" =================================



"
fun! s:CARI_Python()
	let l:monitorXPos=system("xwininfo -id $(xdotool getactivewindow) | grep 'Absolute upper-left X: ' | awk '{print $4}'")[:-2]
	let l:monitorYPos=system("xwininfo -id $(xdotool getactivewindow) | grep 'Absolute upper-left Y: ' | awk '{print $4}'")[:-2]
	:w
	let l:StTerminal = ':AsyncRun st -T "floating" -g "80x30+' . l:monitorXPos . '+' . l:monitorYPos . '" -e sh -c "'
	echo "st terminal:"
	echo l:StTerminal
	echo "=="


	" % - relative path
	" %:p - absolute path
	" %< - for filename without extension
	" use expand('')
	"

	let l:StTerminalCLose = ' read -n1 "'
	let l:filename = expand('%<')
	let l:RunFileFolder = ' ~/.config/nvim/runFileConfigurations'



	let l:filenameNoEx = expand('%:p<')
	let l:name = expand('%<')
	let l:folderLocation =  '.code-runner/' . l:name

	let l:CreateFolder = 'mkdir -p ' .l:folderLocation


	let l:copyFilesToHome =''.l:CreateFolder.' ;  cp -r'. l:RunFileFolder.'/.RunPython.zsh '.l:folderLocation.'/ ; cp '.l:RunFileFolder.'/.ReadInputsPython.zsh '.l:folderLocation.'/ ; '




	if filereadable( l:folderLocation . '/.ReadInputsPython.zsh') && filereadable(l:folderLocation . '.RunPython.zsh')
		echom l:StTerminal . ' zsh '.l:folderLocation.'/.RunPython.zsh -1 ' . l:filename. ' ; ' . l:StTerminalCLose
		exe l:StTerminal . ' zsh '.l:folderLocation.'/.RunPython.zsh -1 ' . l:filename. ' ; ' . l:StTerminalCLose
	else
		let l:InputFiles = input("enter the number of input files: ")

		" enable diff default yes
		let l:enableDiff = input("enable diff with a correct out sample? (Y/n): ")
		if l:enableDiff == ""
			let l:enableDiff = "y"
		endif

		" enable input file default yes
		let l:enableInput = input("enable input files? (Y/n)")
		if l:enableInput == ""
			let l:enableInput = "y"
		endif

		let l:readI = ' zsh '.l:folderLocation.'/.ReadInputsPython.zsh '.l:InputFiles.' "' . l:filename . '" '.l:enableDiff. ' ' . l:enableInput . ' ; '
		let l:RunP = ' zsh '.l:folderLocation.'/.RunPython.zsh '.l:InputFiles.' "' . l:filename . '" '.l:enableDiff.' ' . l:enableInput .' ; '

		:echom l:RunP
		:echom l:readI

		exe l:StTerminal . l:copyFilesToHome . l:readI . l:RunP . l:StTerminalCLose
	endif
endfun

fun! s:CARI_Cpp()
	:w
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
	:w
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
	:w
	let l:StTerminal = ':AsyncRun st -T "floating" -g "200x50" -e sh -c "'
	let l:StTerminalCLose = ' read -n1 "'
	let l:pythonV = "python --version | grep -P \'\d\d+' -o > python_version.txt ;"
	let l:createEnv = "python -m venv venv/ ; "
	exe l:StTerminal .  .  l:StTerminalCLose
endfun




" ------------------------------------------------------------------------------
let &cpo= s:keepcpo
unlet s:keepcpo
