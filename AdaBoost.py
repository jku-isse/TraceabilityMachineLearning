import pandas as pd
from sklearn.model_selection import train_test_split
from sklearn.preprocessing import StandardScaler
from sklearn.ensemble import RandomForestClassifier
from sklearn.metrics import classification_report, confusion_matrix, accuracy_score
import numpy as np
import xgboost as xgb
from sklearn.metrics import mean_squared_error
import sys
from catboost import CatBoostRegressor
from sklearn.ensemble import AdaBoostClassifier
from numpy import mean
from numpy import std
from sklearn.datasets import make_classification
from sklearn.model_selection import cross_val_score
from sklearn.model_selection import RepeatedStratifiedKFold

def main(seed):
    print('#################################################')
    dataset = pd.read_csv( 'inputFieldsMajority+MethodCalls.txt', sep= ',', index_col=False) 
    #dataset = pd.read_csv( 'inputFieldsAtLeast2+MethodCalls.txt', sep= ',', index_col=False) 
    #dataset = pd.read_csv( 'inputFieldsAll+MethodCalls.txt', sep= ',', index_col=False) 
    #dataset = pd.read_csv( 'inputFieldsAll.txt', sep= ',', index_col=False) 
    #dataset = pd.read_csv( 'inputFieldsMajority.txt', sep= ',', index_col=False) 
    #dataset = pd.read_csv( 'inputFieldsAtLeast2.txt', sep= ',', index_col=False) 
    #dataset = pd.read_csv( 'MethodCalls.txt', sep= ',', index_col=False) 
    #convert Inner, Root, Leaf into 0, 1, 2
    
    dataset['Program'] = dataset['Program'].astype('category').cat.codes
    #dataset['VariableTrace'] = dataset['VariableTrace'].astype('category').cat.codes
    dataset['MethodType'] = dataset['MethodType'].astype('category').cat.codes
    dataset['classGold']=dataset['classGold'].astype('category').cat.codes
    dataset['VariableTraceValue']=dataset['VariableTraceValue'].astype('category').cat.codes
    dataset['gold']=dataset['gold'].astype('category').cat.codes

   
    
    dataset=dataset.drop(columns=['RequirementID'], axis=1)
    dataset=dataset.drop(columns=['MethodID'], axis=1)
    dataset=dataset.drop(columns=['Program'], axis=1)

    pd.set_option('display.max_columns', None)
    
    row_count, column_count = dataset.shape
    
    X, y = dataset.iloc[:,:-1],dataset.iloc[:,-1]
   # split data into train and test sets
   
    X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.5, random_state=seed)
    # fit model no training data
    model = AdaBoostClassifier()
    model.fit(X_train, y_train)

    # evaluate the model
    cv = RepeatedStratifiedKFold(n_splits=10, n_repeats=3, random_state=1)
    n_scores = cross_val_score(model, X, y, scoring='accuracy', cv=cv, n_jobs=-1, error_score='raise')
    # report performance
    print('Accuracy: %.3f (%.3f)' % (mean(n_scores), std(n_scores)))

    # make predictions for test data
    y_pred = model.predict(X_test)
    predictions = [round(value) for value in y_pred]
    # evaluate predictions
    accuracy = accuracy_score(y_test, predictions)
    print("Accuracy: %.2f%%" % (accuracy * 100.0))
    print('confusion matrix\n',confusion_matrix(y_test,y_pred))
    print('classification report\n', classification_report(y_test,y_pred))
    print('accuracy score', accuracy_score(y_test, y_pred))
    
    

if __name__=="__main__": 
        seeds = [500,2,10,15,24,31,34,49,58,60]
        for seed in seeds:
            main(seed)
    