" File: git.vim
" Author: ruby dongyu
" Version: 1.0
" Last Modified: 8 10, 2015

"let Git_Cmd='git status'

"let files = system("ls " .  shellescape(expand('%:h')))

function! s:Git_Blame()
    let linestr=getline('.')
    let linenumber = line('.')
    echo linenumber
    let filename = bufname('%')
    let Git_Cmd='git blame ' .filename
    let files = system("ls " .  shellescape(expand('%:h')))
    let gitoutput=system(Git_Cmd)
    echo gitoutput
endfunction

function! s:Git_Status()
    let Git_Cmd='git status'
    let gitoutput = system(Git_Cmd)
    echo gitoutput
endfunction

function! s:Git_Log()
    let Git_Cmd='git log --graph'
    let gitoutput = system(Git_Cmd)
    echo gitoutput
endfunction

command! -nargs=0 -bar Blame call s:Git_Blame()
command! -nargs=0 -bar Status call s:Git_Status()
command! -nargs=0 -bar Log call s:Git_Log()
