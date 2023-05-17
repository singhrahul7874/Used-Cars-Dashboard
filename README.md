# <img src=https://user-images.githubusercontent.com/55955478/235950162-278285a3-c76c-4bee-b4ef-a6520f7abb9b.gif height=50 width=50> Used_Cars Data Analysis 
<img src=https://user-images.githubusercontent.com/55955478/235955988-9066d563-d7d3-403e-98f3-88291d691c44.jpeg height=450 width=1200>


## About Dataset:

The dataset contains information on 2000+ used cars including make, model, manufacturer, price, year of production, fuel type, states sold in, and kilometers driven. It provides valuable insights into the used car market, including popular models, manufacturer companies, and average prices in different states. The year of production and kilometers driven provide additional information on vehicle age and condition, while the fuel type can help identify consumer preferences in different regions. Overall, it is a comprehensive source of data for businesses and researchers seeking to understand and make data-driven decisions in the used car market.
<br>

## Data Dictionary:
| Files | Description |
| -------| ---------- |
| Data Visualization | This folder contains dashboard of the dataset in PowerBI. Its also contains data cleaning steps in Power-Query editor. |
| Data_Cleaning | This folder comprises a collection of MySQL scripts that demonstrate techniques for noise removal and dataset preparation within a SQL Workbench environment.|
| Dataset | This folder contains raw data of Used_cars |
| README.md | This is a readme file of the project |

## Data Preparation:

![image](https://user-images.githubusercontent.com/55955478/235958792-3a011c22-38f9-4a93-a6d8-343362db1c34.png)


The data preparation process involved the following steps using the Power Query Editor:

  1. Eliminated nulls, blank rows, and duplicate entries.
  2. Generated a unique identifier for each row called "Row ID," starting from 1000 and incrementing by 1 for each subsequent row.
  3. Adjusted the data types of the columns to ensure proper data representation.
  4. Derived two new columns, "Brand" and "Car model," from the existing "car_name" column.
  5. Removed the original "car_name" column to maintain a streamlined dataset.
  
Through these actions, the data was refined and optimized for further analysis and utilization.

## Data Analysis:
We analyzed the data to gain insights into the used car market, including the following:
  1. Relationship between the age of a used car and its price.
  2. Top 10 brands based on the average price.
  3. Percentage of used cars in different cities for cars whose price is greater than 10 Lakh.
  4. Number of cars in low, middle, and high-end categories based on price and fuel type.
  5. We used various visualizations, including a scatter plot, bar chart, pie chart, and multi-row card visualization, to present our findings.
<br>

## Dashboard
The Power BI dashboard developed provides a comprehensive analysis of the used car market, highlighting key insights and trends. The visualizations incorporated in the dashboard shed light on several important aspects, enabling users to make informed decisions based on the data. Here is a description of the dashboard's key components:

Scatter Plot: The scatter plot visualizes the relationship between the age of a used car and its corresponding price. This helps to understand how the price varies as cars age, identifying any potential correlations or trends.

Bar Chart: The bar chart showcases the top 10 brands based on their average prices. It allows users to compare the pricing across different brands and identify the ones commanding higher or lower prices in the market.

Pie Chart: The pie chart illustrates the percentage of used cars in different cities, specifically focusing on cars with prices exceeding 10 Lakh. This helps in identifying the cities with a higher concentration of expensive used cars, providing insights into regional market dynamics.

Multi-Row Card Visualization: The multi-row card visualization provides a summarized view of the number of cars in low, middle, and high-end price categories based on fuel type. This allows users to understand the distribution of cars across price ranges and fuel types.

Overall, the Power BI dashboard offers a comprehensive and visually engaging analysis of the used car market, highlighting the relationships between price, age, brand, city, and fuel type. It enables users to explore the data, uncover meaningful insights, and make informed decisions based on the presented visualizations.

![image](https://user-images.githubusercontent.com/55955478/235959748-d8f1d243-0362-4e67-880d-b21fba7aa149.png)
<br>

## Evaluation Criteria
We evaluated our dashboard based on the following criteria:
  1. Use of interactive filters and slicers to allow users to customize the data being displayed.
  2. Use of clear and concise data labels to provide additional context for data points.
  3. Proper alignment and spacing of visualizations.
  4. Appropriate font size and color scheme.
  5. Clear and concise titles for visualizations, reports, and dashboards.
  6. Use of appropriate background color to improve the visibility of visualizations.

## Conclusion:
Our analysis of the used car sales dataset revealed several interesting insights that can be valuable for businesses operating in the used car market. Through the use of Power BI, we were able to transform and visualize the data in a way that allowed us to gain a deeper understanding of the market trends.

Firstly, we cleaned the data by removing null, blank and duplicate rows, and created a unique identifier for each row. We also changed the data types of the columns accordingly. Furthermore, we created two new columns - brand and car model - from the car_name column, which gave us a better understanding of the popular car brands and models in the market.

We then analyzed the relationship between the age of a used car and its price, which allowed us to determine that the older a car is, the lower its price tends to be. We also created a visualization that showed the relationship between the age of a used car and its price, which provided a clear understanding of this relationship.

Next, we created a bar chart that showed the top 10 brands based on the average price, with the city and count of cars in that city in the tooltip. This provided insight into the popular car brands in different cities, and how they compare in terms of pricing.

We also created a pie chart that showed the percentage of used cars in different cities for cars whose price is greater than 10 Lakh. This provided valuable insights into the distribution of used cars in different cities and the popularity of the used car market in these cities.

In addition, we created a calculated column to divide the cars into three categories - Low End, Middle End, and High End - based on their price. We then created a bar chart to show the number of cars in these categories, with fuel type as the legend. This provided insights into the popularity of different price categories and how they relate to fuel type.

We then created a multi-row card visualization that showed the average, min, and max price of cars, the average kilometers driven by all the cars, and the total number of cars in the dataset. This provided a comprehensive overview of the used car market.
