
--Insert code here

SELECT
<<<<<<< HEAD
    customers.customer_name AS 'Customer',
=======
    customers.customer_name AS Customer,
>>>>>>> 57e4150042203ef1ff5333807121c80d13219e16
    PRINTF('$%.2f', SUM(subscriptions.subscription_length * subscriptions.price_per_month)) AS "Amount Due" --had to use internet search here
FROM 
    orders 
--Join to combine tables    
JOIN 
    customers ON customers.customer_id = orders.customer_id
JOIN 
    subscriptions ON orders.subscription_id = subscriptions.subscription_id
WHERE 
    orders.order_status = 'unpaid'
    AND subscriptions.description = 'Fashion Magazine'
    --groupby statement
GROUP BY 
    customers.customer_name;
