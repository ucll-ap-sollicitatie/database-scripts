insert into roles (role) values('Student');
insert into roles (role) values('Lector');
insert into roles (role) values('Admin');
insert into formations (formation) values('Toegepaste informatica');
insert into formations (formation) values('Office management');
insert into formations (formation) values('Boekhouden');
insert into users(r_u_number, name, surname, email, role_id, formation_id) values('r0790938', 'Szymon', 'Nidecki', 'szymon.nidecki@student.ucll.be', 3, 1);
insert into users(r_u_number, name, surname, email, role_id, formation_id) values('r0790963', 'Lorenzo', 'Catalano', 'lorenzo.catalano@student.ucll.be', 3, 1);
insert into users(r_u_number, name, surname, email, role_id, formation_id) values('r0746926', 'Maarten', 'Van Briel', 'maarten.vanbriel@student.ucll.be', 3, 1);
insert into users(r_u_number, name, surname, email, role_id, formation_id) values('r0709770', 'Joran', 'van Grunderbeek', 'joran.vangrunderbeek@student.ucll.be', 3, 1);
insert into comments (comment_id, text, feedback, author, video_id) values (1, 'Goede video!', TRUE, 'r0746926', 1),
insert into comments (comment_id, text, feedback, author, video_id) values (2, 'Duidelijke uitleg, goede sollicitatie', FALSE, 'r0790938', 2),
insert into comments (comment_id, text, feedback, author, video_id) values (3, 'Gemotiveerder overkomen.', TRUE, 'r0790963', 3),
insert into comments (comment_id, text, feedback, author, video_id) values (4, 'Te kort, meer info graag.', TRUE, 'r0709770', 4);
insert into videos (video_id, title, video_url, r_u_number) values (1, 'Solicitatie_1_r0790938', 'tmp_link', 'r0790938'),
insert into videos (video_id, title, video_url, r_u_number) values (2, 'Solicitatie_1_r0709770', 'tmp_link', 'r0709770'),
insert into videos (video_id, title, video_url, r_u_number) values (3, 'Solicitatie_1_r0790963', 'tmp_link', 'r0790963'),
insert into videos (video_id, title, video_url, r_u_number) values (4, 'Solicitatie_1_r0746926', 'tmp_link', 'r0746926');
insert into question_categories (question_category_id, category) values (1, 'Toegepaste Informatica'),
insert into question_categories (question_category_id, category) values (2, 'Algemeen');
insert into questions (question_id, question, question_category_id) values (1, 'Wat is je favoriete programmeertaal?', 1),
insert into questions (question_id, question, question_category_id) values (2, 'Hoe ziet je droomjob eruit?', 2),
insert into questions (question_id, question, question_category_id) values (3, 'Hoe zou je jezelf omschrijven?', 2),
insert into questions (question_id, question, question_category_id) values (4, 'Werk je graag in teamverband en wat is jouw bijdrage aan het team?', 2),
insert into questions (question_id, question, question_category_id) values (5, 'Wat is je favoriete IT-project waaraan je hebt gewerkt?', 1);