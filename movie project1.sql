Create schema movies;
Use movies;

CREATE TABLE Users (
    User_ID INT PRIMARY KEY AUTO_INCREMENT,
    Username VARCHAR(50) NOT NULL UNIQUE,
    Email VARCHAR(100) NOT NULL UNIQUE,
    Password VARCHAR(255) NOT NULL,
    Subscription_Plan_ID INT,
    Join_Date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (Subscription_Plan_ID) REFERENCES Subscription_Plans(Subscription_Plan_ID));

INSERT INTO Users (Username, Email, Password, Subscription_Plan_ID)
VALUES
('john_doe', 'john.doe@example.com', 'hashed_password_1', 1),
('jane_smith', 'jane.smith@example.com', 'hashed_password_2', 2),
('samuel_jones', 'sam.jones@example.com', 'hashed_password_3', 3),
('lucy_white', 'lucy.white@example.com', 'hashed_password_4', 1),
('michael_brown', 'mike.brown@example.com', 'hashed_password_5', 2),
('emily_davis', 'emily.davis@example.com', 'hashed_password_6', 3),
('david_wilson', 'david.wilson@example.com', 'hashed_password_7', 1),
('linda_martin', 'linda.martin@example.com', 'hashed_password_8', 2),
('charles_clark', 'charles.clark@example.com', 'hashed_password_9', 1),
('susan_lee', 'susan.lee@example.com', 'hashed_password_10', 3);



CREATE TABLE Subscription_Plans (
    Subscription_Plan_ID INT PRIMARY KEY AUTO_INCREMENT,
    Plan_Name VARCHAR(50) NOT NULL,
    Price DECIMAL(10, 2) NOT NULL,
    Max_Screens INT NOT NULL,  -- Number of screens a user can stream simultaneously
    Available_Resolution VARCHAR(50) NOT NULL -- e.g., SD, HD, 4K
);

INSERT INTO Subscription_Plans (Plan_Name, Price, Max_Screens, Available_Resolution)
VALUES
('Basic', 9.99, 1, 'SD'),
('Standard', 14.99, 2, 'HD'),
('Premium', 19.99, 4, '4K'),
('Family', 24.99, 6, '4K'),
('Student', 7.99, 1, 'HD'),
('Basic Plus', 12.99, 2, 'HD'),
('Pro', 29.99, 5, '4K'),
('Ultra', 34.99, 10, '4K'),
('Business', 49.99, 15, '4K'),
('Elite', 59.99, 20, '4K');


CREATE TABLE Movies (
    Movie_ID INT PRIMARY KEY AUTO_INCREMENT,
    Title VARCHAR(255) NOT NULL,
    Release_Date DATE,
    Duration INT, -- in minutes
    Description TEXT,
    Genre_ID INT,
    FOREIGN KEY (Genre_ID) REFERENCES Genres(Genre_ID)
);

INSERT INTO Movies (Title, Release_Date, Duration, Description, Genre_ID)
VALUES
('The Dark Knight', '2008-07-18', 152, 'A vigilante known as Batman faces the Joker, a criminal mastermind who seeks to create chaos in Gotham City.', 1),
('Inception', '2010-07-16', 148, 'A thief who steals corporate secrets through the use of dream-sharing technology is tasked with planting an idea into the mind of a CEO.', 2),
('The Matrix', '1999-03-31', 136, 'A computer hacker learns from mysterious rebels about the true nature of his reality and his role in the war against its controllers.', 1),
('Avengers: Endgame', '2019-04-26', 181, 'The Avengers assemble once more to reverse the damage caused by Thanos in the previous film.', 3),
('The Shawshank Redemption', '1994-09-23', 142, 'Two imprisoned men form a deep friendship, finding solace and eventual redemption through acts of common decency.', 4),
('Titanic', '1997-12-19', 195, 'A seventeen-year-old aristocrat falls in love with a kind but poor artist aboard the luxurious, ill-fated R.M.S. Titanic.', 5),
('The Godfather', '1972-03-24', 175, 'The aging patriarch of an organized crime dynasty transfers control of his clandestine empire to his reluctant son.', 1),
('Forrest Gump', '1994-07-06', 142, 'The presidencies of Kennedy and Johnson, the events of Vietnam, the Watergate scandal and other historical events unfold from the perspective of an Alabama man with an extraordinary life story.', 6),
('The Lion King', '1994-06-15', 88, 'A young lion prince flees his kingdom only to learn the true meaning of responsibility and bravery.', 7),
('Jurassic Park', '1993-06-11', 127, 'During a preview tour, a theme park suffers a major power breakdown that allows its cloned dinosaur exhibits to run wild.', 8);


CREATE TABLE Genres (
    Genre_ID INT PRIMARY KEY AUTO_INCREMENT,
    Genre_Name VARCHAR(50) NOT NULL
);

