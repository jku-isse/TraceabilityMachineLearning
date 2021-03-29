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
import numpy as np
import pandas as pd
import lightgbm
from sklearn.model_selection import train_test_split
from sklearn.preprocessing import LabelBinarizer
def main(seed):
    print('#################################################')
    train = pd.read_csv( 'inputFieldsMajority+MethodCalls.txt', sep= ',', index_col=False) 
    train['Program'] = train['Program'].astype('category').cat.codes
    #dataset['VariableTrace'] = train['VariableTrace'].astype('category').cat.codes
    train['MethodType'] = train['MethodType'].astype('category').cat.codes
    train['classGold']=train['classGold'].astype('category').cat.codes
    train['VariableTraceValue']=train['VariableTraceValue'].astype('category').cat.codes
    train['gold']=train['gold'].astype('category').cat.codes

   
    
    train=train.drop(columns=['RequirementID'], axis=1)
    train=train.drop(columns=['MethodID'], axis=1)
    train=train.drop(columns=['Program'], axis=1)
    y = train.gold.values
    
    
    x = train.values
    
    #
    # Create training and validation sets
    #
    x, x_test, y, y_test = train_test_split(x, y, test_size=0.2, random_state=42, stratify=y)
    
    #
    # Create the LightGBM data containers
    #
    categorical_features = [c for c, col in enumerate(train.columns) if 'cat' in col]
    train_data = lightgbm.Dataset(x, label=y, categorical_feature=categorical_features)
    test_data = lightgbm.Dataset(x_test, label=y_test)
    
    
    #
    # Train the model
    #
    
    parameters = {
        'application': 'binary',
        'objective': 'binary',
        'metric': 'auc',
        'is_unbalance': 'true',
        'boosting': 'gbdt',
        'num_leaves': 31,
        'feature_fraction': 0.5,
        'bagging_fraction': 0.5,
        'bagging_freq': 20,
        'learning_rate': 0.05,
        'verbose': 0
    }
    
    model = lightgbm.train(parameters,
                           train_data,
                           valid_sets=test_data,
                           num_boost_round=5000,
                           early_stopping_rounds=100)
    
    
    
    print('confusion matrix\n',confusion_matrix(y_test,y_pred))
    print('classification report\n', classification_report(y_test,y_pred))
    print('accuracy score', accuracy_score(y_test, y_pred))
    

if __name__=="__main__": 
        seeds = [500,2,10,15,24,31,34,49,58,60]
        for seed in seeds:
            main(seed)
    