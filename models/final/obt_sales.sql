-- depends_on: {{ ref('raw_sales') }} {{ ref('raw_regions') }} {{ ref('raw_products') }} {{ ref('raw_customers') }}

SELECT
	r.Territory,
	r.Country,
	r.City,
	r.Region_Full_Name,
    p.Product_Name,
    c.Customer_Name,

    a.OrderNumber,
    a.OrderDate,
    a.Customer_Name_Index,
    a.Delivery_Region_Index,
    a.Product_Description_Index,

    a.Channel,
    a.Currency_Code,
    a.Warehouse_Code,
    a.Order_Quantity,
    a.Unit_Price,
    a.Line_Total,
    a.Total_Unit_Cost

FROM
{{ ref('raw_sales') }} a
LEFT OUTER JOIN {{ ref('raw_regions') }} r ON a.Delivery_Region_Index = r.Region_Index
LEFT OUTER JOIN {{ ref('raw_products') }} p ON a.Product_Description_Index = p.Product_Index
LEFT OUTER JOIN  {{ ref('raw_customers') }} c ON a.Customer_Name_Index = c.Customer_Index

