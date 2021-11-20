#!/bin/sh
wget --mirror --convert-links --page-requisites --no-parent -P html https://beta.zestedesavoir.com/tutoriels/2514/un-zeste-de-python/
mv html/beta.zestedesavoir.com html/zestedesavoir.com
find html -type f | xargs sed -i s/beta.zestedesavoir.com/zestedesavoir.com/g
echo ".header-container header { display: none; }" >> html/zestedesavoir.com/static/css/main.*.css
