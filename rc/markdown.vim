" Vim markdown
" Author:   jiaobuzuji,jiaobuzuji@163.com
" Github:   https://github.com/jiaobuzuji
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim:fdm=marker fmr={,} fen

" if te#env#IsDisplay()
"   Plug 'iamcco/markdown-preview.vim',{'for': 'markdown'}
"     " Markdown preview in browser
"     nnoremap <leader>mp :MarkdownPreview<cr>
"     if  te#env#IsMac()
"       let g:mkdp_path_to_chrome = 'open -a safari'
"     elseif te#env#IsWindows()
"       let g:mkdp_path_to_chrome = 'C:\\Program Files (x86)\Google\Chrome\Application\chrome.exe'
"     else
"       let g:mkdp_path_to_chrome = 'google-chrome'
"     endif
"     " Show toc sidebar
"     nnoremap <leader>ms :Toc<cr>
" endif

Plug 'mzlogin/vim-markdown-toc',{'for': 'markdown'}
  let g:vim_markdown_toc_autofit = 1
  " generate markdown TOC
  nnoremap <leader>mt :silent GenTocGFM<cr>
  " update markdown TOC
  nnoremap <leader>mu :silent UpdateToc<cr>
