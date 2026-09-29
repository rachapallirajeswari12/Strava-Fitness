import streamlit as st
import pandas as pd
import os

# =========================================================
# PAGE CONFIGURATION
# =========================================================

st.set_page_config(
    page_title="Fitness Data Analytics Dashboard",
    page_icon="🏃",
    layout="wide"
)

# =========================================================
# DATA PATH
# =========================================================

DATA_PATH = r"C:\Users\BR REDDY\OneDrive\Desktop\Strava Fitness\Data Files\mturkfitbit_export_4.12.16-5.12.16\Fitabase Data 4.12.16-5.12.16"

daily_file = os.path.join(
    DATA_PATH,
    "dailyActivity_merged.csv"
)

sleep_file = os.path.join(
    DATA_PATH,
    "sleepDay_merged.csv"
)

# =========================================================
# LOAD DAILY ACTIVITY DATA
# =========================================================

@st.cache_data
def load_daily_data():

    df = pd.read_csv(daily_file)

    df["ActivityDate"] = pd.to_datetime(
        df["ActivityDate"],
        format="%m/%d/%Y"
    )

    return df


# =========================================================
# LOAD SLEEP DATA
# =========================================================

@st.cache_data
def load_sleep_data():

    sleep = pd.read_csv(sleep_file)

    sleep["SleepDay"] = pd.to_datetime(
        sleep["SleepDay"],
        format="%m/%d/%Y %I:%M:%S %p"
    )

    sleep["SleepHours"] = (
        sleep["TotalMinutesAsleep"] / 60
    )

    sleep["TimeInBedHours"] = (
        sleep["TotalTimeInBed"] / 60
    )

    return sleep


# =========================================================
# LOAD DATA
# =========================================================

df = load_daily_data()
sleep = load_sleep_data()


# =========================================================
# ACTIVITY CLASSIFICATION
# =========================================================

def classify_activity(steps):

    if steps < 5000:
        return "Sedentary"

    elif steps < 7500:
        return "Low Active"

    elif steps < 10000:
        return "Moderately Active"

    else:
        return "Highly Active"


df["ActivityLevel"] = df["TotalSteps"].apply(
    classify_activity
)


# =========================================================
# MAIN TITLE
# =========================================================

st.title("🏃 Fitness Data Analytics Dashboard")

st.markdown(
    """
    ### Fitness Activity & Wellness Analytics

    This dashboard analyzes fitness tracker data to understand
    daily activity, steps, calories, distance, sedentary behavior,
    and sleep patterns.
    """
)

st.markdown("---")


# =========================================================
# SIDEBAR NAVIGATION
# =========================================================

st.sidebar.title("📊 Navigation")

page = st.sidebar.radio(
    "Select Page",
    [
        "🏠 Overview",
        "🚶 Activity Analysis",
        "😴 Sleep Analysis",
        "💡 Key Insights"
    ]
)


# =========================================================
# SIDEBAR FILTER
# =========================================================

st.sidebar.markdown("---")

st.sidebar.subheader("🔎 Filters")

selected_users = st.sidebar.multiselect(
    "Select User ID",
    options=sorted(df["Id"].unique()),
    default=[]
)

if selected_users:

    filtered_df = df[
        df["Id"].isin(selected_users)
    ].copy()

else:

    filtered_df = df.copy()


# =========================================================
# OVERVIEW PAGE
# =========================================================

