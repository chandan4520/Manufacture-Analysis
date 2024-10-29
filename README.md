# Hospitality-Analytics
------

## Table of contents

- [Project overview](#project-overview)
- [Data sources](#Data-sources)
- [Recommendations](#recommendations)

### Project Overview

This data analysis project aims to provide insights into the product manufacure performanace of an industry over the months.By analysing various aspects of the manufactured
data,we seek to identify trends, make data-driven recommendations, and gain a deeper understanding of the manufacture industries performance.

![DASHBOARD](![manufacture PBI](https://github.com/user-attachments/assets/38077f37-b3d1-4eb9-82e1-33677b07db88))


### Data Sources

Fact Bookings table: The primary dataset used for this analysis is the "fact_bookings.csv" file,containing detailed information about each revenue made by the hotels.

### Tools

- Excel - Data Cleaning and for insights also
- MYSQL - Data Analysis
- PowerBI - Creating reports
- Tableau - Creating reports


### Data Cleaning/Preparation
 
 In the initial data preparationphase, we performed the following tasks:
 1. Data loading and inspection.
 2. Handling missing values.
 3. Data cleaning and formatting. 

### Exploratory Data Analysis

EDA involved exploring the fact booking data to answer key questions,such as:

 - What is the total revenue,bookings and cancellation rate?
 - which city and hotels are gained highest revenue?
 - which day has given the peak highest revenue?

### Data Analysis

Include some interesting code/features worked with

```SELECT city, property_name, FORMAT(SUM(f.revenue_realized),'no') AS `total revenue`
FROM dim_hotels AS d INNER JOIN fact_bookings AS f
ON d.property_id = f.property_id
GROUP BY city, property_name
OREDR BY city;```


### Results/Findings

The analysis results are summarised as follows:
1. The hotels revenue have been more in weekdays compared to weekends becuase weekday has more number of days compared to weekend.
2. Atliq bay(mumbai) is the best-performing hotels in terms of bookings and revenue.
3. Customers are highly prefering to book Elite Room class compared to any other.

### Recommendations

Based on the analysis, we recommend the following actions:
- Improving Hotel Efficiency and Guest Services in Delh.
- Encourage guests to visit Atliq Grands hotel.
- Reducing Cancellation Rates through Enhanced Booking Practices.

 ### Limitations

  I had to remove all zero values from revenue columns becuase they would have affected the accuracy of my conclusions from the analysis.There are still a few outliers even after the omissions but even then we 
  can 
  still see that there is a positive correlation between both budget and number of votes with revenue.
  
  😄😄 Thank You 
