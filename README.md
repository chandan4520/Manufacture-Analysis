# Manufacture-Analytics
------

## Table of contents

- [Project overview](#project-overview)
- [Data sources](#Data-sources)
- [Recommendations](#recommendations)

### Project Overview

This data analysis project aims to provide insights into the product manufacure performanace of an industry over the months.By analysing various aspects of the manufactured
data,we seek to identify trends, make data-driven recommendations, and gain a deeper understanding of the manufacture industries performance.

![PBI DASHBOARD]![manufacture PBI](https://github.com/user-attachments/assets/38077f37-b3d1-4eb9-82e1-33677b07db88)
![TABLEAU DASHBOARD]![Screenshot TABLEAU manufacture](https://github.com/user-attachments/assets/5c44bfdf-dd39-4624-b28c-2fac829fca8f)

### Data Sources

Manufacture report table: The primary dataset used for this analysis is the "manufacture_report.csv" file,containing detailed information about each manufactured products made by the machines and employees.

### Tools

- Excel - Data Cleaning and for insights also
- MYSQL - Data Analysis
- PowerBI - Creating reports
- Tableau - Creating reports


### Data Cleaning/Preparation
 
 In the initial data preparationphase, we performed the following tasks:
 1. Data loading and inspection.
 2. Handling missing values and datatype.
 3. Data cleaning and formatting. 

### Exploratory Data Analysis

EDA involved exploring the manufacture report data to answer key questions,such as:

 - What is the total manufactured, rejected, processed and wastage products?
 - which machines and employees are gained highest products?
 - which month has given the peak highest and lowest products?

### Data Analysis

Include some interesting code/features worked with

```
SELECT 
    `department_name`, 
    CONCAT(FORMAT((SUM(produced_qty) / (SELECT SUM(produced_qty) FROM manufacture_report)) * 100, 2), '%') AS Manufactured_Qty, 
    CONCAT(FORMAT((SUM(rejected_qty) / (SELECT SUM(Rejected_qty) FROM manufacture_report)) * 100, 2), '%') AS Rejected_Qty
FROM 
    manufacture_report
GROUP BY 
    department_name
ORDER BY 
    Rejected_Qty DESC 
LIMIT 0, 1000;
```


### Results/Findings

The analysis results are summarised as follows:
1. The Machine manufactured quantity have been more in the month of "march" followed by the other.
2. Machine MCO27 is the best-performing machine in terms of manufacturing products.
3. Shruthi Singh is the employee who produced more products followed by other.

### Recommendations

Based on the analysis, we recommend the following actions:
- Machine Focus: Prioritize maintenance and optimization for MC027, MC026, and MC094. 
- Employee Training: Provide targeted training to EM237 and EM947, and monitor top rejectors.
  With these improvements, we can significantly reduce rejection rates, improve overall efficiency, and increase profitability.
 
![image](https://github.com/user-attachments/assets/4faed1f5-634a-437f-8fcc-130853e90b30)


 ### Limitations

  I had to remove all zero values from manufacture columns becuase they would have affected the accuracy of my conclusions from the analysis.There are still a few outliers even after the omissions but even then we can still see that there is a positive correlation between both manufacture and number of votes with rejects.
  
  😄😄 Thank You 
