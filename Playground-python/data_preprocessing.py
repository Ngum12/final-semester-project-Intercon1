import pandas as pd

# Read data from a CSV file
data = pd.read_csv("data.csv")

# Handle missing values
data.fillna(method='ffill', inplace=True)

# Split data into features and target variable
X = data.drop('target', axis=1)
y = data['target']
