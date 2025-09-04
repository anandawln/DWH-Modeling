USE DataWarehouse_Faculty

GO

--Star Schema
CREATE TABLE Faculty_dim(
	/*field faculty dimension*/
	Faculty_key INT IDENTITY NOT NULL PRIMARY KEY,
	Faculty_ID NVARCHAR(10) NOT NULL,
	Faculty_last_name NVARCHAR (10) NOT NULL,
	Faculty_first_name NVARCHAR (10) NOT NULL,
	Year_Joined INT,
	Faculty_rank NVARCHAR (20) NOT NULL,

	/* field dept dimension*/
	Dept_ID NVARCHAR (10) NOT NULL,
	Dept_Name NVARCHAR (40) NOT NULL,
	Dept_year_founded INT,

	/* field college dimension*/
	College_ID NVARCHAR (10) NOT NULL,
	College_Name NVARCHAR (40) NOT NULL,
	College_year_founded INT,

	Dean NVARCHAR (50) NOT NULL
)

GO

CREATE TABLE Any_Fact_Table(
	Faculty_key INT NOT NULL REFERENCES Faculty_dim (Faculty_key),
	Other_key_1 INT NOT NULL,
	Other_key_2 INT NOT NULL,
	Fact1 NVARCHAR(50) NOT NULL,
	Fact2 NVARCHAR(50) NOT NULL,
	CONSTRAINT [PK_Any_Fact_Table] PRIMARY KEY NONCLUSTERED(
	[Faculty_key],[Other_key_1],[Other_key_2]
	)
)


