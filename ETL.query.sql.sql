-- Drop Table IF exists Handicap;
CREATE TABLE Handicap(
School_Name VARCHAR(40) NOT NULL,
School_Type VARCHAR (30) NOT NULL,	
Accessable VARCHAR (30) NOT NULL
);
Select * FROM Handicap;


-- Drop Table IF exists Reportcard;
CREATE TABLE Reportcard(
School_ID VARCHAR(30) NOT NULL,
Short_Name VARCHAR (30) NOT NULL,
 School_Type VARCHAR (30) NOT NULL	
);
Select * FROM Reportcard;

-- Drop Table IF exists DistrictRep_clean;
CREATE TABLE DistrictRep_clean(
school VARCHAR(50) NOT NULL,
School_ID VARCHAR (30) NOT NULL,
DR VARCHAR (30) NOT NULL,	
DR Email VARCHAR (40) NOT NULL
);
Select * FROM DistrictRep;


SELECT
	DistrictRep_clean.School,
	DistrictRep_clean.School ID, 
	DistrictRep_clean.DR,
	DistrictRep_clean.DR Email,
	Reportcard.School_ID,
	Reportcard.Short_Name
FROM Reportcard
INNER JOIN DistrictRep_clean
ON Reportcard.School_ID = DistrictRep_clean.School ID;

SELECT 
	Reportcard.School_ID,
	Reportcard.Short_Name,
	Handicap.School_Name,
	Handicap.Accessible
FROM Handicap
INNER JOIN Reportcard
ON Reportcard.School_ID = Handicap.School_Name;





  




