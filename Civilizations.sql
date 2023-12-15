/* 
I will be settig up blob storage for these to save space and make them more 
efficient to load.

Will be tied to family and images tables

INSERT INTO dbo.Civiliazations (CivId, CiveDescription, CivName, CivPath)
VALUES (1, 'Placeholder Image', 'https://yourstorageaccount.blob.core.windows.net/yourcontainer/placeholder.jpg');

 */
 


CREATE TABLE [dbo].[civilizations]
(
  [Civ_ID] INT NOT NULL PRIMARY KEY,
  CivDescription VARCHAR(50) NOT NULL, --keep brief
  CivName VARCHAR(50) NOT NULL,
  CivPath VARCHAR(MAX) NOT NULL,

)
