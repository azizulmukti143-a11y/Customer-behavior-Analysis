# Customer Shopping Behavior Analysis

## Project Overview

This project analyzes customer shopping behavior using transactional data from 3,900 purchases across multiple product categories. The objective is to uncover customer preferences, spending patterns, subscription behavior, and purchasing trends to support data-driven business decisions. 

### Business Problem

A leading retail company wants to better understand customer shopping behavior to improve sales, customer satisfaction, and long-term loyalty. The company aims to identify factors such as discounts, reviews, seasons, shipping preferences, and subscription status that influence purchasing decisions. 

---

## Project Objectives

* Clean and transform raw customer shopping data using Python.
* Store and analyze data using SQL.
* Identify customer segments and purchasing patterns.
* Build an interactive Power BI dashboard.
* Generate actionable business recommendations.

---

## Tools & Technologies

* Python (Pandas, NumPy)
* SQL
* Power BI
* Jupyter Notebook
* GitHub

---

## Dataset Information

### Dataset Summary

| Metric         | Value             |
| -------------- | ----------------- |
| Records        | 3,900             |
| Features       | 18                |
| Missing Values | 37 Review Ratings |

### Key Features

#### Customer Information

* Customer ID
* Age
* Gender
* Location
* Subscription Status

#### Purchase Information

* Item Purchased
* Category
* Purchase Amount
* Season
* Color
* Size

#### Shopping Behavior

* Discount Applied
* Previous Purchases
* Frequency of Purchases
* Review Rating
* Shipping Type
* Payment Method



---

## Data Cleaning & Feature Engineering

### Missing Value Handling

* Identified missing values in Review Rating.
* Imputed missing ratings using median ratings within each product category.

### Data Standardization

* Converted column names to snake_case.
* Improved naming consistency and readability.

### Feature Engineering

#### Age Group Creation

Customers were segmented into:

* Young Adult
* Adult
* Middle-Aged
* Senior

#### Purchase Frequency Transformation

Purchase frequency values were converted into numeric day intervals for analysis.

### Data Quality Improvements

* Removed redundant column:

  * promo_code_used
* Verified consistency between discount and promotional variables.

### Database Integration

* Loaded cleaned data into PostgreSQL for SQL analysis.



---

## SQL Business Analysis

### Revenue by Gender

Male customers generated significantly higher revenue than female customers.

| Gender | Revenue |
| ------ | ------- |
| Male   | 157,890 |
| Female | 75,191  |

### High-Spending Discount Users

Identified customers who utilized discounts while spending above the average purchase amount.

### Top Rated Products

Top products by average review rating:

1. Gloves
2. Sandals
3. Boots
4. Hat
5. Skirt

### Shipping Type Analysis

| Shipping Type | Average Purchase |
| ------------- | ---------------- |
| Express       | 60.48            |
| Standard      | 58.46            |

Express shipping customers spent slightly more on average.

### Subscription Analysis

| Status | Customers | Avg Spend | Revenue |
| ------ | --------- | --------- | ------- |
| Yes    | 1,053     | 59.49     | 62,645  |
| No     | 2,847     | 59.87     | 170,436 |

### Discount-Dependent Products

Products with the highest discount usage:

* Hat
* Sneakers
* Coat
* Sweater
* Pants

### Customer Segmentation

| Segment   | Customers |
| --------- | --------- |
| Loyal     | 3,116     |
| Returning | 701       |
| New       | 83        |

### Top Products by Category

Examples:

**Accessories**

* Jewelry
* Sunglasses
* Belt

**Clothing**

* Blouse
* Pants
* Shirt

**Footwear**

* Sandals
* Shoes
* Sneakers

### Revenue by Age Group

| Age Group   | Revenue |
| ----------- | ------- |
| Young Adult | 62,143  |
| Middle-Aged | 59,197  |
| Adult       | 55,978  |
| Senior      | 55,763  |



---

## Power BI Dashboard

The dashboard provides an interactive overview of customer behavior and sales performance.

### Dashboard KPIs

* Total Customers: 3.9K
* Average Purchase Amount: $59.76
* Average Review Rating: 3.75

### Visualizations

* Revenue by Category
* Sales by Category
* Revenue by Age Group
* Sales by Age Group
* Subscription Status Distribution
* Shipping Type Analysis
* Customer Segmentation

Users can filter results by:

* Subscription Status
* Gender
* Category
* Shipping Type



---

## Key Business Insights

### Customer Behavior

* Loyal customers account for the majority of customers.
* Young adults contribute the highest revenue.

### Product Insights

* Gloves, Sandals, and Boots receive the highest customer ratings.
* Clothing generates the highest revenue among product categories.

### Marketing Insights

* Certain products are highly dependent on discounts.
* Subscription adoption remains relatively low.

### Operational Insights

* Express shipping customers spend slightly more than standard shipping customers.



---

## Business Recommendations

### Increase Subscription Adoption

Provide exclusive benefits and rewards for subscribers.

### Strengthen Loyalty Programs

Offer incentives for repeat purchases and customer retention.

### Optimize Discount Strategy

Use targeted discounts for products with high discount dependency.

### Promote High-Performing Products

Feature top-rated and best-selling products in marketing campaigns.

### Improve Customer Targeting

Focus campaigns on high-revenue age groups and purchasing segments.




---

## Conclusion

This project demonstrates a complete end-to-end data analytics workflow using Python, SQL, and Power BI. Through data cleaning, feature engineering, SQL-based business analysis, and dashboard visualization, the project delivers actionable insights that help improve customer engagement, product strategy, and overall business performance.

