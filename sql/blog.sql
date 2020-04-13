START TRANSACTION;

-- create new database
CREATE DATABASE blog;
USE blog;

-- create all tables
CREATE TABLE users (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(100),
    email VARCHAR(100),
    age INT,
    registered_at DATE DEFAULT (CURRENT_DATE),
    PRIMARY KEY (id)
);

CREATE TABLE posts (
    id INT NOT NULL AUTO_INCREMENT,
    title VARCHAR(100),
    body TEXT,
    author_id INT,
    PRIMARY KEY (id),
    FOREIGN KEY (author_id) REFERENCES users(id)
);

CREATE TABLE tags (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(20),
    PRIMARY KEY (id)
);

CREATE TABLE posts_tags (
    post_id INT,
    tag_id INT,
    FOREIGN KEY (post_id) REFERENCES posts(id),
    FOREIGN KEY (tag_id) REFERENCES tags(id)
);


-- insert data
INSERT INTO users (name, email, age)
VALUES ('John Doe', 'johndoe@gmail.com', 34);

INSERT INTO users (name, email, age)
VALUES ('Mike Smith', 'mikesmith@gmail.com', 30);

INSERT INTO users (name, email, age)
VALUES ('Sara Connor', 'saraconnor@gmail.com', 28);


INSERT INTO posts (title, body, author_id)
VALUES ('Johns first post', 'Hello, this is Johns first post', 1);

INSERT INTO posts (title, body, author_id)
VALUES ('Mikes first post', 'Hello, this is Mikes first post', 2);

INSERT INTO posts (title, body, author_id)
VALUES ('Saras first post', 'Hello, this is Saras first post', 3);


INSERT INTO tags (name)
VALUES ('new_blog');

INSERT INTO tags (name)
VALUES ('first_post');


INSERT INTO posts_tags (post_id, tag_id)
VALUES (1, 1);

INSERT INTO posts_tags (post_id, tag_id)
VALUES (2, 1);

INSERT INTO posts_tags (post_id, tag_id)
VALUES (3, 1);

INSERT INTO posts_tags (post_id, tag_id)
VALUES (3, 2);

COMMIT;