INSERT INTO Genres (Genre_Name)
VALUES
('Action'),
('Sci-Fi'),
('Superhero'),
('Drama'),
('Romance'),
('Comedy'),
('Animation'),
('Thriller'),
('Adventure'),
('Horror');


CREATE TABLE Actors (
    Actor_ID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    Date_Of_Birth DATE
);

INSERT INTO Actors (Name, Date_Of_Birth)
VALUES
('Robert Downey Jr.', '1965-04-04'),
('Scarlett Johansson', '1984-11-22'),
('Leonardo DiCaprio', '1974-11-11'),
('Meryl Streep', '1949-06-22'),
('Tom Hanks', '1956-07-09'),
('Jennifer Lawrence', '1990-08-15'),
('Morgan Freeman', '1937-06-01'),
('Emma Stone', '1988-11-06'),
('Brad Pitt', '1963-12-18'),
('Natalie Portman', '1981-06-09');




CREATE TABLE Movie_Actors (
    Movie_ID INT,
    Actor_ID INT,
    PRIMARY KEY (Movie_ID, Actor_ID),
    FOREIGN KEY (Movie_ID) REFERENCES Movies(Movie_ID),
    FOREIGN KEY (Actor_ID) REFERENCES Actors(Actor_ID)
);

INSERT INTO Movie_Actors (Movie_ID, Actor_ID)
VALUES
(1, 1),  -- The Dark Knight, Robert Downey Jr.
(1, 2),  -- The Dark Knight, Scarlett Johansson
(2, 3),  -- Inception, Leonardo DiCaprio
(2, 4),  -- Inception, Meryl Streep
(3, 5),  -- The Matrix, Tom Hanks
(4, 6),  -- Avengers: Endgame, Jennifer Lawrence
(4, 7),  -- Avengers: Endgame, Morgan Freeman
(5, 8),  -- The Shawshank Redemption, Emma Stone
(6, 9),  -- Titanic, Brad Pitt
(7, 10); -- The Godfather, Natalie Portman


CREATE TABLE Ratings (
    Rating_ID INT PRIMARY KEY AUTO_INCREMENT,
    User_ID INT,
    Movie_ID INT,
    Rating INT CHECK (Rating BETWEEN 1 AND 5), -- Rating scale from 1 to 5
    Review TEXT,
    Rating_Date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (User_ID) REFERENCES Users(User_ID),
    FOREIGN KEY (Movie_ID) REFERENCES Movies(Movie_ID)
);

INSERT INTO Ratings (User_ID, Movie_ID, Rating, Review)
VALUES
(1, 1, 5, 'Amazing movie with an incredible performance by Heath Ledger as the Joker!'),
(2, 2, 4, 'A mind-bending experience, but the plot could have been clearer in some parts.'),
(3, 3, 5, 'One of the best sci-fi movies of all time, with an unforgettable story and visuals.'),
(4, 4, 5, 'An epic conclusion to the Marvel saga. The emotional moments really hit hard.'),
(5, 5, 4, 'A classic with powerful performances, but it was a bit long for my taste.'),
(6, 6, 3, 'A bit too sentimental for me, but still a visually stunning film.'),
(7, 7, 5, 'The Godfather is a masterpiece of cinema. Marlon Brando is unforgettable.'),
(8, 8, 4, 'A heartfelt and well-executed drama, though I wish it had a faster pace.'),
(9, 9, 5, 'Titanic is a timeless love story, beautifully told with breathtaking visuals.'),
(10, 10, 3, 'Great acting but I didn’t connect with the plot or characters as much as others.');


CREATE TABLE Watchlists (
    User_ID INT,
    Movie_ID INT,
    PRIMARY KEY (User_ID, Movie_ID),
    Date_Added TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (User_ID) REFERENCES Users(User_ID),
    FOREIGN KEY (Movie_ID) REFERENCES Movies(Movie_ID)
);

INSERT INTO Watchlists (User_ID, Movie_ID)
VALUES
(1, 1),  -- User 1 added The Dark Knight to their watchlist
(1, 2),  -- User 1 added Inception to their watchlist
(2, 3),  -- User 2 added The Matrix to their watchlist
(3, 4),  -- User 3 added Avengers: Endgame to their watchlist
(4, 5),  -- User 4 added The Shawshank Redemption to their watchlist
(5, 6),  -- User 5 added Titanic to their watchlist
(6, 7),  -- User 6 added The Godfather to their watchlist
(7, 8),  -- User 7 added Forrest Gump to their watchlist
(8, 9),  -- User 8 added The Lion King to their watchlist
(9, 10); -- User 9 added Jurassic Park to their watchlist


