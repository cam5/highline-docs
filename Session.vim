let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/Sites/highline-docs
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +1 _posts/2013-06-06-install-setup.md
badd +22 css/main.css
badd +7 _config.yml
badd +1 css/syntax.css
badd +77 bin/jekyll-page
badd +1 \'/Users/Cam/Sites/highline-docs/_posts/2015-10-03-placing\ orders.md\'
badd +1 \'/Users/Cam/Sites/highline-docs/_posts/2015-10-03-placing-orders.md\'
badd +26 index.md
badd +1 \'/Users/Cam/Sites/highline-docs/_pages/2015-10-03-placing-orders.md\'
badd +1 \'/Users/Cam/Sites/highline-docs/_pages/2015-10-03-shopify-documentation.md\'
badd +1 \'/Users/Cam/Sites/highline-docs/_posts/2015-10-03-shopify-documentation.md\'
badd +22 _posts/2015-10-03-shopify-documentation.md
badd +1 _posts/2015-10-03-logging-in.md
badd +1 \'/Users/Cam/Sites/highline-docs/_posts/2015-10-03-order-flow.md\'
badd +12 _posts/2015-10-03-order-flow.md
badd +0 _includes/header.html
badd +5 _layouts/default.html
badd +1 _layouts/page.html
argglobal
silent! argdel *
edit _posts/2015-10-03-order-flow.md
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 94 - ((46 * winheight(0) + 27) / 55)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
94
normal! 0
tabnext 1
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
let g:this_session = v:this_session
let g:this_obsession = v:this_session
let g:this_obsession_status = 2
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
