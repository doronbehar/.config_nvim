au BufNewFile,BufRead *.vifm setf vifm

au BufNewFile,BufRead ~/.mozilla/firefox/*/itsalltext/*stackexchange.com_* setf markdown
au BufNewFile,BufRead ~/.mozilla/firefox/*/itsalltext/stackoverflow.com_* setf markdown
au BufNewFile,BufRead ~/.mozilla/firefox/*/itsalltext/github.com_*_*_issues_* setf markdown
au BufNewFile,BufRead ~/.mozilla/firefox/*/itsalltext/*.wikipedia.org_w_index.php.* setf mediawiki
au BufNewFile,BufRead ~/.mozilla/firefox/*/itsalltext/* setf itsalltext

au BufNewFile,BufRead /tmp/rtv_* setf markdown
