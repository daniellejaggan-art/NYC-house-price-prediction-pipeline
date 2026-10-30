# NYC House Price Prediction Pipeline

## Project Overview

This project develops an end-to-end data pipeline for preparing, analyzing, and modeling New York City property sales data to predict property sale prices.

The workflow uses **PostgreSQL** for data storage and SQL-based data preparation, followed by **Python** for data inspection, preprocessing, machine learning, and model evaluation.

Two regression models were explored: Linear Regression as a baseline and Random Forest Regression as the primary modeling approach.

## Project Objectives

- Prepare and organize NYC property sales data.
- Identify and investigate data quality issues.
- Create a model-ready dataset using SQL transformations.
- Explore relationships between property characteristics and sale prices.
- Train and evaluate regression models.
- Generate property price predictions.

## Technologies Used

| Technology | Purpose |
|---|---|
| PostgreSQL | Data storage and SQL transformations |
| Python | Data analysis and model development |
| Pandas & NumPy | Data manipulation and inspection |
| Scikit-learn | Preprocessing, model training, and evaluation |
| Jupyter Notebook | Exploratory analysis and model development |
| Git & GitHub | Version control and project documentation |

## Project Workflow

### 1. Data Preparation — PostgreSQL

The original dataset contained **80,476 property sale records**.

SQL was used to inspect the data, investigate missing values, identify unusual transactions, and prepare the dataset for machine learning.

Data quality investigations included:

- Zero-dollar sale transactions.
- Duplicate property transactions.
- Missing property characteristics.
- Unusual sale prices and potential outliers.

Following data preparation and filtering, a model-ready table was created containing **23,306 records and seven columns**, with no missing values.

### 2. Data Analysis and Preprocessing — Python

The prepared dataset was loaded into a Jupyter Notebook for further inspection, analysis, and preprocessing.

Six input features were selected:

- Borough
- Building class at time of sale
- Gross square footage
- Total units
- Year built
- Land square footage

The target variable was `sale_price`.

Categorical and numerical features were handled using Scikit-learn preprocessing pipelines.

### 3. Model Development

Two regression models were explored:

**Linear Regression**
- Used as the baseline model.
- Provided a reference point for evaluating predictive performance.

**Random Forest Regressor**
- Used as the primary modeling approach.
- Explored to capture more complex relationships between property characteristics and sale prices.

Additional experimentation investigated how data filtering and extreme sale prices affected model performance.

### 4. Model Evaluation

Model performance was evaluated using three regression metrics:

- **Mean Absolute Error (MAE):** Measures the average absolute difference between actual and predicted sale prices.
- **Root Mean Squared Error (RMSE):** Measures prediction error while placing greater weight on larger errors.
- **R-squared (R²):** Measures how much variation in the target variable is explained by the model.

Further analysis explored the impact of unusually low sale prices and extreme values on predictive performance.

See the Jupyter Notebook for the model experiments, evaluation results, and supporting analysis.

## Project Structure

```text
NYC-house-price-prediction-pipeline/
│
├── notebooks/
│   └── NYC_House_Price_Prediction.ipynb
│
├── outputs/
│   └── nyc_property_predictions.csv
│
├── sql/
│   └── pipeline.sql
│
└── README.md
```

*Note: The trained model file is maintained locally and is not included in the public repository.*

## Dataset

This project uses the **NYC Property Sales Rolling 12 Months** dataset by Adrian Ricardo da Silva, sourced from Kaggle.

The dataset contains New York City property sales records and property characteristics used to investigate factors associated with property sale prices.

## Project Status

The data preparation, exploratory analysis, model development, and initial evaluation stages have been completed.

Potential future improvements include:

- Additional feature engineering.
- Further model tuning and experimentation.
- Improving prediction performance.
- Deploying the model through an interactive application.

## Key Learning Outcomes

Through this project, I gained practical experience with:

- Relational databases and SQL transformations.
- Investigating real-world data quality issues.
- Preparing datasets for machine learning.
- Building Scikit-learn preprocessing pipelines.
- Comparing regression models.
- Evaluating model performance and interpreting results.
- Developing an end-to-end data science workflow.

