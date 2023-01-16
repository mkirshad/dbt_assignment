SELECT 
		Index AS Product_Index,
		Product_Name
	FROM
	{{ source('source_tables', 'data_products') }} 
