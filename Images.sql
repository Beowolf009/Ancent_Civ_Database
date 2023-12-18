/* 
  This script creates the Images table in the Ancient_Civ_Database. the plan is to store the images in the database as a BLOB.
  The ImageDescription column is optional to start and will be used for queries later than can maybe see patterns in 
  image selection based on the description.
 */

/* We currenly have 10 options for each family name. This will be used to populate the table. 
This is an example of how to insert a single image into the table. 

INSERT INTO images (image_id, image_name, image_path)
VALUES (1, 'Placeholder Image', 'https://yourstorageaccount.blob.core.windows.net/yourcontainer/placeholder.jpg');

 */



CREATE TABLE images
(
  image_id INT NOT NULL PRIMARY KEY,
  image_name VARCHAR(50) NOT NULL,
  image_path VARCHAR(MAX) NOT NULL,
  image_description VARCHAR(MAX)
)
