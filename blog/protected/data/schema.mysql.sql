CREATE TABLE tbl_user
(
	id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	username VARCHAR(128) NOT NULL,
	password VARCHAR(128) NOT NULL,
	email VARCHAR(128) NOT NULL,
	profile TEXT
);

CREATE TABLE tbl_post
(
	id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	title VARCHAR(128) NOT NULL,
	content TEXT NOT NULL,
	create_time INTEGER,
	update_time INTEGER,
	author_id INTEGER NOT NULL,
	CONSTRAINT FK_post_author FOREIGN KEY (author_id)
		REFERENCES tbl_user (id) ON DELETE CASCADE ON UPDATE RESTRICT
);

INSERT INTO tbl_user (username, password, email, profile) VALUES ('user1', 'pass1', 'user@maail.ru', 'Hi, I`m a programmer. 21 y.o');

INSERT INTO tbl_user (username, password, email, profile) VALUES ('user2', 'pass2', 'user2@maail.ru', 'Blog about cats');

INSERT INTO tbl_user (username, password, email, profile) VALUES ('user3', 'pass3', 'user3@maail.ru', 'What is life?...');


INSERT INTO tbl_post (title, content, author_id) VALUES ('Как написать сайт с нуля?', 'Загуглите и верьте, что всё получится)', 1);
INSERT INTO tbl_post (title, content, author_id) VALUES ('Как написать тг-бота с нуля?', 'Загуглите и верьте, что всё получится)', 1);
INSERT INTO tbl_post (title, content, author_id) VALUES ('Как написать медиаплеер с нуля?', 'Загуглите и верьте, что всё получится)', 1);

INSERT INTO tbl_post (title, content, author_id) VALUES ('Выбираем лучшую породу кошек', 'Все кошки и коты круты', 2);
INSERT INTO tbl_post (title, content, author_id) VALUES ('Какие кошки самые ласковые?', 'Все кошки и коты круты', 2);
INSERT INTO tbl_post (title, content, author_id) VALUES ('Коты или кошки, кого взять?', 'Все кошки и коты круты', 2);

INSERT INTO tbl_post (title, content, author_id) VALUES ('Сегодня я встал с кровати и подвернул ногу...', 'Жизнь такая жизнь', 3);
INSERT INTO tbl_post (title, content, author_id) VALUES ('Я выйграл миллион!!!!!!!', 'Жизнь такая жизнь', 3);
INSERT INTO tbl_post (title, content, author_id) VALUES ('Сегодня ничего не произошло', 'Жизнь такая жизнь', 3);