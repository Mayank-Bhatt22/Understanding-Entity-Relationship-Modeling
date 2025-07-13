-- DATABASE NO 6

CREATE DATABASE Social_Media_Network_system;

USE Social_Media_Network_system;

-- User Table
CREATE TABLE User_Profile (
User_ID INT PRIMARY KEY,
Name VARCHAR(100),
Email VARCHAR(100)
);

-- Post Table
CREATE TABLE Post (
Post_ID INT PRIMARY KEY,
Content TEXT,
Date_Posted DATE
);

-- Comment Table
CREATE TABLE Comment (
Comment_ID INT PRIMARY KEY,
Text TEXT,
Date DATE
);

-- Writes Relationship (User = Post)
CREATE TABLE Writes (
User_ID INT,
Post_ID INT,
CONSTRAINT FOREIGN KEY (User_ID) REFERENCES User_Profile(User_ID),
CONSTRAINT FOREIGN KEY (Post_ID) REFERENCES Post(Post_ID)
);

-- CommentsOn Relationship (User = Post) via Comment
CREATE TABLE CommentsOn (
User_ID INT,
Post_ID INT,
Comment_ID INT,
CONSTRAINT FOREIGN KEY (User_ID) REFERENCES User_Profile(User_ID),
CONSTRAINT FOREIGN KEY (Post_ID) REFERENCES Post(Post_ID),
CONSTRAINT FOREIGN KEY (Comment_ID) REFERENCES Comment(Comment_ID)
);

-- Follows Relationship (User = User) [Recursive]
CREATE TABLE Follows (
Follower_ID INT,
Following_ID INT,
CONSTRAINT FOREIGN KEY (Follower_ID) REFERENCES User_Profile(User_ID),
CONSTRAINT FOREIGN KEY (Following_ID) REFERENCES User_Profile(User_ID)
);

INSERT INTO User_Profile (User_ID, Name, Email) VALUES
(1, 'Mayank Bhatt', 'mayank@example.com'),
(2, 'Simran Kaur', 'simran@example.com'),
(3, 'Ravi Sharma', 'ravi@example.com'),
(4, 'Riya Mehra', 'riya@example.com'),
(5, 'Raj Patel', 'raj@example.com');

SELECT * FROM User_Profile;

INSERT INTO Post (Post_ID, Content, Date_Posted) VALUES
(101, 'Learning SQL today!', '2025-07-10'),
(102, 'Just finished a project.', '2025-07-11'),
(103, 'What’s your favorite tech stack?', '2025-07-12'),
(104, 'Feeling productive.', '2025-07-13'),
(105, 'Let’s connect!', '2025-07-14');

SELECT * FROM Post;

INSERT INTO Comment (Comment_ID, Text, Date) VALUES
(1001, 'Great post!', '2025-07-10'),
(1002, 'Same here!', '2025-07-11'),
(1003, 'Nice stack.', '2025-07-12'),
(1004, 'Keep it up!', '2025-07-13'),
(1005, 'Sure!', '2025-07-14');

SELECT * FROM Comment;

INSERT INTO Writes (User_ID, Post_ID) VALUES
(1, 101),
(2, 102),
(3, 103),
(4, 104),
(5, 105);

SELECT * FROM Writes;

INSERT INTO CommentsOn (User_ID, Post_ID, Comment_ID) VALUES
(2, 101, 1001),
(3, 102, 1002),
(4, 103, 1003),
(5, 104, 1004),
(1, 105, 1005);

SELECT * FROM CommentsOn;

INSERT INTO Follows (Follower_ID, Following_ID) VALUES
(1, 2),
(2, 3),
(3, 4),
(4, 5),
(5, 1);  

SELECT * FROM Follows;
