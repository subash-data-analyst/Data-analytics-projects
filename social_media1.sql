create database if not exists social_media1;
use social_media1;

CREATE TABLE Users (
    User_ID INT PRIMARY KEY AUTO_INCREMENT,
    Username VARCHAR(50) NOT NULL UNIQUE,
    Email VARCHAR(100) NOT NULL UNIQUE,
    Password VARCHAR(255) NOT NULL,
    Full_Name VARCHAR(100),
    Profile_Pic_URL VARCHAR(255),
    Join_Date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO Users (Username, Email, Password, Full_Name, Profile_Pic_URL) 
VALUES 
('john_doe', 'john.doe@example.com', 'hashed_password_1', 'John Doe', 'https://example.com/profile_pics/john_doe.jpg'),
('jane_smith', 'jane.smith@example.com', 'hashed_password_2', 'Jane Smith', 'https://example.com/profile_pics/jane_smith.jpg'),
('sam_jones', 'sam.jones@example.com', 'hashed_password_3', 'Samuel Jones', 'https://example.com/profile_pics/sam_jones.jpg'),
('lucy_white', 'lucy.white@example.com', 'hashed_password_4', 'Lucy White', 'https://example.com/profile_pics/lucy_white.jpg'),
('michael_brown', 'michael.brown@example.com', 'hashed_password_5', 'Michael Brown', 'https://example.com/profile_pics/michael_brown.jpg');


CREATE TABLE Profiles (
    Profile_ID INT PRIMARY KEY AUTO_INCREMENT,
    User_ID INT,
    Bio TEXT,
    Website_URL VARCHAR(255),
    Date_Of_Birth DATE,
    Location VARCHAR(100),
    FOREIGN KEY (User_ID) REFERENCES Users(User_ID)
);

INSERT INTO Profiles (User_ID, Bio, Website_URL, Date_Of_Birth, Location) 
VALUES 
(1, 'Software developer and tech enthusiast. Passionate about coding and open-source projects.', 'https://johndoe.dev', '1990-05-15', 'New York, USA'),
(2, 'Graphic designer and digital artist. Love creating visually compelling designs for brands.', 'https://janesmithdesigns.com', '1985-08-20', 'Los Angeles, USA'),
(3, 'Movie buff and aspiring film critic. Always on the lookout for thought-provoking cinema.', 'https://samjonesmovies.com', '1992-11-02', 'London, UK'),
(4, 'Marketing professional with a knack for social media strategy. Enjoys building brands online.', 'https://lucywhite.com', '1991-03-25', 'Toronto, Canada'),
(5, 'Fitness enthusiast and health coach. Helping others achieve their fitness goals.', 'https://mikebrownsfitness.com', '1988-01-30', 'San Francisco, USA');


CREATE TABLE Posts (
    Post_ID INT PRIMARY KEY AUTO_INCREMENT,
    User_ID INT,
    Content TEXT,  -- Text content of the post
    Media_URL VARCHAR(255),  -- URL to the image/video (if any)
    Post_Type ENUM('text', 'image', 'video') NOT NULL, -- Specifies type of post (text, image, video)
    Post_Date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (User_ID) REFERENCES Users(User_ID)
);

INSERT INTO Posts (User_ID, Content, Media_URL, Post_Type)
VALUES
(1, 'Had a great day at the beach!', NULL, 'text'),
(2, 'Check out this awesome sunset photo I took!', 'https://example.com/sunset.jpg', 'image'),
(3, 'Watch my new dance video!', 'https://example.com/dance.mp4', 'video'),
(4, 'Just finished reading a great book, highly recommend it!', NULL, 'text'),
(5, 'Loving the new cafe in town. Highly recommend the cappuccino!', NULL, 'text');


CREATE TABLE Likes (
    Like_ID INT PRIMARY KEY AUTO_INCREMENT,
    User_ID INT,
    Post_ID INT,
    Like_Date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (User_ID) REFERENCES Users(User_ID),
    FOREIGN KEY (Post_ID) REFERENCES Posts(Post_ID)
);

INSERT INTO Likes (User_ID, Post_ID)
VALUES
(1, 2),  -- User 1 liked Post 2
(2, 1),  -- User 2 liked Post 1
(3, 4),  -- User 3 liked Post 4
(4, 5),  -- User 4 liked Post 5
(5, 3);  -- User 5 liked Post 3


CREATE TABLE Comments (
    Comment_ID INT PRIMARY KEY AUTO_INCREMENT,
    User_ID INT,
    Post_ID INT,
    Comment_Text TEXT,
    Comment_Date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (User_ID) REFERENCES Users(User_ID),
    FOREIGN KEY (Post_ID) REFERENCES Posts(Post_ID)
);

INSERT INTO Comments (User_ID, Post_ID, Comment_Text)
VALUES
(1, 2, 'Wow, this sunset photo is stunning!'),
(2, 3, 'This dance video is amazing, I love your moves!'),
(3, 5, 'I totally agree, that cappuccino is the best!'),
(4, 7, 'Great tutorial, I’m going to try building a website now!'),
(5, 6, 'Your puppy is so cute, I want one too!');


CREATE TABLE Followers (
    Follower_ID INT,
    Following_ID INT,
    Follow_Date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (Follower_ID, Following_ID),
    FOREIGN KEY (Follower_ID) REFERENCES Users(User_ID),
    FOREIGN KEY (Following_ID) REFERENCES Users(User_ID)
);

INSERT INTO Followers (Follower_ID, Following_ID)
VALUES
(1, 2),  -- User 1 follows User 2
(2, 3),  -- User 2 follows User 3
(3, 4),  -- User 3 follows User 4
(4, 5),  -- User 4 follows User 5
(5, 1);  -- User 5 follows User 1

CREATE TABLE Direct_Messages (
    Message_ID INT PRIMARY KEY AUTO_INCREMENT,
    Sender_ID INT,
    Receiver_ID INT,
    Message_Text TEXT,
    Media_URL VARCHAR(255),  -- For images/videos shared in messages
    Message_Date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (Sender_ID) REFERENCES Users(User_ID),
    FOREIGN KEY (Receiver_ID) REFERENCES Users(User_ID)
);
INSERT INTO Direct_Messages (Sender_ID, Receiver_ID, Message_Text, Media_URL)
VALUES
(1, 2, 'Hey, how are you?', NULL),  -- User 1 sent a text message to User 2
(2, 3, 'Check out this cool video!', 'https://example.com/video.mp4'),  -- User 2 sent a video to User 3
(3, 4, 'I’ve attached the report you asked for.', 'https://example.com/report.pdf'),  -- User 3 sent a file to User 4
(4, 5, 'Let’s catch up soon!', NULL),  -- User 4 sent a text message to User 5
(5, 1, 'Here’s a picture from the event yesterday!', 'https://example.com/event.jpg');  -- User 5 sent a picture to User 1


CREATE TABLE Notifications (
    Notification_ID INT PRIMARY KEY AUTO_INCREMENT,
    User_ID INT,  -- User who will receive the notification
    Notification_Type ENUM('like', 'comment', 'follow', 'message') NOT NULL,
    Related_User_ID INT,  -- User related to the notification (e.g., the user who liked, commented, or followed)
    Related_Post_ID INT,  -- Post related to the notification (for likes/comments)
    Message TEXT,
    Notification_Date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    Is_Read BOOLEAN DEFAULT FALSE,
    FOREIGN KEY (User_ID) REFERENCES Users(User_ID),
    FOREIGN KEY (Related_User_ID) REFERENCES Users(User_ID),
    FOREIGN KEY (Related_Post_ID) REFERENCES Posts(Post_ID)
);

INSERT INTO Notifications (User_ID, Notification_Type, Related_User_ID, Related_Post_ID, Message)
VALUES
(1, 'like', 2, 3, 'User 2 liked your post!'),  -- User 1 gets a notification that User 2 liked their post 3
(2, 'comment', 3, 5, 'User 3 commented on your post: "Great cappuccino!"'),  -- User 2 gets a notification about User 3's comment on Post 5
(3, 'follow', 4, NULL, 'User 4 started following you!'),  -- User 3 gets a notification about User 4 following them
(4, 'message', 5, NULL, 'You have a new message from User 5!'),  -- User 4 gets a notification about a new message from User 5
(5, 'like', 1, 2, 'User 1 liked your photo!');  -- User 5 gets a notification that User 1 liked their post 2

select * from users;
select * from profiles;
select * from posts;
select * from notifications;
select * from likes;
select * from followers;
select * from direct_messages;
select * from comments;

SELECT * FROM Direct_Messages 
WHERE (Sender_ID = 1 AND Receiver_ID = 2) OR (Sender_ID = 2 AND Receiver_ID = 1);

SELECT * FROM Posts WHERE Media_URL IS not  NULL;

-- Get the most recent direct messages sent by User 5:
SELECT * FROM Direct_Messages
 WHERE Sender_ID = 5
 ORDER BY Message_Date DESC
 LIMIT 5;


-- Get all users who liked a post (e.g., Post 3):
SELECT Users.Username 
FROM Users
JOIN Likes 
ON Users.User_ID = Likes.User_ID
WHERE Likes.Post_ID = 3;


-- Find all posts made after a specific date (e.g., after 2023-01-01):
SELECT * FROM Posts WHERE Post_Date > '2023-01-01';

-- Get all notifications that are unread for a user (e.g., User 1):
SELECT * FROM Notifications WHERE User_ID = 1 AND Is_Read = FALSE;

-- Get all comments by User 1 on User 2’s posts:
SELECT * FROM Comments
WHERE User_ID = 1 AND Post_ID IN (SELECT Post_ID FROM Posts WHERE User_ID = 2);

-- Get the number of followers for a specific user (e.g., User 1):
SELECT COUNT(*) FROM Followers WHERE Following_ID = 1;

-- Get the number of users User 1 is following:
SELECT COUNT(*) FROM Followers WHERE Follower_ID = 1;

-- Get all posts of type 'text' made by User 1:
SELECT * FROM Posts WHERE User_ID = 1 AND Post_Type = 'text';

-- Get all direct messages that contain media (images or videos):
SELECT * FROM Direct_Messages WHERE Media_URL IS NOT NULL;


-- 1. Find the most popular post based on likes and comments.


SELECT p.Post_ID, p.Content, COUNT(l.Like_ID) AS Like_Count, COUNT(c.Comment_ID) AS Comment_Count
FROM Posts p
LEFT JOIN Likes l ON p.Post_ID = l.Post_ID
LEFT JOIN Comments c ON p.Post_ID = c.Post_ID
GROUP BY p.Post_ID
ORDER BY (COUNT(l.Like_ID) + COUNT(c.Comment_ID)) DESC;

-- 2. Get a list of users and the total number of posts, comments, and likes they've made.

SELECT u.User_ID, u.Username,
       COUNT(DISTINCT p.Post_ID) AS Total_Posts,
       COUNT(DISTINCT c.Comment_ID) AS Total_Comments,
       COUNT(DISTINCT l.Like_ID) AS Total_Likes
FROM Users u
LEFT JOIN Posts p ON u.User_ID = p.User_ID
LEFT JOIN Comments c ON u.User_ID = c.User_ID
LEFT JOIN Likes l ON u.User_ID = l.User_ID
GROUP BY u.User_ID
ORDER BY Total_Posts DESC, Total_Comments DESC;


-- 3. Get the 5 most recent comments made on posts by users who follow User 1.

SELECT c.Comment_Text, c.Comment_Date, p.Content AS Post_Content, u.Username AS Commenter
FROM Comments c
JOIN Posts p ON c.Post_ID = p.Post_ID
JOIN Users u ON c.User_ID = u.User_ID
WHERE p.User_ID = 1 AND c.User_ID IN (SELECT Follower_ID FROM Followers WHERE Following_ID = 1)
ORDER BY c.Comment_Date DESC
LIMIT 5;

-- 4. Get a list of users who have both liked and commented on a specific post (e.g., Post 3).

SELECT DISTINCT u.Username
FROM Users u
JOIN Likes l ON u.User_ID = l.User_ID
JOIN Comments c ON u.User_ID = c.User_ID
WHERE l.Post_ID = 3 AND c.Post_ID = 3;

-- 5. Find the top 3 users who have the most followers.

SELECT u.User_ID, u.Username, COUNT(f.Follower_ID) AS Follower_Count
FROM Users u
LEFT JOIN Followers f ON u.User_ID = f.Following_ID
GROUP BY u.User_ID
ORDER BY Follower_Count DESC
LIMIT 3;

-- 6. Get a list of posts made by users who have the same location as User 1.

SELECT p.Post_ID, p.User_ID
FROM Posts p
JOIN Users u ON p.User_ID = u.User_ID
WHERE u.Location = (SELECT Location FROM Users WHERE User_ID = 1); -- no location



-- 7. Find all posts that have the highest number of likes and comments combined in a specific time range.

SELECT p.Post_ID, p.Content, COUNT(l.Like_ID) AS Like_Count, COUNT(c.Comment_ID) AS Comment_Count
FROM Posts p
LEFT JOIN Likes l ON p.Post_ID = l.Post_ID
LEFT JOIN Comments c ON p.Post_ID = c.Post_ID
GROUP BY p.Post_ID
ORDER BY (COUNT(l.Like_ID) + COUNT(c.Comment_ID)) DESC;


-- 8. Get the most liked and commented post for each user.


SELECT u.Username, p.Post_ID, p.Content,
       COUNT(l.Like_ID) AS Like_Count,
       COUNT(c.Comment_ID) AS Comment_Count
FROM Users u
JOIN Posts p ON u.User_ID = p.User_ID
LEFT JOIN Likes l ON p.Post_ID = l.Post_ID
LEFT JOIN Comments c ON p.Post_ID = c.Post_ID
GROUP BY u.User_ID, p.Post_ID
HAVING COUNT(l.Like_ID) + COUNT(c.Comment_ID) > 0
ORDER BY u.User_ID, COUNT(l.Like_ID) DESC, COUNT(c.Comment_ID) DESC;-


-- 9. Get the number of likes and comments for each post, along with the username of the user who created the post.

SELECT p.Post_ID, p.Content, u.Username AS Poster,
       COUNT(l.Like_ID) AS Like_Count, COUNT(c.Comment_ID) AS Comment_Count
FROM Posts p
JOIN Users u ON p.User_ID = u.User_ID
LEFT JOIN Likes l ON p.Post_ID = l.Post_ID
LEFT JOIN Comments c ON p.Post_ID = c.Post_ID
GROUP BY p.Post_ID
ORDER BY Like_Count DESC, Comment_Count DESC;

-- 10. Get a list of users who have sent messages containing media (images/videos), and the type of media they sent.

SELECT DISTINCT u.Username, dm.Media_URL, 
       CASE 
           WHEN dm.Media_URL LIKE '%.jpg%' THEN 'Image'
           WHEN dm.Media_URL LIKE '%.mp4%' THEN 'Video'
           ELSE 'Other'
       END AS Media_Type
FROM Users u
JOIN Direct_Messages dm ON u.User_ID = dm.Sender_ID
WHERE dm.Media_URL IS NOT NULL;



-- Check for posts in the given date range: Run a query to ensure there are posts within that date range:
SELECT p.Post_ID, p.Post_Date
FROM Posts p
WHERE p.Post_Date BETWEEN '2024-01-01' AND '2024-12-31';


-- Check if posts have likes or comments: Run a simpler query to check if the posts actually have likes and comments
SELECT p.Post_ID, COUNT(l.Like_ID) AS Like_Count, COUNT(c.Comment_ID) AS Comment_Count
FROM Posts p
LEFT JOIN Likes l ON p.Post_ID = l.Post_ID
LEFT JOIN Comments c ON p.Post_ID = c.Post_ID
GROUP BY p.Post_ID;



SELECT p.Post_ID, COUNT(l.Like_ID) + COUNT(c.Comment_ID) AS Total_Likes_And_Comments
FROM Posts p
LEFT JOIN Likes l ON p.Post_ID = l.Post_ID
LEFT JOIN Comments c ON p.Post_ID = c.Post_ID
GROUP BY p.Post_ID
HAVING Total_Likes_And_Comments > 0
ORDER BY Total_Likes_And_Comments DESC
LIMIT 1;






