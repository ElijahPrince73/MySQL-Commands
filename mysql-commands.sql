-- CREATE DATABASE instagram

-- CREATE TABLE users(
--     id INTEGER AUTO_INCREMENT PRIMARY KEY,
--     username VARCHAR(255) UNIQUE,
--     create_at TIMESTAMP DEFAULT NOW()
-- );

-- CREATE TABLE photos(
--     id INTEGER AUTO_INCREMENT PRIMARY KEY,
--     image_url VARCHAR(255) NOT NULL,
--     user_id INT NOT NULL,
--     create_at TIMESTAMP DEFAULT NOW(),
--     FOREIGN KEY(user_id) REFERENCES users(id)
-- )

-- CREATE TABLE comments(
--     id INTEGER AUTO_INCREMENT PRIMARY KEY,
--     comment_text VARCHAR(255),
--     user_id INT NOT NULL,
--     photo_id INT NOT NULL,
--     create_at TIMESTAMP DEFAULT NOW(),
--     FOREIGN KEY(user_id) REFERENCES users(id),
--     FOREIGN KEY(photo_id) REFERENCES photos(id)
-- )

-- CREATE TABLE likes(
--     user_id INT NOT NULL,
--     photo_id INT NOT NULL, 
--     FOREIGN KEY (user_id) REFERENCES users(id),
--     FOREIGN KEY(photo_id) REFERENCES photos(id),
--     PRIMARY KEY(user_id, photo_id)
-- )

-- CREATE TABLE follows(
--     follower_id INT NOT NULL,
--     followee_id INT NOT NULL,
--     create_at TIMESTAMP DEFAULT NOW(),
--     FOREIGN KEY (follower_id) REFERENCES users(id),
--     FOREIGN KEY (followee_id) REFERENCES users(id),
--     PRIMARY KEY (followee_id, follower_id)
-- )

-- CREATE TABLE tags (
--   id INTEGER AUTO_INCREMENT PRIMARY KEY,
--   tag_name VARCHAR(255) UNIQUE,
--   created_at TIMESTAMP DEFAULT NOW()
-- );
-- CREATE TABLE photo_tags (
--     photo_id INTEGER NOT NULL,
--     tag_id INTEGER NOT NULL,
--     FOREIGN KEY(photo_id) REFERENCES photos(id),
--     FOREIGN KEY(tag_id) REFERENCES tags(id),
--     PRIMARY KEY(photo_id, tag_id)
-- );

-- FINDING THE OLDEST USERS
-- SELECT * FROM users
-- ORDER BY created_at LIMIT 5;

-- MOST POPULAR REGISTRATION DATA
-- SELECT 
--     DAYNAME(created_at) AS day,
--     COUNT(*) AS total
-- FROM users
-- GROUP BY day
-- ORDER BY total DESC
-- LIMIT 2;

-- SELECT username
--  FROM users
-- LEFT JOIN photos
--   ON users.id = photos.user_id
-- WHERE photos.id IS NULL;

-- FIND MOST POPULAR PHOTO
-- SELECT 
--   username,
--   photos.id, 
--   photos.image_url, 
--   COUNT(*) AS total
-- FROM photos
-- INNER JOIN likes
--   ON likes.photo_id = photos.id
-- INNER JOIN users  
--   ON photos.user_id = users.id
-- GROUP BY photos.id
-- ORDER BY total DESC
-- LIMIT 1;

-- Average amount of posts
-- SELECT 
-- (SELECT COUNT(*) FROM photos) / (SELECT COUNT(*) FROM users)

-- Most popular hashtags
-- SELECT tags.tag_name, COUNT(*) AS total FROM photo_tags
-- JOIN tags
--   ON photo_tags.tag_id = tags.id
-- GROUP BY tags.id
-- ORDER BY total DESC
-- LIMIT 5

-- Finding bots
SELECT username, COUNT(*) AS total FROM users 
INNER JOIN likes
  ON users.id = likes.user_id
GROUP BY likes.user_id
HAVING total = (SELECT COUNT(*) FROM photos)