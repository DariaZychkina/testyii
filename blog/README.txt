Проект написан с помощью: 
	PHP 8.3.11
	Apache HTTP server 2.4
	MySql Server

Подключение к БД: 

Проект выполнен на Win10, не нашла возможности экспортировать базу данных в файл .db, поэтому настройка подключения следующая:
 	1 Установить MySql Server по ссылке https://dev.mysql.com/downloads/mysql/
	2 Подключаем в php.ini расширение для MySql - extension=pdo_mysql
	3 Помещаем скаченную папку blog  на локальный сервер (Для Apache это папка htdocs)
	4 В браузере переходим по ссылке адресСервера(localhost)/blog/protected/data/phpMyAdmin/
	5 Указываем пользователя root и пароль использованный при установке MySql
	6 Создаем бд blog и импортируем ее из файла в папке blog\protected\data\blog.sql
	7 В файле blog\protected\config\database.php указываем хост (вместо localhost ), и новый пароль
