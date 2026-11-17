/*CREATE DATABASE social_media;
 
 USE social_media;
 
 CREATE TABLE posts (
 post_id INTEGER PRIMARY KEY AUTO_INCREMENT,
 content VARCHAR(1000) NOT NULL,
 created_at TIMESTAMP NOT NULL,
 likes INT NOT NULL,
 comments INT NOT NULL,
 shares INT NOT NULL
 );
 
 CREATE TABLE users (
 user_id INTEGER PRIMARY KEY AUTO_INCREMENT,
 full_name VARCHAR(100) NOT NULL,
 username VARCHAR(100) NOT NULL,
 created_at TIMESTAMP NOT NULL,
 followers INT NOT NULL
 );
 
 CREATE TABLE interactions (
 interaction_id INTEGER PRIMARY KEY AUTO_INCREMENT,
 user_id INT,
 post_id INT,
 type CHAR(1) NOT NULL CHECK (type IN ('L', 'C', 'S')),
 created_at TIMESTAMP NOT NULL,
 FOREIGN KEY (user_id) REFERENCES users(user_id),
 FOREIGN KEY (post_id) REFERENCES posts(post_id)
 );
 */
/*
 USE social_media;
 
 INSERT INTO users (full_name, username, created_at, followers)
 VALUES
 ('Emma', 'emma123', '2022-01-01 12:00:00', 100),
 ('Liam', 'liam456', '2022-01-02 14:00:00', 200),
 ('Sophia', 'sophia789', '2022-01-03 15:00:00', 150),
 ('Noah', 'noah101', '2022-01-04 16:00:00', 300);
 
 INSERT INTO posts (content, created_at, likes, comments, shares)
 VALUES
 ('Check out this cool new product!', '2022-01-01 13:00:00', 50, 10, 5),
 ('Had a great day at the beach!', '2022-01-02 14:30:00', 30, 5, 2),
 ('Just finished reading an amazing book!', '2022-01-03 15:30:00', 45, 8, 3),
 ('Excited for the weekend!', '2022-01-04 16:30:00', 60, 12, 6);
 
 INSERT INTO interactions (user_id, post_id, type, created_at)
 VALUES
 (1, 1, 'L', '2022-01-01 13:30:00'),
 (2, 2, 'L', '2022-01-02 15:00:00'),
 (3, 3, 'C', '2022-01-03 16:00:00'),
 (4, 1, 'S', '2022-01-04 17:00:00');
 */
-- 1. Analysing the dat
USE social_media;
-- 2. post with most likes
SELECT content,
    likes
FROM posts
ORDER BY likes DESC;
-- 3. top 3 users with most followers
SELECT full_name,
    followers
FROM users
ORDER BY followers DESC
LIMIT 3;
-- 4. percentage of likes, comments & shares for each post
SELECT content,
    CONCAT(
        ROUND(
            CAST(likes AS DECIMAL(10, 2)) * 100 / (likes + comments + shares),
            2
        ),
        '%'
    ) AS likes,
    CONCAT(
        ROUND(
            CAST(comments AS DECIMAL(10, 2)) * 100 / (likes + comments + shares),
            2
        ),
        '%'
    ) AS comments,
    CONCAT(
        ROUND(
            CAST(shares AS DECIMAL(10, 2)) * 100 / (likes + comments + shares),
            2
        ),
        '%'
    ) AS shares
FROM posts;