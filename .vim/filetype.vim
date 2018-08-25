au BufRead,BufNewFile /usr/local/etc/nginx/*,/usr/local/etc/nginx/sites-* if &ft == '' | setfiletype nginx | endif
