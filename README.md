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
The data analysis focused on extracting insights from the used car market dataset, covering the following aspects:

  1. Analyzing the correlation between the age of a used car and its corresponding price.
  2. Identifying the top 10 brands based on their average prices.
  3. Determining the percentage of used cars in different cities for vehicles priced above 10 Lakh.
  4. Examining the distribution of cars across low, middle, and high-end price categories based on both price and fuel type.

To visually present our findings, a variety of informative visualizations were employed, including a scatter plot to showcase the age-price relationship, a bar chart to display the top 10 brands and their average prices, a pie chart to represent the percentage of used cars in different cities exceeding 10 Lakh, and a multi-row card visualization to highlight the number of cars categorized by price range and fuel type.

The Power BI dashboard created provides a comprehensive overview of the used car market, empowering users to explore the data, uncover meaningful insights, and make data-driven decisions based on the presented visualizations.
<br>

## Dashboard
Power BI Dashboard: Used Car Market Analysis

1. <span style="color:blue"><b>Line Plot</b></span> :
     Visualizes the relationship between the age of a used car and its corresponding price.
    Helps understand how the price varies as cars age, identifying any potential correlations or trends.
  
2. <b>Bar Chart</b> :
     Showcases the top 10 brands based on their average prices.
    Allows users to compare pricing across different brands and identify those commanding higher or lower prices in the market.
  
3. <b>Pie Chart</b> :
     Illustrates the percentage of used cars in different cities, specifically focusing on cars with prices exceeding 10 Lakh.
    Helps identify cities with a higher concentration of expensive used cars, providing insights into regional market dynamics.
  
4. <b>Multi-Row Card Visualization</b> :
     Provides a summarized view of the number of cars in low, middle, and high-end price categories based on fuel type.
    Allows users to understand the distribution of cars across price ranges and fuel types.

In conclusion, the Power BI dashboard provides a comprehensive analysis of the used car market, presenting key insights through visualizations. Users can explore the relationships between price, age, brand, city, and fuel type, empowering them to make informed decisions based on the data.

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
Insights from the Used Car Sales Analysis:

1. Data Cleaning and Transformation:

    Removed null, blank, and duplicate rows.
    Created unique identifiers for each row.
    Adjusted data types and derived brand and car model columns.

2. Age and Price Relationship:

    Discovered that older cars tend to have lower prices.
    Visualized the age-price relationship for clear understanding.

3. Top 10 Brands by Average Price:

    Identified popular car brands based on average prices.
    Tooltip included city and car count for additional insights.

4. Used Car Distribution in Cities:

    Pie chart revealed the percentage of used cars above 10 Lakh price in different cities.
    Provided insights into regional market dynamics.

5. Price Categories and Fuel Types:

    Created categories (Low End, Middle End, High End) based on car prices.
    Bar chart displayed the number of cars in each category, with fuel type as the legend.

5. Comprehensive Market Overview:

    Multi-row card visualization presented average, min, and max prices, average kilometers driven, and total car count.
    Provided a comprehensive snapshot of the used car market.
  
The Power BI analysis of the used car sales dataset offers valuable insights into market trends, enabling businesses to make informed decisions.