if page == "🏠 Overview":

    st.header("📌 Fitness Overview")

    st.write(
        "Overall summary of user activity and fitness behavior."
    )

    # -------------------------
    # KPI METRICS
    # -------------------------

    total_users = filtered_df["Id"].nunique()

    total_records = len(filtered_df)

    avg_steps = filtered_df["TotalSteps"].mean()

    avg_calories = filtered_df["Calories"].mean()

    avg_distance = filtered_df["TotalDistance"].mean()

    avg_sedentary = filtered_df["SedentaryMinutes"].mean()


    col1, col2, col3, col4 = st.columns(4)


    with col1:

        st.metric(
            "👥 Total Users",
            f"{total_users:,}"
        )


    with col2:

        st.metric(
            "📋 Activity Records",
            f"{total_records:,}"
        )


    with col3:

        st.metric(
            "🚶 Average Steps",
            f"{avg_steps:,.0f}"
        )


    with col4:

        st.metric(
            "🔥 Average Calories",
            f"{avg_calories:,.0f}"
        )


    st.markdown("---")


    # -------------------------
    # SECOND KPI ROW
    # -------------------------

    col1, col2, col3, col4 = st.columns(4)


    with col1:

        st.metric(
            "📏 Average Distance",
            f"{avg_distance:.2f}"
        )


    with col2:

        st.metric(
            "🪑 Sedentary Minutes",
            f"{avg_sedentary:,.0f}"
        )


    with col3:

        st.metric(
            "🏃 Active Minutes",
            f"{(
                filtered_df['VeryActiveMinutes'].mean()
                +
                filtered_df['FairlyActiveMinutes'].mean()
            ):,.0f}"
        )


    with col4:

        st.metric(
            "📅 Days",
            f"{filtered_df['ActivityDate'].nunique():,}"
        )


    st.markdown("---")


    # -------------------------
    # STEPS TREND
    # -------------------------

    st.subheader("📈 Average Daily Steps Trend")


    daily_steps = (
        filtered_df
        .groupby("ActivityDate")["TotalSteps"]
        .mean()
        .reset_index()
    )


    st.line_chart(
        daily_steps.set_index("ActivityDate")
    )


    # -------------------------
    # ACTIVITY LEVEL
    # -------------------------

    st.subheader("🏃 Activity Level Distribution")


    activity_counts = (
        filtered_df["ActivityLevel"]
        .value_counts()
    )


    col1, col2 = st.columns(2)


    with col1:

        st.bar_chart(activity_counts)


    with col2:

        activity_table = (
            activity_counts
            .rename("Number of Records")
            .reset_index()
        )

        activity_table.columns = [
            "Activity Level",
            "Number of Records"
        ]

        st.dataframe(
            activity_table,
            use_container_width=True
        )


# =========================================================
# ACTIVITY ANALYSIS PAGE
# =========================================================

elif page == "🚶 Activity Analysis":

    st.header("🚶 Activity Analysis")

    st.write(
        "Analysis of steps, calories, distance and daily activity."
    )


    # -------------------------
    # ACTIVITY KPIs
    # -------------------------

    col1, col2, col3, col4 = st.columns(4)


    with col1:

        st.metric(
            "🚶 Average Steps",
            f"{filtered_df['TotalSteps'].mean():,.0f}"
        )


    with col2:

        st.metric(
            "🔥 Average Calories",
            f"{filtered_df['Calories'].mean():,.0f}"
        )


    with col3:

        st.metric(
            "📏 Average Distance",
            f"{filtered_df['TotalDistance'].mean():.2f}"
        )


    with col4:

        st.metric(
            "🪑 Sedentary Minutes",
            f"{filtered_df['SedentaryMinutes'].mean():,.0f}"
        )


    st.markdown("---")


    # -------------------------
    # DAY OF WEEK
    # -------------------------

    filtered_df["DayOfWeek"] = (
        filtered_df["ActivityDate"]
        .dt.day_name()
    )


    day_order = [
        "Monday",
        "Tuesday",
        "Wednesday",
        "Thursday",
        "Friday",
        "Saturday",
        "Sunday"
    ]


    steps_by_day = (
        filtered_df
        .groupby("DayOfWeek")["TotalSteps"]
        .mean()
        .reindex(day_order)
    )


    st.subheader("📊 Average Steps by Day of Week")

    st.bar_chart(steps_by_day)


    # -------------------------
    # STEPS VS CALORIES
    # -------------------------

    st.subheader("🔥 Steps vs Calories")


    scatter_data = filtered_df[
        ["TotalSteps", "Calories"]
    ].dropna()


    st.scatter_chart(
        scatter_data,
        x="TotalSteps",
        y="Calories"
    )


    # -------------------------
    # DISTANCE TREND
    # -------------------------

    st.subheader("📏 Daily Distance Trend")


    distance_data = (
        filtered_df
        .groupby("ActivityDate")["TotalDistance"]
        .mean()
    )


    st.line_chart(distance_data)


    # -------------------------
    # ACTIVE MINUTES
    # -------------------------

    st.subheader("⏱️ Activity Minutes")


    activity_minutes = pd.DataFrame({

        "Very Active": [
            filtered_df["VeryActiveMinutes"].mean()
        ],

        "Fairly Active": [
            filtered_df["FairlyActiveMinutes"].mean()
        ],

        "Lightly Active": [
            filtered_df["LightlyActiveMinutes"].mean()
        ],

        "Sedentary": [
            filtered_df["SedentaryMinutes"].mean()
        ]

    })


    st.bar_chart(
        activity_minutes.T
    )


# =========================================================
# SLEEP ANALYSIS PAGE
# =========================================================

