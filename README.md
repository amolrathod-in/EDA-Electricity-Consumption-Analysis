⚡ Bareilly Electricity Consumption Dashboard (EDA Project)
📌 Overview

This project presents an end-to-end Exploratory Data Analysis (EDA) and interactive dashboard on electricity consumption data from Bareilly, Uttar Pradesh, India.

The dashboard analyzes 3.9 million smart meter readings across 38 users to uncover consumption patterns, peak demand behavior, and grid performance insights.

🎯 Objectives
Identify monthly and hourly consumption trends
Detect peak demand periods
Analyze top electricity-consuming users
Understand user segmentation patterns
Evaluate grid stability (voltage & frequency)
📊 Dashboard Preview
![alt text](/images/dashboard.png)


🧱 Dashboard Components
🔹 KPI Cards
Total Consumption: 76,631.57 kWh
Peak Demand: 0.30 kW
Average per User: 2,016.62 kWh
Active Users: 38
Average Voltage: 219.56 V
Grid Frequency: 45.64 Hz

📈 1. Monthly Consumption Trend
Combination of bar chart + moving average line
Shows clear seasonal pattern
Peak observed in July

📊 2. Top 10 Electricity Consumers
Horizontal bar chart ranking users
Identifies high-impact consumers
Example: BR51 is the top contributor

🔥 3. Heatmap (Hour × Month)
Displays average consumption across time
Helps identify daily and seasonal usage patterns

👥 4. User Segmentation
Categorizes users into Low and Medium segments
Shows highly skewed consumption distribution

🍩 5. Consumption Categories
Donut chart showing segment share
Low segment contributes ~99% of total usage

💡 Key Insights Panel
Peak consumption occurs in July due to summer demand
Late-night hours show highest usage
Top users dominate total consumption
Grid remains stable with minor fluctuations
Low segment contributes majority (~99%) of usage

💼 Business Insights
⚡ Peak demand in summer → plan load distribution
🕒 Late-night usage → opportunity for time-based pricing
🔌 Top users dominate → target optimization strategies
⚠️ Voltage spikes → improve grid stability

🎛 Filters (Slicers)
📅 Month
⚡ Segment (Low / Medium)
🔍 User ID

These slicers enable interactive filtering across all visuals.

🛠 Tools & Technologies
Power BI — Dashboard development
Python (Pandas, NumPy) — Data cleaning & preprocessing
Matplotlib / Seaborn / Plotly — Visualization
DAX — Measures and calculations
Jupyter Notebook — EDA workflow

📂 Project Structure

bareilly-electricity-eda/
│
├── data/
│ └── cleaned_bareilly_data.csv
├── notebooks/
│ └── bareilly_eda.ipynb
├── dashboards/
│ └── dashboard.pbix
├── images/
│ └── dashboard.png
├── sql/
│ └── queries.sql
├── README.md
└── requirements.txt

▶️ How to Use
Open the .pbix file in Power BI Desktop
Use slicers to filter:
Month
Segment
User
Explore:
Trends
Heatmap
Top users
Insights

📌 Key Takeaways
Electricity demand peaks during summer months
Usage is highest during late-night hours
A small number of users contribute significantly
Majority of consumption comes from low-segment users
Grid performance is stable with minor variations


🚀 Future Improvements
Add predictive modeling for demand forecasting
Introduce real-time data integration
Enhance dashboard with drill-through analysis
Improve segmentation with advanced clustering


⭐ Conclusion

This project demonstrates how large-scale electricity consumption data 
can be transformed into actionable insights and business decisions 
using data analytics and interactive dashboards.