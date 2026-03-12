# SaaS Subscription Revenue Analysis (SQL)

This project analyzes SaaS subscription data to understand revenue performance and customer renewal trends using SQL.

The objective of this project is to analyze subscription datasets and generate insights about Monthly Recurring Revenue (MRR), subscription growth, and customer renewal behavior.

---

## Dataset Fields

The dataset contains the following columns:

- **customer_id** – Unique identifier for each customer  
- **subscription_date** – Date when the customer started the subscription  
- **renewal_date** – Date when the subscription renews  
- **amount** – Subscription revenue amount  
- **status** – Subscription status (active or cancelled)

---

## Analysis Performed

The following SaaS metrics were analyzed:

- Calculated **Monthly Recurring Revenue (MRR)**
- Evaluated **active vs cancelled customers**
- Analyzed **subscription growth trends**
- Identified potential **customer expansion opportunities**

---

## SQL Analysis Queries

### Monthly Recurring Revenue (MRR)

```sql
SELECT SUM(amount) AS monthly_recurring_revenue
FROM subscriptions
WHERE status = 'active';
```

### Renewal vs Cancelled Customers

```sql
SELECT status, COUNT(*) AS total_customers
FROM subscriptions
GROUP BY status;
```

### Subscription Growth Trend

```sql
SELECT MONTH(subscription_date) AS month,
COUNT(*) AS new_subscriptions
FROM subscriptions
GROUP BY month
ORDER BY month;
```

---

## Tools Used

- SQL
- MySQL Workbench
- GitHub

---

## Project Structure

```
saas-subscription-revenue-analysis
│
├── dataset.csv
├── queries.sql
└── README.md
```

---

## Key Insights

- Calculated total **Monthly Recurring Revenue (MRR)** from active subscriptions.
- Identified the number of **active and cancelled customers** to understand renewal behavior.
- Analyzed **monthly subscription growth trends** to track customer acquisition patterns.

---

## Author

**Murali Krishna Dangeti**  
GitHub: https://github.com/krishna31199
