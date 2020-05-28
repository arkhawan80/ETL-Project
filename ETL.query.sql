Drop Table IF exists Handicap;
CREATE TABLE Handicap(
School_Name VARCHAR(40) NOT NULL,
Address VARCHAR (50) NOT NULL,
School_Type VARCHAR (3) NOT NULL,	
Accessable VARCHAR (30) NOT NULL
);

Select * FROM Handicap;


Drop Table IF exists Reportcard;
CREATE TABLE Reportcard(
School_ID VARCHAR(30) NOT NULL,
Short_Name VARCHAR (30) NOT NULL,
Primary_Category VARCHAR (30) NOT NULL,	
Address VARCHAR (30) NOT NULL,
PRIMARY KEY(School_ID)
);

Select * FROM Reportcard;

Drop Table IF exists DistrictRep;
CREATE TABLE DistrictRep(
school VARCHAR(50) NOT NULL,
School_Id VARCHAR (30) NOT NULL,
DR VARCHAR (30) NOT NULL,	
DR_Email VARCHAR (40) NOT NULL
);

Select * FROM DistrictRep;


SELECT
    public."Reportcard"."School_ID",
	public."Reportcard"."Short_Name",
	public."DistrictRep_df"."DR",
	public."DistrictRep_df"."DR Email"
FROM public."DistrictRep_df"
INNER JOIN public."Reportcard"
ON public."DistrictRep_df"."School ID"::varchar(30) = public."Reportcard"."School_ID"::varchar(30);

INNER JOIN School_Name ON Reportcard.Short_Name = Handicap.School_Name;
  
SELECT t1.name
FROM table1 t1
LEFT JOIN table2 t2 ON t2.name = t1.name
WHERE t2.name IS NULL




