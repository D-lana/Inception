while ! ls /var/www/worpress "ls: /var/www/wordpress: No such file or directory" do
    sleep 5
done

cp ./adminer.php /var/www/wordpress/