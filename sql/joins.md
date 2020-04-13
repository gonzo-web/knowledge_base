**JOIN example for getting author, his posts and tags corresponded to this posts**

SELECT u.name as author, p.title as post_title, t.name as tags FROM posts as p JOIN users as u JOIN tags as t JOIN posts_tags as p_t ON p.author_id=u.id AND p_t.post_id=p.id WHERE u.id = 1;
