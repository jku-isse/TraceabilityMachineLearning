import pandas as pd
from sklearn.model_selection import train_test_split
from sklearn.preprocessing import StandardScaler
from sklearn.ensemble import RandomForestClassifier
from sklearn.metrics import classification_report, confusion_matrix, accuracy_score
import numpy as np
import xgboost as xgb
from sklearn.metrics import mean_squared_error
import sys
from xgboost import XGBClassifier
#from catboost import CatBoostRegressor


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
    classifier = XGBClassifier()
    #classifier = CatBoostRegressor(iterations=2,learning_rate=1,depth=2)
    classifier.fit(X_train, y_train)
    # make predictions for test data
    y_pred = classifier.predict(X_test)
    predictions = [round(value) for value in y_pred]
    # evaluate predictions
    accuracy = accuracy_score(y_test, predictions)
    print("Accuracy: %.2f%%" % (accuracy * 100.0))

    
    #f = open("dataMachineLearning.txt", "a")
    probs= classifier.predict_proba(X_test)
    y_pred=[None]*len(y_test)
    y_pred_list = list(y_pred)
    y_test_list = list(y_test)
    probs_list = list(probs)
    i=0
    n=0
    threshold_T=0.65
    threshold_N=0.95
    TP_T=0
    FP_T=0
    FN_T=0
    FP_N=0
    FN_N=0
    TP_N=0
    FP_N=0
    U_T=0
    U_N=0
    while i<len(probs_list):
            #print('i ',i)
            flag=False

            #print(X_test[i])
            if (probs_list[i][0]>=threshold_N):
                   flag=True
                   y_pred_list[i]=0
                   if(y_test_list[i]==0): 
                       TP_N=TP_N+1
                   elif(y_test_list[i]==1): 
                       FP_N=FP_N+1
                       FN_T=FN_T+1
                   i=i+1
            
            elif (probs_list[i][1]>=threshold_T):
                   flag=True
                   y_pred_list[i]=1
                   if(y_test_list[i]==0): 
                       FP_T=FP_T+1
                       FN_N=FN_N+1
                   elif(y_test_list[i]==1): 
                       TP_T=TP_T+1
                   #print('--------',str(X_test[i]))
                   i=i+1
            else:   
                   #print(y_pred[i])
                   #print('i==> ',i, ' probs length ', len(probs_list), ' ', len(y_pred_list), ' ', len(y_test_list))

                   if (y_test_list[i]==1):
                       FN_T=FN_T+1
                       U_T=U_T+1
                   elif (y_test_list[i]==0):
                       FN_N=FN_N+1
                       U_N=U_N+1
                   y_pred_list.pop(i)
                   y_test_list.pop(i)
                   probs_list.pop(i)
                   
                   #print('======= ',X_test[i])
                   
                   n=n+1
                #f.write(s)
    #f.close()
 

   
    
    Prec_T=TP_T/(TP_T+FP_T)
    Rec_T=TP_T/(TP_T+FN_T)
    Prec_N=TP_N/(TP_N+FP_N)
    Rec_N=TP_N/(TP_N+FN_N)
    
    Prec_T=round(Prec_T*100,2)
    Prec_N=round(Prec_N*100,2)
    Rec_T=round(Rec_T*100,2)
    Rec_N=round(Rec_N*100,2)
        
    print('TP_T ',TP_T, 'FP_T, ', FP_T,  'FN_T ', FN_T, 'U_T ', U_T,'TP_N ',TP_N, 'FP_N, ', FP_N,  'FN_N ', FN_N, ' U_N ', U_N)
    print(TP_T, ',', FP_T,  ',', FN_T, ',', U_T,',',TP_N, ',', FP_N,  ',', FN_N, ',', U_N, ',', Prec_T, ',', Rec_T, ',', Prec_N, ',', Rec_N)
    
    print('T PRECISION ', Prec_T)
    print('T RECALL ', Rec_T)
    print('N PRECISION ', Prec_N)
    print('N RECALL ', Rec_N)

if __name__=="__main__": 
        seeds = [500,2,10,15,24,31,34,49,58,60]
        for seed in seeds:
            main(seed)
    