CREATE TABLE Subscriptions (
    Subscription_ID INT PRIMARY KEY AUTO_INCREMENT,
    User_ID INT,
    Subscription_Plan_ID INT,
    Start_Date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    End_Date TIMESTAMP,
    FOREIGN KEY (User_ID) REFERENCES Users(User_ID),
    FOREIGN KEY (Subscription_Plan_ID) REFERENCES Subscription_Plans(Subscription_Plan_ID)
);


INSERT INTO Subscriptions (User_ID, Subscription_Plan_ID, End_Date)
VALUES
(1, 1, '2025-08-01'),  -- User 1 subscribed to Basic plan
(2, 2, '2025-09-15'),  -- User 2 subscribed to Standard plan
(3, 3, '2025-12-01'),  -- User 3 subscribed to Premium plan
(4, 4, '2025-07-20'),  -- User 4 subscribed to Family plan
(5, 5, '2025-05-10'),  -- User 5 subscribed to Student plan
(6, 6, '2025-11-25'),  -- User 6 subscribed to Basic Plus plan
(7, 7, '2025-06-30'),  -- User 7 subscribed to Pro plan
(8, 8, '2025-10-05'),  -- User 8 subscribed to Ultra plan
(9, 9, '2025-12-15'),  -- User 9 subscribed to Business plan
(10, 10, '2025-04-01'); -- User 10 subscribed to Elite plan

select * from Users;
select * from Subscription_Plans;
select * from Movies;
select * from genres;
select * from actors;
select * from movie_actors;
select * from ratings;
select * from Watchlists;
select * from Subscriptions;




-- 1. Find all movies that belong to the "Action" genre.

SELECT Title, Release_Date, Duration
FROM Movies
JOIN Genres ON Movies.Genre_ID = Genres.Genre_ID
WHERE Genres.Genre_Name = 'Action';


-- 2. Get a list of all users who are subscribed to the "Premium" plan.

SELECT Username, Email
FROM Users
JOIN Subscriptions ON Users.User_ID = Subscriptions.User_ID
JOIN Subscription_Plans ON Subscriptions.Subscription_Plan_ID = Subscription_Plans.Subscription_Plan_ID
WHERE Subscription_Plans.Plan_Name = 'Premium';


-- 3. Find all movies rated 5 stars.

SELECT Movies.Title, Ratings.Rating, Ratings.Review
FROM Movies
JOIN Ratings ON Movies.Movie_ID = Ratings.Movie_ID
WHERE Ratings.Rating = 5;


-- 4. Get the most recent movies added to the database.

SELECT Title, Release_Date
FROM Movies
ORDER BY Release_Date DESC
LIMIT 5;


-- 5. Find the actors that appeared in "The Dark Knight" and list their names.

SELECT Actors.Name
FROM Movie_Actors
JOIN Actors ON Movie_Actors.Actor_ID = Actors.Actor_ID
JOIN Movies ON Movie_Actors.Movie_ID = Movies.Movie_ID
WHERE Movies.Title = 'The Dark Knight';


-- 6. Get the total number of movies in each genre.

SELECT Genres.Genre_Name, COUNT(Movies.Movie_ID) AS Movie_Count
FROM Movies
JOIN Genres ON Movies.Genre_ID = Genres.Genre_ID
GROUP BY Genres.Genre_Name;


-- 7. Get the average rating of each movie.

SELECT Movies.Title, AVG(Ratings.Rating) AS Average_Rating
FROM Movies
JOIN Ratings ON Movies.Movie_ID = Ratings.Movie_ID
GROUP BY Movies.Movie_ID;


-- 8. Get the total number of users in each subscription plan.

SELECT Subscription_Plans.Plan_Name, COUNT(Users.User_ID) AS User_Count
FROM Users
JOIN Subscriptions ON Users.User_ID = Subscriptions.User_ID
JOIN Subscription_Plans ON Subscriptions.Subscription_Plan_ID = Subscription_Plans.Subscription_Plan_ID
GROUP BY Subscription_Plans.Plan_Name;


-- 9. Find all movies that are in the "Sci-Fi" genre and have a duration of more than 150 minutes.

SELECT Title, Duration
FROM Movies
JOIN Genres ON Movies.Genre_ID = Genres.Genre_ID
WHERE Genres.Genre_Name = 'Sci-Fi' AND Movies.Duration > 100;

SELECT Title, Duration
FROM Movies
JOIN Genres ON Movies.Genre_ID = Genres.Genre_ID
WHERE Movies.Duration > 100;

-- 10. Get the usernames of users who have added "The Godfather" to their watchlist.

SELECT Users.Username
FROM Watchlists
JOIN Users ON Watchlists.User_ID = Users.User_ID
JOIN Movies ON Watchlists.Movie_ID = Movies.Movie_ID
WHERE Movies.Title = 'The Godfather';


