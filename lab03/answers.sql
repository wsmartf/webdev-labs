-- Exercise 1 (done for you):
SELECT * FROM users;


-- Exercise 2 (done for you):
SELECT id, first_name, last_name 
FROM users;


-- Exercise 3
SELECT id, first_name, last_name
FROM users
ORDER BY last_name ASC;


-- Exercise 4
SELECT id, image_url, user_id
FROM posts
WHERE user_id = 26;


-- Exercise 5
SELECT id, image_url, user_id
FROM posts
WHERE user_id = 26 or user_id = 12;


-- Exercise 6
SELECT count(*)
FROM posts;


-- Exercise 7
SELECT user_id, COUNT(*)
FROM comments
GROUP BY user_id
ORDER BY COUNT(*) DESC;


-- Exercise 8
SELECT p.id, p.image_url, p.user_id, username, first_name, last_name
FROM posts p JOIN users u ON u.id = p.user_id
    AND (user_id = 26 OR user_id = 12);


-- Exercise 9
SELECT p.id, p.pub_date, f.following_id
FROM posts p JOIN "following" f ON f.user_id = 26
    AND p.user_id = f.following_id;


-- Exercise 10
SELECT p.id, p.pub_date, f.following_id, u.username
FROM posts p 
JOIN "following" f ON f.user_id = 26
    AND p.user_id = f.following_id
JOIN users u ON u.id = p.user_id
ORDER BY p.pub_date DESC;


-- Exercise 11
INSERT INTO bookmarks (user_id, post_id, timestamp)
VALUES(26, 219, now());

INSERT INTO bookmarks (user_id, post_id, timestamp)
VALUES(26, 220, now());

INSERT INTO bookmarks (user_id, post_id, timestamp)
VALUES(26, 221, now());


-- Exercise 12
DELETE FROM bookmarks
WHERE user_id = 26 AND post_id = 219;

DELETE FROM bookmarks
WHERE user_id = 26 AND post_id = 220;

DELETE FROM bookmarks
WHERE user_id = 26 AND post_id = 221;


-- Exercise 13
UPDATE users
SET email = 'knick2022@gmail.com' 
WHERE id = 26;


-- Exercise 14
SELECT p.id, p.user_id, COUNT(*), p.caption
FROM posts p 
JOIN comments c ON c.post_id = p.id
                AND p.user_id = 26
GROUP BY p.id
ORDER BY COUNT(*) DESC;