elif page == "😴 Sleep Analysis":

    st.header("😴 Sleep Analysis")

    st.write(
        "Analysis of sleep duration and time spent in bed."
    )


    # -------------------------
    # SLEEP KPIs
    # -------------------------

    avg_sleep = sleep["SleepHours"].mean()

    avg_bed = sleep["TimeInBedHours"].mean()

    sleep_users = sleep["Id"].nunique()

    sleep_records = len(sleep)


    col1, col2, col3, col4 = st.columns(4)


    with col1:

        st.metric(
            "👥 Sleep Users",
            f"{sleep_users:,}"
        )


    with col2:

        st.metric(
            "😴 Average Sleep",
            f"{avg_sleep:.2f} hrs"
        )


    with col3:

        st.metric(
            "🛏️ Time in Bed",
            f"{avg_bed:.2f} hrs"
        )


    with col4:

        st.metric(
            "📋 Sleep Records",
            f"{sleep_records:,}"
        )


    st.markdown("---")


    # -------------------------
    # SLEEP TREND
    # -------------------------

    st.subheader("📈 Average Sleep Duration Over Time")


    sleep_trend = (
        sleep
        .groupby("SleepDay")["SleepHours"]
        .mean()
    )


    st.line_chart(sleep_trend)


    # -------------------------
    # SLEEP CATEGORY
    # -------------------------

    def classify_sleep(hours):

        if hours < 6:

            return "Less than 6 Hours"

        elif hours < 7:

            return "6–7 Hours"

        elif hours <= 9:

            return "7–9 Hours"

        else:

            return "More than 9 Hours"


    sleep["SleepCategory"] = (
        sleep["SleepHours"]
        .apply(classify_sleep)
    )


    sleep_categories = (
        sleep["SleepCategory"]
        .value_counts()
    )


    st.subheader("🛌 Sleep Duration Categories")

    st.bar_chart(sleep_categories)


    # -------------------------
    # SLEEP SUMMARY
    # -------------------------

    st.subheader("📋 Sleep Summary")


    sleep_summary = pd.DataFrame({

        "Metric": [

            "Average Sleep Hours",

            "Average Time in Bed",

            "Minimum Sleep Hours",

            "Maximum Sleep Hours"

        ],

        "Value": [

            sleep["SleepHours"].mean(),

            sleep["TimeInBedHours"].mean(),

            sleep["SleepHours"].min(),

            sleep["SleepHours"].max()

        ]

    })


    st.dataframe(
        sleep_summary,
        use_container_width=True
    )


# =========================================================
# KEY INSIGHTS PAGE
# =========================================================

elif page == "💡 Key Insights":

    st.header("💡 Key Insights")


    avg_steps = df["TotalSteps"].mean()

    avg_calories = df["Calories"].mean()

    avg_distance = df["TotalDistance"].mean()

    avg_sedentary = df["SedentaryMinutes"].mean()

    avg_sleep = sleep["SleepHours"].mean()


    st.subheader("🚶 Activity Insights")


    st.markdown(
        f"""
        - Average daily steps are **{avg_steps:,.0f}**.
        - Average daily distance is **{avg_distance:.2f}**.
        - Average daily calories burned are **{avg_calories:,.0f}**.
        - Average sedentary time is **{avg_sedentary:,.0f} minutes**.
        """
    )


    st.subheader("😴 Sleep Insights")


    st.markdown(
        f"""
        - Average sleep duration is **{avg_sleep:.2f} hours**.
        - Sleep data provides an additional wellness dimension
          alongside physical activity.
        - Sleep duration can be compared with activity behavior
          to understand broader wellness patterns.
        """
    )


    st.subheader("📊 Business Insights")


    st.markdown(
        """
        - Activity levels can help understand user engagement.
        - Step and calorie patterns can identify behavioral trends.
        - Sleep and activity data can be analyzed together.
        - User activity patterns can support personalized
          wellness recommendations.
        - Fitness platforms can use these insights to improve
          user engagement and wellness programs.
        """
    )


    st.markdown("---")


    st.subheader("📌 Project Summary")


    st.write(
        """
        This project analyzes fitness tracker data to understand
        user activity, daily steps, calories burned, distance,
        sedentary behavior and sleep patterns.

        Python and Pandas were used for data cleaning,
        exploratory data analysis and visualization.

        Streamlit was used to create an interactive dashboard
        for presenting the analytical results.
        """
    )


# =========================================================
# FOOTER
# =========================================================

st.markdown("---")

st.markdown(
    """
    <div style="text-align:center;">

    <b>Fitness Data Analytics Dashboard</b>
    <br>
    Python | Pandas | Streamlit
    <br><br>
    <b>Created by Rachapalli Rajeswari</b>

    </div>
    """,
    unsafe_allow_html=True
)