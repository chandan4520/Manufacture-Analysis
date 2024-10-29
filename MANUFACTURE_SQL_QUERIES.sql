
CREATE DATABASE project2_manufacture;  
SELECT * FROM manufacturing_report_csv;     
RENAME  TABLE manufacturing_report_csv TO manufacture_report;
SELECT * FROM manufacture_report;
SELECT * FROM prod_data_csv;


-- Manufacture QTY
SELECT 
      CONCAT(FROMAT(SUM(manufactured_qty/1000000),0),"M") AS prod_data_csv 
FROM 
      manufacture_report;
      

-- Rejected QTY
SELECT 
      CONCAT(FORMAT(SUM(rejected_qty/1000),0), "k") AS Rejected_Qty 
FROM 
      manufacture_report;
      

-- Processed QTY
SELECT 
      CONCAT(FORMAT(SUM(processed_qty/1000000),0), "M") AS processed_qty 
FROM 
	  manufacture_report;

-- Wastage percentage
SELECT 
      CONCAT(FORMAT(SUM(rejected_qty/processed_qty)/100,2), "%") AS Wastage_Percentage 
FROM 
      manufacture_report ; 
      
  
-- Employee-Wise Manufactured and Rejected QTY
SELECT 
      emp_name ,
      CONCAT(FORMAT(SUM(TOTALQTY/1000000),0), "M") AS Manufactured_Qty ,
      CONCAT(FORMAT(SUM(rejected_qty/1000),0),"k") AS Rejected_Qty 
FROM 
      manufacture_report 
GROUP BY 
      emp_name 
ORDER BY 
      Rejected_Qty DESC 
LIMIT 10 ;
 

-- Machine-Wise Produced and Rejected QTY 
SELECT 
     machine_code, 
     SUM(Produced_Qty) AS produced_Qty,
     SUM(rejected_qty) AS Rejected_Qty 
FROM 
     manufacture_report 
GROUP BY
     machine_code 
ORDER BY
     Rejected_Qty DESC 
LIMIT 10 ; 


-- Month-Wise Production Trend 
SELECT 
      monthname(doc_date) AS `Month`,
      concat(FORMAT(sum(Produced_qty/1000000),1),"M") AS Manufactured_Qty,
      concat(FORMAT(sum(rejected_qty/1000),1),"k") AS Rejected_Qty 
FROM 
      manufacture_report 
GROUP BY 
	  monthname(doc_date) 
ORDER BY 
      `month`;
      

-- Department-Wise Manufactured and Rejected QTY
SELECT 
    department_name, 
    CONCAT(FORMAT((SUM(produced_qty) / (SELECT SUM(produced_qty) FROM manufacture_report)) * 100, 2), '%') AS Manufactured_Qty, 
    CONCAT(FORMAT((SUM(rejected_qty) / (SELECT SUM(Rejected_qty) FROM manufacture_report)) * 100, 2), '%') AS Rejected_Qty
FROM 
    manufacture_report
GROUP BY 
    department_name
ORDER BY 
    Rejected_Qty DESC 
LIMIT 0, 1000;


-- Buyer-Wise Manufactured and Rejected QTY 
SELECT
    buyer ,
    concat(FORMAT(SUM(PRODUCED_QTY/1000000), 1),"M") AS Manufactured_Qty,
    CONCAT(FORMAT(sum(rejected_qty/1000), 1), "K") AS Rejected_Qty 
FROM 
	manufacture_report  
GROUP BY 
    buyer 
ORDER BY 
     Rejected_Qty DESC ; 