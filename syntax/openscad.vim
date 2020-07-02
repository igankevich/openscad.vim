" VIM syntax file for OpenSCAD.
" Language: OpenSCAD
" Maintainer: Ivan Gankevich <igankevich@ya.ru>
" License: GPLv3+
" Based on conf.vim by Bram Moolenaar

if exists("b:current_syntax")
	finish
endif

syn case match
syn keyword openscadTodo contained TODO FIXME XXX
syn region openscadComment start=/\/\// end=/$/ contains=openscadTodo
syn region openscadCommentM start=/\/\*/ end=/\*\// contains=openscadTodo
syn region openscadString start=+"+ skip=+\\\\\|\\"+ end=+"+ oneline
syn keyword openscadKeyword function module if else for intersection_for let include use

hi link openscadComment Comment
hi link openscadCommentM Comment
hi link openscadKeyword Keyword
hi link openscadString String

let b:current_syntax = "openscad"
