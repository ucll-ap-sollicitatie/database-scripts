SET search_path TO sollicitaties;

CREATE TABLE roles (
   role_id SERIAL PRIMARY KEY,
   role varchar(8) not NULL DEFAULT 'student'
);

CREATE TABLE formations (
   formation_id SERIAL PRIMARY KEY,
   formation varchar(128) NOT NULL
);

CREATE TABLE users (
   r_u_number varchar(8) PRIMARY KEY,
   name varchar(50) NOT NULL,
   surname varchar(50) NOT NULL,
   email varchar(100) NOT NULL,
   photo_url varchar(512) NOT NULL DEFAULT 'temp_link',
   hashed_password varchar(512) NOT NULL DEFAULT 't',
   role_id integer NOT NULL,
   formation_id integer NOT NULL,
   CONSTRAINT fk_role FOREIGN KEY (role_id) REFERENCES roles(role_id),
   CONSTRAINT fk_formation FOREIGN KEY (formation_id) REFERENCES formations(formation_id)
);

CREATE TABLE videos (
   video_id SERIAL PRIMARY KEY,
   title varchar(50) NOT NULL,
   date TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT CURRENT_TIMESTAMP,
   video_url varchar(256) NOT NULL,
   r_u_number varchar(8) NOT NULL,
   CONSTRAINT fk_user FOREIGN KEY (r_u_number) REFERENCES users(r_u_number)
);

CREATE TABLE comments (
   comment_id SERIAL PRIMARY KEY,
   text varchar(256) NOT NULL,
   feedback boolean NOT NULL,
   date TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT CURRENT_TIMESTAMP,
   author varchar(8) NOT NULL,
   video_id integer NOT NULL,
   CONSTRAINT fk_video FOREIGN KEY (video_id) REFERENCES videos(video_id)
);

CREATE TABLE question_categories (
   question_category_id SERIAL PRIMARY KEY,
   category varchar(100) NOT NULL
);

CREATE TABLE questions (
   question_id SERIAL PRIMARY KEY,
   question varchar(256) NOT NULL,
   question_category_id integer NOT NULL,
   CONSTRAINT fk_category FOREIGN KEY (question_category_id) REFERENCES question_categories(question_category_id)
);

GRANT ALL ON comments TO r0790963, r0746926, r0709770, r0790938;
GRANT ALL ON questions TO r0790963, r0746926, r0709770, r0790938;
GRANT ALL ON videos TO r0790963, r0746926, r0709770, r0790938;
GRANT ALL ON users TO r0790963, r0746926, r0709770, r0790938;
GRANT ALL ON roles TO r0790963, r0746926, r0709770, r0790938;
GRANT ALL ON formations TO r0790963, r0746926, r0709770, r0790938;
GRANT ALL ON question_categories TO r0790963, r0746926, r0709770, r0790938;
