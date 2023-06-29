INSERT INTO tb_user (name, email, password) VALUES ('Bob Freitas', 'bob@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Ana Moreira', 'ana@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');

INSERT INTO tb_role (authority) VALUES ('ROLE_VISITOR');
INSERT INTO tb_role (authority) VALUES ('ROLE_MEMBER');

INSERT INTO tb_user_role (user_id, role_id) VALUES (1, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 2);

INSERT INTO tb_genre (name) VALUES ('infantil');
INSERT INTO tb_genre (name) VALUES ('aventura');
INSERT INTO tb_genre (name) VALUES ('terror');

INSERT INTO tb_movie (genre_id, title, sub_title, year, img_url, synopsis) VALUES (1, 'galinha pintadinha', 'Cantando co co ri co', 2010, 'https://cdn.pixabay.com/photo/2018/03/22/10/55/training-course-3250007_1280.jpg', 'Video para crianças menores de 5 anos');
INSERT INTO tb_movie (genre_id, title, sub_title, year, img_url, synopsis) VALUES (2, 'Maze Runer', 'Fugindo dos monstros', 2015, 'https://cdn.pixabay.com/photo/2018/03/22/10/55/training-course-3250007_1280.jpg', 'Filme para adolescentes');
INSERT INTO tb_movie (genre_id, title, sub_title, year, img_url, synopsis) VALUES (3, 'A Freira', 'Assustador', 2020, 'https://cdn.pixabay.com/photo/2018/03/22/10/55/training-course-3250007_1280.jpg', 'Filme para adultos');

INSERT INTO tb_review (text, user_id, movie_id) VALUES ('Filme excelente', 2, 1);
INSERT INTO tb_review (text, user_id, movie_id) VALUES ('Muito bom', 2, 2);
INSERT INTO tb_review (text, user_id, movie_id) VALUES ('Assustador', 2, 3);