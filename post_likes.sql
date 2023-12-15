/* Reasons for this table
Having a separate "likes" table makes it more efficient to perform queries related to likes. For example, you can easily 
count the number of likes for a post, find users who liked a particular post, or identify posts with the most likes.

Normalizing the schema helps minimize data redundancy. Without a separate "likes" table, you might need to add a list 
of user IDs directly in the posts table, leading to duplicated data if the same post receives multiple likes.

In scenarios where multiple users might like a post simultaneously, having a separate table allows for 
better concurrency control. It reduces the likelihood of 
conflicts when multiple users try to update the same post with a new like simultaneously.

Storing likes in a separate table helps maintain data integrity. Each like record can be associated with a specific 
user and post through foreign key relationships, ensuring that each like is valid and points to existing users and posts.

If you decide to add additional information about likes in the future (e.g., timestamps, additional metadata), 
having a separate table allows for easy extension without modifying the structure of the posts table.


PostId, UserId tied toi this table
 */



CREATE TABLE [dbo].[post_likes]
(
  [Like_Id] INT NOT NULL PRIMARY KEY,
  user_id int REFERENCES dbo.Users(User_Id),
  post_id int REFERENCES dbo.Posts(Post_Id),

)
