# Uber Dataset Analysis Project

## Project Overview

Welcome to the Uber Dataset Analysis project! This project is all about diving into a rich dataset of Uber trips, transforming it to extract meaningful insights, and visualizing the results using Google Looker. Here's a fun rundown of what this project entails:

## Project Steps

1. **Data Loading**:
   - **Source**: The dataset is fetched directly from an API, ensuring that we always work with the latest data.
   - **Initial Inspection**: We take a quick look at the dataset to understand its structure and contents.

2. **Data Transformation**:
   - **Cleaning**: We clean the dataset by removing duplicates and ensuring all data types are correctly set.
   - **Enhancing**: We create several dimension tables for datetime, passenger count, trip distance, rate code, locations, and payment types. This helps in organizing the data better and makes it easier to derive insights.
   - **Fact Table Creation**: A comprehensive fact table is built by merging all the dimension tables. This fact table is the heart of our analysis, containing all the necessary information in a structured format.

3. **Data Upload**:
   - **Google Cloud Platform (GCP)**: The data is cleaned and transformed data using Mage on Google Cloud Platform.
   - **BigQuery**: The data is loaded into BigQuery, where it can be easily queried and analyzed.

4. **Data Analysis and Visualization**:
   - **Google Looker**: Using Google Looker, we create interactive dashboards and reports that visualize the insights derived from the data. This helps in understanding trends, patterns, and key metrics related to Uber trips.


## Tools and Technologies

- **Python**: For data cleaning, transformation, and initial analysis.
- **Mage**: For orchestrating data workflows and uploading data to GCP.
- **Google Cloud Platform (GCP)**: For storing and processing the data.
- **BigQuery**: For querying the data efficiently.
- **Google Looker**: For creating interactive and insightful visualizations.

## Conclusion

This project is a comprehensive journey through data cleaning, transformation, loading, and visualization. By the end, you will have a robust understanding of the Uber dataset and be equipped with the skills to derive actionable insights from it. Let's dive in and uncover the stories hidden within the data!
