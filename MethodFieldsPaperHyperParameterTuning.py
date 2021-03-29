import pandas as pd
from sklearn.model_selection import train_test_split
from sklearn.preprocessing import StandardScaler
from sklearn.ensemble import RandomForestClassifier
from sklearn.metrics import classification_report, confusion_matrix, accuracy_score
import numpy as np
from sklearn.metrics import mean_squared_error
import sys
from sklearn.model_selection import validation_curve
import matplotlib.pyplot as plt


def main(seed):
  
    dataset = pd.read_csv( 'inputFieldsMajority+MethodCalls.txt', sep= ',', index_col=False) 
  
    
    dataset['Program'] = dataset['Program'].astype('category').cat.codes
    dataset['MethodType'] = dataset['MethodType'].astype('category').cat.codes
    dataset['classGold']=dataset['classGold'].astype('category').cat.codes
    dataset['VariableTraceValue']=dataset['VariableTraceValue'].astype('category').cat.codes

  
    
    dataset=dataset.drop(columns=['RequirementID'], axis=1)
    dataset=dataset.drop(columns=['MethodID'], axis=1)
    dataset=dataset.drop(columns=['Program'], axis=1)

    pd.set_option('display.max_columns', None)
    
    row_count, column_count = dataset.shape
    
    

    
    
    n_estimators=[500,800,1500,2500,5000]
    max_features=['auto','sqrt', 'log2']
    max_depth=[10,20,30,40,50]
    max_depth.append(None)
    min_samples_split=[2,5,10,15, 20]
    min_samples_leaf=[1,2,5,10,15]
    
    grid_param={'n_estimators': n_estimators, 
                'max_features': max_features,
                'max_depth': max_depth, 
                'min_samples_split': min_samples_split, 
                'min_samples_leaf': min_samples_leaf}
    
    from sklearn.model_selection import RandomizedSearchCV
    RFR=RandomForestClassifier(random_state=1)
    RFR_random=RandomizedSearchCV(estimator=RFR, param_distributions=grid_param,
                                  n_iter=500, cv=5, verbose=2, random_state=42, 
                                  n_jobs=-1)
    RFR_random.fit(features, labels)
    print(RFR_random.best_params_)