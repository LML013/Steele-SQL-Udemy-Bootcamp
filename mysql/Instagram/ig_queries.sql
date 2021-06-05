/*
-- Challenge 1 - Find the 5 oldest users
SELECT *
FROM users
ORDER BY created_at ASC
LIMIT 5;


-- Challenge 2 - Most popular registration date
SELECT 
    DAYNAME(created_at) AS day,
    COUNT(*) AS total
FROM users
GROUP BY day
ORDER BY total DESC
;


-- Challenge 3 - No Photo
SELECT
    username
FROM users
LEFT JOIN photos
    ON users.id = photos.user_id
WHERE photos.id IS NULL;


-- Challenge 4 - Most likes on a single photo
SELECT 
    username,
    photos.id,
    photos.image_url,
    COUNT(*) AS total
FROM photos
INNER JOIN likes
    ON likes.photo_id = photos.id
INNER JOIN users
    ON photos.user_id = users.id
GROUP BY photos.id
ORDER BY total DESC
LIMIT 1;


-- Challenge 5 - Average number of photos per user
-- total number of photos / total number of users
SELECT (SELECT COUNT(*) FROM photos) / (SELECT COUNT(*) FROM users) AS AVG;


-- Challenge 6 - Top 5 most commonly used hashtags
SELECT
    tag_name
    -- COUNT(*) AS total
FROM photo_tags
INNER JOIN tags
    ON photo_tags.tag_id = tags.id
GROUP BY tag_id
ORDER BY COUNT(*) DESC
LIMIT 5;
*/

-- Challenge 7 - Find users who have liked every single photo on the site
SELECT 
    username,
    COUNT(*) as num_likes
FROM users
INNER JOIN likes
    ON users.id = likes.user_id
GROUP BY likes.user_id
HAVING num_likes = (SELECT COUNT(*)
                    FROM photos)
;












