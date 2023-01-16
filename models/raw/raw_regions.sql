SELECT 
		Index AS Region_Index,
		City,
		Country,
		Territory,			
		Full_Name AS Region_Full_Name
	FROM
	{{ source('source_tables', 'data_regions') }}