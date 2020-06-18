cd /tmp
curl -O https://wordpress.org/latest.tar.gz

tar xzvf latest.tar.gz

touch /tmp/wordpress/.htaccess

cp /tmp/wordpress/wp-config-sample.php /tmp/wordpress/wp-config.php

mkdir /tmp/wordpress/wp-content/upgrade

sudo cp -a /tmp/wordpress/. /var/www/wordpress

sudo chown -R www-data:www-data /var/www/wordpress

sudo find /var/www/wordpress/ -type d -exec chmod 755 {} \;

sudo find /var/www/wordpress/ -type f -exec chmod 644 {} \;

curl -s https://api.wordpress.org/secret-key/1.1/salt/

sudo nano /var/www/wordpress/wp-config.php
# define('AUTH_KEY',         '?h9zKA_1+.uOf52@ D+UA,)(E{eb{w+Lj>w DYJW@<gYdftLTPYw(~s6|+_o=CQ8');
# define('SECURE_AUTH_KEY',  'NGol}D+es4a|+^co#UnnP;}*^5t#sebqcz7C/Rg1F#MW1WWj/iSzrBL[K`/lIp{|');
# define('LOGGED_IN_KEY',    'z{=b=o*tkO.`H-lnL|lb6&fM.|Dt!pEA.oTZ94#U92P~RUGF+w`;QG6Ch<IE#&+f');
# define('NONCE_KEY',        'E,g:m)#Cwb:Hl8dAY*(7H3:gk.[]?,)I?6n^)!YXSvi3L]|%+<&A{>$9blq|PvD=');
# define('AUTH_SALT',        '*q5O1_Gr_)sHd>E6#c3;+:|n]|HOoO^& -vwmdK-I_@upuXR@9%=r]>INDTLl^Vd');
# define('SECURE_AUTH_SALT', '~typf$9efO @e|aGz-%Ot-t{a[*AN>&{Ho#xm&i+E3Mq]%OI#)>.*!+P+J6!k Cf');
# define('LOGGED_IN_SALT',   'Yo<dx#7@+9ErpxZp|P$MY)cQHn}~bhQ~#F|R/wl0=3g3_k.=?Iya-</;5Sf)2bO-');
# define('NONCE_SALT',       'xF:t|V%J.Yi}p{VH1K6P({Fx*597-XfAn#)0;jY%J-nPl-;/r5b|*UnEc-W!u92U');

# define('FS_METHOD', 'direct');