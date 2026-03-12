-- Create table
CREATE TABLE subscriptions (
customer_id INT,
subscription_date DATE,
renewal_date DATE,
amount INT,
status VARCHAR(20)
);

-- Monthly Recurring Revenue
SELECT SUM(amount) AS monthly_recurring_revenue
FROM subscriptions
WHERE status = 'active';

-- Renewal vs cancelled
SELECT status, COUNT(*) AS total_customers
FROM subscriptions
GROUP BY status;

-- Subscription growth
SELECT MONTH(subscription_date) AS month,
COUNT(*) AS new_subscriptions
FROM subscriptions
GROUP BY month
ORDER BY month;