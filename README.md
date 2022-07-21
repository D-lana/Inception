# Inception
Настройка докер-контейнеров
### По Nginx - что это такое и как настраивать, в том числе ssl, TLS:

https://www.youtube.com/watch?v=7XJoCZ4wsoc&list=PLc7C4rck3fYswuRgp9pI3NsAxehJwcNFD

https://nginx.org/ru/docs/beginners_guide.html

Шаблоны настроек nginx.conf:

https://ssl-config.mozilla.org/#server=nginx&version=1.17.7&config=intermediate&openssl=1.1.1k&hsts=false&guideline=5.6

https://www.digitalocean.com/community/tools/nginx

https://www.easycoding.org/2014/01/31/podnimaem-neskolko-https-sajtov-na-odnom-ip-adrese.html

I am assuming that you have http in your /etc/nginx/nginx.conf file which then tells nginx to include    sites-enabled/*;

So then you have

   http
  
    http
    
       server
       
As the http directive should only happen once just remove the http directive from your sites-enabled config file(s)

### Настройка Wordpress:

1) Устанавливаем wp-cli

Добавить юзера:

https://wp-kama.ru/handbook/wp-cli/wp/user

Установить wordpress + добавить админа: 

https://wp-kama.ru/handbook/wp-cli/wp/core
