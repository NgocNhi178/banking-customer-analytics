# banking-customer-analytics
# Banking Customer Analytics

## 1. Project Overview

This project analyzes customer segments, Assets Under Management (AUM), and product holdings to identify high-value customers and cross-selling opportunities.

The analysis focuses on understanding customer value, product penetration, and potential opportunities to increase customer value through targeted cross-selling.

---

## 2. Business Questions

The project aims to answer the following questions:

- Which customers and segments contribute the most AUM?
- How concentrated is customer value across the customer base?
- Are high-value customers being captured effectively by the existing segmentation?
- Which customer groups have the highest cross-selling potential?
- Which products show the greatest opportunities for cross-selling?

---

## 3. Tools & Technologies

- **SQL**
- **Google BigQuery**
- **Power BI**

---

## 4. Data

The analysis uses customer-level data containing:

- Customer information
- Customer segment
- Province/City
- AUM (Assets Under Management)
- Product holdings

The original dataset is not included in this repository due to data confidentiality and usage restrictions.

The analytical dataset was created in Google BigQuery by joining customer, AUM, and product-holding tables using `customer_id`.

---

## 5. Data Preparation & SQL Analysis

SQL was used to create a customer-level analytical dataset for Power BI.

Key tasks included:

- Joining customer, AUM, and product-holding tables
- Creating customer-level analytical attributes
- Categorizing customers by AUM
- Preparing product-holding attributes
- Creating datasets for cross-selling analysis

The SQL scripts are available in the [`SQL/`](SQL/) folder.

---

## 6. Key Findings

### Customer Value Concentration

- **4.22% of customers with AUM ≥ 200M VND accounted for 89.8% of total AUM.**
- Customer value is highly concentrated among a relatively small group of customers.
- High-value customers were also found within Regular and Silver segments, indicating potential gaps in the existing segmentation approach.

### Cross-Selling Opportunities

The analysis identified large groups of customers who hold certain products but do not yet use other relevant products:

- **93K+ CASA customers without Term Deposit**
- **88K+ Deposit customers without Credit Card**

However, opportunity size alone does not necessarily represent the highest business value. High-value customer concentration was also considered when prioritizing cross-selling opportunities.

---

## 7. Business Recommendations

Based on the analysis:

### 1. Prioritize High-Value Customers

Focus cross-selling campaigns on customers with high AUM and relevant product gaps rather than targeting the entire opportunity pool.

### 2. Combine Opportunity Size with Customer Value

Large customer pools should not automatically receive the highest priority.

Cross-selling opportunities should be evaluated based on:

- Opportunity size
- Customer value
- Product ownership
- Segment characteristics

### 3. Review Customer Segmentation

High-value customers found in Regular and Silver segments suggest that the current segmentation criteria may not fully capture customer value.

A more value-oriented segmentation approach could help identify potential high-value customers earlier.

### 4. Personalize Cross-Selling

Use existing product-holding information to identify relevant next-product opportunities and deliver more targeted offers.

---

## 8. Power BI Dashboard

The Power BI dashboard was developed to explore:

- Customer segmentation
- AUM distribution
- Customer value concentration
- Product penetration
- Cross-selling opportunities
- Geographic distribution

Dashboard screenshots are available in the [`screenshots/`](screenshots/) folder.

The Power BI file is available in the [`PowerBI/`](PowerBI/) folder.

---

## 9. Project Structure

```text
banking-customer-analytics/
│
├── SQL/
│   ├── customer_dashboard.sql
│   ├── v_cross_sell_opportunity.sql
│   └── v_product_affinity.sql
│
├── PowerBI/
│   └── bankingcustomeranalytics.pbix
│
├── Data/
│   └── README.md
│
├── Report/
│   └── Banking_Customer_Analytics.pdf
│
└── screenshots/
    ├── CustomerProduct.png
    ├── Geographic Analysis.png
    ├── OVERVIEW.png
    ├── ProductAnalysis.png
    └── SegmentAnalysis.png
