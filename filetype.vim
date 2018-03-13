au BufNewFile,BufRead *.rockspec let g:ale_lua_luacheck_options = '--std rockspec'
au BufNewFile,BufRead .luacheckrc setf lua | let g:ale_lua_luacheck_options = '--no-globals'

au BufNewFile,BufRead *.vifm setf vifm

au BufNewFile,BufRead ~/.mozilla/firefox/*/itsalltext/*stackexchange.com_* setf markdown
au BufNewFile,BufRead ~/.mozilla/firefox/*/itsalltext/stackoverflow.com_* setf markdown
au BufNewFile,BufRead ~/.mozilla/firefox/*/itsalltext/github.com_*_*_issues_* setf markdown
au BufNewFile,BufRead ~/.mozilla/firefox/*/itsalltext/*.wikipedia.org_w_index.php.* setf mediawiki
au BufNewFile,BufRead ~/.mozilla/firefox/*/itsalltext/* setf itsalltext

au BufNewFile,BufRead /tmp/ghost-*stackexchange.com* setf markdown
au BufNewFile,BufRead /tmp/ghost-stackoverflow.com* setf markdown
au BufNewFile,BufRead /tmp/ghost-github.com* setf markdown
au BufNewFile,BufRead /tmp/ghost-*wikipedia.org* setf mediawiki
au BufNewFile,BufRead /tmp/ghost-* setf itsalltext

au BufNewFile,BufRead /tmp/rtv_* setf markdown
