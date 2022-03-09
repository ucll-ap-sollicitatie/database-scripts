# TABLE QUERIES FOR SOS API

#### Table 'roles'

```
CREATE TABLE roles (
    role_id SERIAL NOT NULL,
    role character varying(8) DEFAULT 'Student'::character varying NOT NULL,
    PRIMARY KEY (role_id)
);
```

#### Table 'formations'

```
CREATE TABLE formations (
    formation_id SERIAL NOT NULL,
    formation character varying(128) NOT NULL,
    PRIMARY KEY (formation_id)
);
```

#### Table 'users'

```
CREATE TABLE users (
    user_id SERIAL NOT NULL,
    name character varying(50) NOT NULL,
    surname character varying(50) NOT NULL,
    email character varying(100) NOT NULL,
    image character varying(512) DEFAULT 'https://palmbayprep.org/wp-content/uploads/2015/09/user-icon-placeholder.png'::character varying NOT NULL,
    hashed_password character varying(512) DEFAULT 't'::character varying NOT NULL,
    activation_token character varying(256),
    token_expiration_date timestamp without time zone DEFAULT (now() + '01:00:00'::interval),
    last_login timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    role_id integer DEFAULT 1 NOT NULL,
    formation_id integer NOT NULL,
    PRIMARY KEY (user_id),
    FOREIGN KEY (formation_id) REFERENCES formations(formation_id),
    FOREIGN KEY (role_id) REFERENCES roles(role_id)
);
```

#### Table 'videos'

```
CREATE TABLE videos (
    video_id SERIAL NOT NULL,
    title character varying(50) NOT NULL,
    date timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    video_url character varying(256) DEFAULT 'tmp_link'::character varying NOT NULL,
    email character varying(128) DEFAULT 'temp_email'::character varying NOT NULL,
    description text,
    private boolean DEFAULT false,
    user_id integer NOT NULL,
    PRIMARY KEY (video_id),
    FOREIGN KEY (email) REFERENCES users (email),
    FOREIGN KEY (user_id) REFERENCES users (user_id)
);
```

#### Table 'favorites'

```
CREATE TABLE favorites (
    favorite_id SERIAL NOT NULL,
    email character varying(100) NOT NULL,
    video_id integer NOT NULL,
    PRIMARY KEY (favorite_id),
    FOREIGN KEY (email) REFERENCES users(email),
    FOREIGN KEY (video_id) REFERENCES videos(video_id)
);
```

#### Table 'comments'

```
CREATE TABLE comments (
    comment_id SERIAL NOT NULL,
    text character varying(510) NOT NULL,
    date timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    video_id integer NOT NULL,
    feedback boolean NOT NULL,
    start_feedback time without time zone,
    end_feedback time without time zone,
    author_email character varying(100) DEFAULT 'temp_email'::character varying NOT NULL,
    PRIMARY KEY (comment_id),
    FOREIGN KEY (author_email) REFERENCES users(email),
    FOREIGN KEY (video_id) REFERENCES videos(video_id)
);
```

#### Table 'liked_comments'

```
CREATE TABLE liked_comments (
    email character varying(100) NOT NULL,
    comment_id integer NOT NULL,
    PRIMARY KEY (email, comment_id),
    FOREIGN KEY (email) REFERENCES users (email),
    FOREIGN KEY (comment_id) REFERENCES comments (comment_id)
);
```

#### Table 'liked_videos'

```
CREATE TABLE dev.liked_videos (
    email character varying(100) NOT NULL,
    video_id integer NOT NULL,
    PRIMARY KEY (email, video_id),
    FOREIGN KEY (email) REFERENCES users (email),
    FOREIGN KEY (video_id) REFERENCES videos (video_id)
);
```

#### Table 'question_categories'

```
CREATE TABLE question_categories (
    question_category_id SERIAL NOT NULL,
    category character varying(100) NOT NULL,
    description character varying NOT NULL,
    PRIMARY KEY (question_category_id)
);
```

#### Table 'preferences'

```
CREATE TABLE dev.preferences (
    preference_id SERIAL NOT NULL,
    email character varying(100) NOT NULL,
    preference_1 integer DEFAULT 0 NOT NULL,
    preference_2 integer DEFAULT 0 NOT NULL,
    preference_3 integer DEFAULT 0 NOT NULL,
    edited boolean DEFAULT false NOT NULL,
    introduced boolean DEFAULT false NOT NULL,
    PRIMARY KEY (preference_id),
    FOREIGN KEY (email) REFERENCES users (email),
    FOREIGN KEY (preference_1) REFERENCES question_categories (question_category_id),
    FOREIGN KEY (preference_2) REFERENCES question_categories (question_category_id),
    FOREIGN KEY (preference_3) REFERENCES question_categories (question_category_id)
);
```

#### Table 'questions'

```
CREATE TABLE dev.questions (
    question_id SERIAL NOT NULL,
    question character varying(256) NOT NULL,
    question_category_id integer NOT NULL,
    PRIMARY KEY (question_id),
    FOREIGN KEY (question_category_id) REFERENCES question_categories (question_category_id)
);
```

#### Table 'tasks'

```
CREATE TABLE dev.tasks (
    task_id SERIAL NOT NULL,
    title character varying(255) NOT NULL,
    description text,
    deadline timestamp without time zone,
    teacher_email character varying(100) NOT NULL,
    created_on timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    PRIMARY KEY (task_id),
    FOREIGN KEY (teacher_email) REFERENCES users (teacher_email)
);
```
