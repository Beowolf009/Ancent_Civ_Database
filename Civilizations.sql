/* 
I will be settig up blob storage for these to save space and make them more 
efficient to load.

Will be tied to family and images tables

INSERT INTO civilizations (civ_id, civ_description, civ_name, civ_path)
VALUES (1, 'Placeholder Image', 'https://yourstorageaccount.blob.core.windows.net/yourcontainer/placeholder.jpg');

 */
 


CREATE TABLE civilizations
(
  civ_id INT NOT NULL PRIMARY KEY,
  civ_description VARCHAR(50) NOT NULL, --keep brief
  civ_name VARCHAR(50) NOT NULL,
  civ_path VARCHAR(MAX) NOT NULL

)
