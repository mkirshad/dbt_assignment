SELECT 
	Customer_Index,			
	Customer_Names AS Customer_Name
	FROM
	{{ source('source_tables', 'data_customers') }} 
