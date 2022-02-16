SET search_path TO sollicitaties;

CREATE TABLE users (
   r_u_number varchar(8) PRIMARY KEY,
   name varchar(50) NOT NULL,
   surname varchar(50) NOT NULL,
   email varchar(100) NOT NULL,
   role varchar(7) NOT NULL,
   formation varchar(100) NOT NULL,
   photo_url varchar(512) NOT NULL DEFAULT 'temp_link',
   hashed_password varchar(512) NOT NULL DEFAULT 't'
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
   author varchar(7) NOT NULL,
   video_id integer NOT NULL,
   CONSTRAINT fk_video FOREIGN KEY (video_id) REFERENCES videos(video_id)
);

CREATE TABLE questions (
   question_id SERIAL PRIMARY KEY,
   question varchar(256) NOT NULL,
   CONSTRAINT fk_category FOREIGN KEY (category) REFERENCES categories(category)
);

CREATE TABLE question_categories (
   question_category_id SERIAL PRIMARY KEY,
   category varchar(100) NOT NULL
);
