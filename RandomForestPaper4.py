import pandas as pd
import numpy as np
dataset = pd.read_csv( 'data1extended.txt', sep= ',') 
#convert T into 1 and N into 0
dataset['gold'] = dataset['gold'].astype('category').cat.codes

print(dataset.head())
row_count, column_count = dataset.shape
X = dataset.iloc[:, 1:column_count].values
y = dataset.iloc[:, 0].values

from sklearn.model_selection import train_test_split

X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=0)
from sklearn.preprocessing import StandardScaler

sc = StandardScaler()
X_train = sc.fit_transform(X_train)
X_test = sc.transform(X_test)

from sklearn.ensemble import RandomForestRegressor

regressor = RandomForestRegressor(n_estimators=20, random_state=0)
regressor.fit(X_train, y_train)
y_pred = regressor.predict(X_test)

from sklearn.metrics import classification_report, confusion_matrix, accuracy_score
print('PREDICTIONS==>  ',y_pred)
i=0
for y in y_pred:
    if y < 0.8:
        y_pred[i]=0
    else:
        y_pred[i]=1
    i=i+1
print(y_pred)

print(confusion_matrix(y_test,y_pred))
print(classification_report(y_test,y_pred))
print(accuracy_score(y_test, y_pred))