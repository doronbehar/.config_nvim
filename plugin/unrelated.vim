" Control tabsize easily
command! -nargs=1 Tabsize call tabsize#set(<f-args>)

" Preserver selection after indentation:
" Source: https://dailyvim.tumblr.com/post/138670862883/preserve-selection-after-indentation
vmap > >gv
vmap < <gv

" ----------------
" <leader> related
" ----------------

" find the visually selected text
vnoremap <leader>s <Esc>/<c-r>=escape#getvisual()<CR><CR>
vnoremap <leader>S <Esc>/\<<c-r>=escape#getvisual()<CR>\><CR>
" replace the visually selected text
vnoremap <leader>r <Esc>:%s/<c-r>=escape#getvisual()<CR>//gc<left><left><left>
vnoremap <leader>R <Esc>:%s/\<<c-r>=escape#getvisual()<CR>\>//gc<left><left><left>
" toggle set hlsearc setting:
nnoremap <leader>v :set hlsearch! hlsearch?<CR>
" Create a mapping to sync syntax:
nnoremap <leader><esc> :syntax sync fromstart<CR>

" --------------------------------------------
" <space> related, usually for searching stuff
" --------------------------------------------

" cycle through all foldmethods
nnoremap <leader>m :call foldmethods#cycle()<CR>
" toggle pager mode
nnoremap <leader>p :call pager#toggle()<CR>
" Complete a command from the history
nnoremap <space>; :FzfLua command_history:<CR>
" Complete a previous search query
nnoremap <space>/ :FzfLua search_history<CR>
" Complete a file from the history edited buffers
nnoremap <space>g :FzfLua git_files<CR>
nnoremap <space>m :FzfLua git_status<CR>
" Complete a file from open buffers
nnoremap <space>b :FzfLua buffers<CR>
" Search and press a keymap
nnoremap <leader><tab> :FzfLua keymaps<CR>
lua << EOF
fzf = require('fzf-lua')
-- Useful if you debug these functions
--function shellinspect(var)
--  vim.fn.system("echo var is " .. vim.fn.shellescape(vim.inspect(var)) .. " >> dbg")
--end
FzfLuaCfileComplete = function(cfile)
  bufnr = vim.fn.bufnr('%')
  buflinenr = vim.fn.line('.')
  curpos = vim.fn.getcurpos()[3]
  cfile = cfile or ""
  cfile_expanded = vim.fn.expand(cfile)
  find_cmd = 'find ' .. vim.fn.shellescape(vim.fs.dirname(cfile_expanded)) .. ' -mindepth 1 -maxdepth 2'
  fzf.fzf_exec(find_cmd, {
    actions = {
      ['default'] = function(selected)
        line = vim.fn.getbufline(bufnr, buflinenr)[1]
        if cfile == "" then
          line_completed = line .. selected[1]
        else
          -- Special treatment to $HOME/ -> ~/ expansion likely done for cfile_expanded
          replacement = vim.fn.substitute(selected[1], os.getenv('HOME'), '~', '')
          line_completed = vim.fn.substitute(
            line,
            vim.fn.escape(cfile, '^$.*\\/~[]'),
            replacement,
            ''
          )
        end
        vim.fn.setbufline(bufnr, buflinenr, line_completed)
        vim.fn.cursor(buflinenr, curpos + string.len(selected[1]))
      end
    },
    fzf_opts = {
      ['--query'] = vim.fn.shellescape(cfile_expanded)
    },
    previewer = "builtin"
  })
end
vim.cmd([[inoremap <c-x><c-f> <esc>:lua FzfLuaCfileComplete('<C-R>=expand("<cfile>")<CR>')<CR>]])
vim.keymap.set('i', '<c-x><c-l>', function()
  bufnr = vim.fn.bufnr('%')
  buflinenr = vim.fn.line('.')
  curpos = vim.fn.getcurpos()[3]
  fzf.lines({
    actions = {
      ['default'] = function(selected)
        line_text = vim.fn.getqflist({
          efm = '%f:%l: %m',
          lines = selected
        }).items[1].text
        vim.fn.setbufline(bufnr, buflinenr, line_text)
        vim.fn.cursor(buflinenr, curpos + string.len(line_text))
      end
    },
    fzf_opts = {
      ['--query'] = vim.fn.shellescape(vim.fn.getbufline(bufnr, buflinenr)[1])
    }
  })
end)
EOF

" ----------------------------------------
" <F#> that usually should work everywhere
" ----------------------------------------

" Switch between various rtl and ltr settings
nnoremap <F10> :call paragraph#toggle()<CR>
inoremap <F10> <C-\><C-o>:call paragraph#toggle()<CR>
nnoremap <F11> :call smartwrap#toggle()<CR>
inoremap <F11> <C-\><C-o>:call smartwrap#toggle()<CR>
nnoremap <F12> :call rtl#toggle()<CR>
inoremap <F12> <C-\><C-o>:call rtl#toggle()<CR>
" toggle set spell setting:
nnoremap <F2> :set spell! spell?<CR>
inoremap <F2> <C-\><C-o>:set spell! spell?<CR>
" Gundo
nnoremap <F5> :GundoToggle<CR>
