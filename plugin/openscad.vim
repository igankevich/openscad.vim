" VIM plugin for OpenSCAD.
" Maintainer: Ivan Gankevich <igankevich@ya.ru>
" License: GPLv3+

if exists("openscad_loaded")
    finish
endif
let openscad_loaded = 1

function! OpenSCAD()
	let l:cmd = 'setsid -f openscad'
	if exists("b:openscad_command")
		let l:cmd = b:openscad_command
	elseif exists("g:openscad_command")
		let l:cmd = g:openscad_command
	endif
    call system(cmd . ' ' . expand('%'))
endfunction

command! OpenSCAD call OpenSCAD()