-- 11. Find all actors who have acted in movies of the "Drama" genre.

SELECT DISTINCT Actors.Name
FROM Movie_Actors
JOIN Movies ON Movie_Actors.Movie_ID = Movies.Movie_ID
JOIN Genres ON Movies.Genre_ID = Genres.Genre_ID
JOIN Actors ON Movie_Actors.Actor_ID = Actors.Actor_ID
WHERE Genres.Genre_Name = 'Drama';


-- 12. Get the list of all users and the plan they are currently subscribed to.

SELECT Users.Username, Subscription_Plans.Plan_Name
FROM Users
JOIN Subscriptions ON Users.User_ID = Subscriptions.User_ID
JOIN Subscription_Plans ON Subscriptions.Subscription_Plan_ID = Subscription_Plans.Subscription_Plan_ID
WHERE Subscriptions.End_Date > CURRENT_TIMESTAMP;


-- 13. Find the users who have rated "The Matrix" and their rating.

SELECT Users.Username, Ratings.Rating
FROM Ratings
JOIN Users ON Ratings.User_ID = Users.User_ID
JOIN Movies ON Ratings.Movie_ID = Movies.Movie_ID
WHERE Movies.Title = 'The Matrix';


-- 14. Get the list of all movies and their genres.

SELECT Movies.Title, Genres.Genre_Name
FROM Movies
left JOIN Genres ON Movies.Genre_ID = Genres.Genre_ID;


-- 15. Get the number of movies each actor has appeared in.

SELECT Actors.Name, COUNT(Movie_Actors.Movie_ID) AS Movie_Count
FROM Movie_Actors
JOIN Actors ON Movie_Actors.Actor_ID = Actors.Actor_ID
GROUP BY Actors.Actor_ID;


-- 16. Find all users whose subscription will expire within the next 30 days.

SELECT Users.Username, Subscriptions.End_Date
FROM Users
JOIN Subscriptions ON Users.User_ID = Subscriptions.User_ID
WHERE Subscriptions.End_Date BETWEEN CURRENT_TIMESTAMP AND DATE_ADD(CURRENT_TIMESTAMP, INTERVAL 30 DAY);


-- 17. Get a list of all movies released before the year 2000.

SELECT Title, Release_Date
FROM Movies
WHERE Release_Date < '2000-01-01';


-- 18. Get all movies that have a "4K" resolution available in their subscription plan.

SELECT Movies.Title
FROM Movies
right JOIN Subscription_Plans ON Movies.Genre_ID = Subscription_Plans.Subscription_Plan_ID
WHERE Subscription_Plans.Available_Resolution = '4K';


-- 19. Find all movies rated by User 1.

SELECT Movies.Title, Ratings.Rating, Ratings.Review
FROM Movies
cross JOIN Ratings ON Movies.Movie_ID = Ratings.Movie_ID
WHERE Ratings.User_ID = 1;


-- 20. Find all users who have watched the movie "Jurassic Park" and their subscription plan.

SELECT Users.Username, Subscription_Plans.Plan_Name
FROM Watchlists
JOIN Users ON Watchlists.User_ID = Users.User_ID
JOIN Movies ON Watchlists.Movie_ID = Movies.Movie_ID
JOIN Subscriptions ON Users.User_ID = Subscriptions.User_ID
JOIN Subscription_Plans ON Subscriptions.Subscription_Plan_ID = Subscription_Plans.Subscription_Plan_ID
WHERE Movies.Title = 'Jurassic Park';


SELECT Users.Username, Subscription_Plans.Plan_Name
FROM Watchlists
JOIN Users ON Watchlists.User_ID = Users.User_ID
JOIN Movies ON Watchlists.Movie_ID = Movies.Movie_ID
JOIN Subscriptions ON Users.User_ID = Subscriptions.User_ID
JOIN Subscription_Plans ON Subscriptions.Subscription_Plan_ID = Subscription_Plans.Subscription_Plan_ID;

-- cross joins
SELECT * FROM Watchlists
CROSS JOIN  Movies;

-- full joins cannot run in my sql so we use union

SELECT Users.User_ID, Users.Username, Movies.Movie_ID, Movies.Title
FROM Users
LEFT JOIN Watchlists ON Users.User_ID = Watchlists.User_ID
LEFT JOIN Movies ON Watchlists.Movie_ID = Movies.Movie_ID

UNION

SELECT Users.User_ID, Users.Username, Movies.Movie_ID, Movies.Title
FROM Users
RIGHT JOIN Watchlists ON Users.User_ID = Watchlists.User_ID
RIGHT JOIN Movies ON Watchlists.Movie_ID = Movies.Movie_ID;

select genre_name, count(*) from Genres
group by genre_name;
