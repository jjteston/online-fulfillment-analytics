# 📊Online Channel Fulfillment Velocity & Network Strain Analysis

<details>
<summary>
  <b><i>Project Summary</i></b>
</summary>

- **Pipeline Framework:** Staged Multi-Tool Analytical Pipeline (PostgreSQL ➡️ Python/Pandas ➡️ Microsoft Excel)
- **Dataset Scope:** Isolated e-commerce transactions (`store_key = 0`), filtering out 49,719 brick-and-mortar rows to focus exclusively on online logistics.
- **Core Metrics:** Engineered a custom `delivery_lead_time` integer feature to measure Order-to-Delivery velocity.

#### 💼My Work
- Ingested and structured relational tables inside a local **PostgreSQL (pgAdmin)** environment.
- Created an ETL staging database to sanitize special characters (`$` and `,`) from raw text fields using `REPLACE()` and `CAST()`.
- Formatted date properties into active datetime objects inside a **Jupyter Notebook** using Python (`pandas`).
- Audited data sanity to ensure chronological integrity across order, warehouse shipping, and delivery timelines.
- Aggregated localized performance matrices and utilized `matplotlib.pyplot` for initial exploratory data visualization.
- Programmatically routed independent summaries into a single multi-tab workbook using `pd.ExcelWriter`.
- Built an executive-facing summary report and layout wireframe in **Microsoft Excel**.
- Translated raw supply chain turnaround times into actionable strategic recommendations.
  
</details>

## 🎯Business Problem

An international e-commerce electronics retailer lacks a centralized logistics monitoring report to track the efficiency of its global shipping networks.

Leadership needs an operational dashboard that answers:
- Which product categories experience the longest delivery bottlenecks?
- Which customer countries and states face the worst delivery infrastructure latency?
- Does fulfillment speed degrade when processing larger bulk order quantities?


## ⚙️Tools Used
- PostgreSQL (pgAdmin)
- Python (Pandas, Matplotlib)
- Jupyter Notebook
- Microsoft Excel


## 📁Dataset

Global Electronics Retailer Dataset - This dataset includes tables containing information about transactions, products, customers, stores and currency exchange rates.
*From Maven Analytics*

- **Transaction Focus:** Completed online orders (`delivery_date IS NOT NULL`)
- **Key dimensions for this analysis:** Order Numbers, Quantities, Product Categories, Customer Countries, and Customer States.

## 📝Data Validation

| Validation Check | Logic / Metric Tested | Result | Action Taken |
| :--- | :--- | :--- | :--- |
| **Special Characters** | `$` and `,` encoding errors in product fields | Blocked numeric import | Loaded to string staging table; sanitized via `REPLACE()` & `CAST()` |
| **Scope Boundary** | Brick-and-mortar physical retail sales | `store_key != 0` | Safely filtered out via `WHERE` clause to isolate e-commerce channels |
| **Open Backlogs** | Incomplete online transactions | `delivery_date IS NULL` | 0 records found within active online channel |
| **Chronology Audit** | Shipments arriving before order placement | `delivery_date < order_date` | 0 anomalies found; dataset chronologically sound |
| **Operational Check** | Transactions placed before store openings | `store_open_date > order_date` | 0 anomalies found; verification check successful |

## 📈Report Overview
Insert report here

## 💡Key Insights
- Core warehouse systems are highly stable; fulfillment cycles are tightly optimized across all segments, ranging narrowly between 4.0 and 5.0 days.
- **TV and Video** represents the slowest product category at **4.89 days**, indicating slight specialized transit or packaging constraints for bulkier, high-ticket electronics.
- The **United Kingdom** is the primary systemic network bottleneck, capturing 4 out of the 5 slowest global delivery destinations. 
- The absolute longest shipping delay occurs in the **Isle of Wight (13.0 days)**, followed by East Dorset (11.0 days), Reigate and Banstead (10.0 days), and Selby (10.0 days), with France (Auvergne) serving as a secondary risk zone at 9.0 days.
- The internal logistics framework is exceptionally resilient to volume strain; increasing order sizes from 1 to 10 units only alters delivery speeds by a marginal **4.3 hours (0.18 days)**.

## ✍🏻Recommendations
- **Audit UK Couriers:** Initiate an immediate performance audit on UK-specific shipping partners to resolve localized delivery drag.
- **Adjust Coastal Logistics:** Implement regional routing updates or establish localized satellite fulfillment nodes for island and coastal territories like the Isle of Wight.
- **Incentivize Bulk Purchases:** Actively promote bulk-ordering incentives for customers, as large volume shipments consolidate corporate freight costs without introducing operational delays or network strain.

## 🧠Skills Demonstrated
- Database Administration (ETL)
- Data Cleansing & Formatting
- Staging Table Architecture
- Relational Table Joins
- Exploratory Data Visualization
- Programming Logic
- Multi-Tab Workbook Routing (`ExcelWriter`)
- Spreadsheet Design & Formatting
- Conditional Formatting
- Executive Reporting Layout Design
- Supply Chain Analytics
- Bottleneck Identification
- Root Cause Analysis

## 📬 Contact
If you have feedback, questions, or opportunities, feel free to connect with me:

- 🔗 LinkedIn: https://www.linkedin.com/in/jj-teston-b41950374/
- 📧 Email: johnjesterteston@gmail.com
  
⭐ I'm currently open to entry-level Data Analyst opportunities.











