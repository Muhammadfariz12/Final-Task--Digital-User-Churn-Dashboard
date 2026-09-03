SELECT 
    o.Date AS order_date,
    pc.CategoryName AS category_name,
    p.ProdName AS product_name,
    p.Price AS product_price,
    o.Quantity AS order_qty,
    (o.Quantity * p.Price) AS total_sales,
    c.CustomerEmail AS cust_email,
    c.CustomerCity AS cust_city
FROM `project-pbi-fariz.sales_data.orders` o
INNER JOIN `project-pbi-fariz.sales_data.customers` c
    ON o.CustomerID = c.CustomerID
INNER JOIN `project-pbi-fariz.sales_data.products` p
    ON o.ProdNumber = p.ProdNumber
INNER JOIN `project-pbi-fariz.sales_data.product_category` pc
    ON p.Category = pc.CategoryID
ORDER BY order_date ASC, category_name ASC, product_name ASC;
