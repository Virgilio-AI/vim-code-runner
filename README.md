# vim-code-runner
A code runner for vim, just like the vscode pluging. but with more functionalities like creating test cases for the code
# demo
![](code_runner_demo.gif)
# requirements
This plugin comes configured and packaged with Water Linux

or if you want to install it manually install the necessary packages for running the necessary code

python
c++
etc.

# quick start

The shortcuts are already mapped for you
The default ones are

Run code in the terminal
```
<F11>
```
Run code and compare it to test cases
```
<F11><F11>
```
Force run in terminal 
```
<F11><F11><F11>
```
When you first compare test cases now every time you run <F11> the default behabiour will be that of the comparison o ftest cases

you also will need to have cpdiff file in your environment variables
and you will have to paste .ReadInputsPython.zsh and .RunPython.zsh into ~/.config/nvim/runFileConfigurations/


# supported languages
| language |      compile and run      |  compile and run input | (force std input) |
|----------|:-------------------------:| ----------------------:|------------------:|
|   python |yes                        | yes                    | yes               |
| cpp      |yes                        | yes                    | No                |
| c        | yes                       | No                     | No                |
| tex      | yes                       | No                     | No                |
| sh       | yes                       | No                     | No                |
| elm | yes | No | No |
| r | yes | No | No |
| zsh | yes | No | No |
| cs | yes | No | No |
| html | yes | No | No |


<<<<<<< HEAD
=======

>>>>>>> develop
