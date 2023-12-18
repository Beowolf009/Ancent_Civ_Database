/* 
comments, number or likes on comments, comments of comments, number of comments on comments
needs user, post, date, time, userimage, comment images,  comment_text will be an object saved as a blob, 
and will be stored in a seperate table

views, reply, like, loves, user(firstname),(familyname), date, time, userimage, postimages,
post_text will be an object saved as a blob, and will be stored in a seperate table
 */


CREATE TABLE post_replies
(
  post_replies_id INT NOT NULL PRIMARY KEY
)
