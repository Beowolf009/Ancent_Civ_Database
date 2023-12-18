/* creates User table
 For instance. I want to have user_names have a primary key, that can be queried using typical relational databse 
 methods, but I do not want to store posts, commenst and likes in a table like that, I want to create objects for 
 them and store the object as a realtional object


--Some additional notes: user emails will be stored as lower case, and will be checked as 
lower case when logging in. This is to prevent duplicate emails with different capitalization.
Noting this so the API can be designed accordingly.

--PW will be salted and hashed using Argon2. This is to prevent the possibility of a data breach.....added security to hash usernames???
--Also need a PW reset function, which will send an email to the user with a link to reset their PW
--Need to add a PW reset token column to the User table for this to work
--PW reset token will be a random string of characters, and will be stored in the DB as a hash
--Pw guidelines: 8-20 characters, at least one number, at least one special character, at least one capital letter, seems to be the standard???

userIs will be the primary key, and will be used to query the user table. This will be a unique identifier for each user and also use
as foreign key in other tables
 */

CREATE TABLE user_name
(
  user_id INT NOT NULL PRIMARY KEY,
  family_name VARCHAR(50) REFERENCES families(family_name) NOT NULL,
  user_email VARCHAR(100) unique NOT NULL,
  user_hashed_pw VARCHAR(60) NOT NULL,
  salt VARCHAR(29) NOT NULL
);





