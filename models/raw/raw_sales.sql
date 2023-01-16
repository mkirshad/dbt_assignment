SELECT 
		OrderNumber,
		OrderDate,
		Customer_Name_Index,
		Channel,
		Currency_Code,
		Warehouse_Code,
		Delivery_Region_Index,
		Product_Description_Index,
		Order_Quantity,
		Unit_Price,
		Line_Total,
		Total_Unit_Cost
	FROM
	{{ source('source_tables', 'data_sales') }} 
