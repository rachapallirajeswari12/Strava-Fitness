# Fitness Data Analytics Dashboard

## Project Overview

This project analyzes fitness tracker data to understand user activity and wellness behavior.

The analysis focuses on daily steps, calories burned, distance traveled, active minutes, sedentary behavior, and sleep patterns.

An interactive dashboard was created using Streamlit to present the analysis and insights.

## Objectives

* Analyze daily fitness activity
* Understand step and calorie patterns
* Analyze distance and activity minutes
* Identify activity-level patterns
* Analyze sleep duration and sleep behavior
* Present insights through an interactive dashboard

## Dataset

The project uses fitness tracker data collected from multiple users.

The main datasets used in the Streamlit dashboard are:

* `dailyActivity_merged.csv`
* `sleepDay_merged.csv`

The daily activity data contains information such as:

* User ID
* Activity Date
* Total Steps
* Total Distance
* Active Minutes
* Sedentary Minutes
* Calories

The sleep data contains:

* User ID
* Sleep Date
* Total Minutes Asleep
* Total Time in Bed

## Tools and Technologies

* Python
* Pandas
* Matplotlib
* Streamlit
* GitHub
* Streamlit Community Cloud

## Data Analysis Process

The project follows these steps:

1. Data loading
2. Data cleaning
3. Data type conversion
4. Missing-value and duplicate checks
5. Exploratory Data Analysis
6. Data visualization
7. Activity-level classification
8. Sleep analysis
9. Streamlit dashboard development
10. Dashboard deployment

## Activity Classification

Activity records were classified based on daily steps:

* Sedentary
* Low Active
* Moderately Active
* Highly Active

## Dashboard Features

The Streamlit dashboard contains four main sections:

### Overview

Provides a summary of:

* Total users
* Activity records
* Average steps
* Average calories
* Average distance
* Sedentary minutes
* Active minutes
* Activity days

### Activity Analysis

Includes:

* Average steps by day of week
* Steps versus calories
* Daily distance trend
* Activity minutes

### Sleep Analysis

Includes:

* Sleep users
* Average sleep duration
* Average time in bed
* Sleep trend
* Sleep duration categories
* Sleep summary

### Key Insights

Summarizes the major findings from the activity and sleep analysis.

## Key Findings

* 33 unique users are available in the daily activity dataset.
* There are 940 activity records.
* Average daily steps are approximately 7,638.
* Average daily calories burned are approximately 2,304.
* Average daily distance is approximately 5.49.
* Average sedentary time is approximately 991 minutes.
* Sleep data provides an additional wellness dimension for analysis.

## Streamlit Dashboard

The interactive dashboard is deployed using Streamlit Community Cloud.

**Live Dashboard:**
https://rachapallirajeswari12-strava-fitness-app-jcfab5.streamlit.app/

## Project Outcome

This project demonstrates the complete data analytics workflow from data cleaning and exploratory analysis to visualization and interactive dashboard development.

The project helped transform raw fitness tracker data into meaningful and easy-to-understand insights.

## Author

**Rachapalli Rajeswari**

Skills demonstrated:

Python | Pandas | Data Analysis | Data Visualization | Streamlit
