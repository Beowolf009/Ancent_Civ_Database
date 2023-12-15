/* 
  This script creates the Images table in the Ancient_Civ_Database. the plan is to store the images in the database as a BLOB.
  The ImageDescription column is optional to start and will be used for queries later than can maybe see patterns in 
  image selection based on the description.
 */

/* We currenly have 10 options for each family name. This will be used to populate the table. 
This is an example of how to insert a single image into the table. 

INSERT INTO dbo.Images (ImageId, ImageName, ImagePath)
VALUES (1, 'Placeholder Image', 'https://yourstorageaccount.blob.core.windows.net/yourcontainer/placeholder.jpg');

 */



CREATE TABLE [dbo].[Images]
(
  [ImageId] INT NOT NULL PRIMARY KEY,
  ImageName VARCHAR(50) NOT NULL,
  ImagePath VARCHAR(MAX) NOT NULL,
  ImageDescription VARCHAR(MAX), 
)
