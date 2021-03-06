" Vim compiler file
" Language:	Test::Unit - Ruby Unit Testing Framework
" Maintainer:	Doug Kearns <djkea2 at gus.gscit.monash.edu.au>
" Info:		$Id: rubyunit.vim,v 1.9 2005/10/04 11:11:34 dkearns Exp $
" URL:		http://vim-ruby.rubyforge.org
" Anon CVS:	See above site
" ----------------------------------------------------------------------------

if exists("current_compiler")
  finish
endif
let current_compiler = "rubyunit"

if exists(":CompilerSet") != 2		" older Vim always used :setlocal
  command -nargs=* CompilerSet setlocal <args>
endif

let s:cpo_save = &cpo
set cpo-=C

CompilerSet makeprg=testrb

CompilerSet errorformat=\%W\ %\\+%\\d%\\+)\ Failure:,
			\%C%m\ [%f:%l]:,
			\%E\ %\\+%\\d%\\+)\ Error:,
			\%C%m:,
			\%C\ \ \ \ %f:%l:%.%#,
			\%C%m,
			\%Z\ %#,
			\%-G%.%#

let &cpo = s:cpo_save
unlet s:cpo_save

" vim: nowrap sw=2 sts=2 ts=8 ff=unix:
