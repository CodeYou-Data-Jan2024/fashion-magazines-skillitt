
--Insert code here

SELECT
    customers.customer_name AS Customer,
    PRINTF('$%.2f', SUM(subscriptions.price * subscriptions.subscription_length)) AS "Amount Due" --had to use internet search here
FROM 
    orders
--Join to combine tables    
JOIN 
    customers ON orders.customer_id = customers.customer_id
JOIN 
    subscriptions ON orders.subscription_id = subscriptions.subscription_id
WHERE 
    orders.order_status = 'unpaid'
    AND subscriptions.description = 'Fashion Magazine'
    --groupby statement
GROUP BY 
    customers.customer_name;