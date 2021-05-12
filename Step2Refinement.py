import pandas as pd
from sklearn.model_selection import train_test_split
from sklearn.preprocessing import StandardScaler
from sklearn.ensemble import RandomForestClassifier
from sklearn.metrics import classification_report, confusion_matrix, accuracy_score
import numpy as np
from sklearn.metrics import mean_squared_error
import sys


def main(seed):
    thresholds_T=[0.65,0.60,0.55,0.50,0.45]
    thresholds_N=[0.95,0.90,0.85,0.80,0.75]
    TrainingSet = pd.read_csv( 'TrainingSetStep2.txt', sep= ',', index_col=False) 
    TestSetStep2 = pd.read_csv( 'Step2Data.txt', sep= ',', index_col=False) 

    TestSetStep2=TestSetStep2.drop(columns=['RequirementID'], axis=1)
    TestSetStep2=TestSetStep2.drop(columns=['MethodID'], axis=1)
    TestSetStep2=TestSetStep2.drop(columns=['Program'], axis=1)
    
    TrainingSet=TrainingSet.drop(columns=['RequirementID'], axis=1)
    TrainingSet=TrainingSet.drop(columns=['MethodID'], axis=1)
    TrainingSet=TrainingSet.drop(columns=['Program'], axis=1)
    
    
    #TrainingSet['Program'] = TrainingSet['Program'].astype('category').cat.codes
    TrainingSet['MethodType'] = TrainingSet['MethodType'].astype('category').cat.codes
    TrainingSet['classGold']=TrainingSet['classGold'].astype('category').cat.codes
    TrainingSet['PredictedTraceValue']=TrainingSet['PredictedTraceValue'].astype('category').cat.codes

    
    

    pd.set_option('display.max_columns', None)
    
    row_count, column_count = TrainingSet.shape
    
   
    #TestSetStep2['Program'] = TestSetStep2['Program'].astype('category').cat.codes
    TestSetStep2['MethodType'] = TestSetStep2['MethodType'].astype('category').cat.codes
    TestSetStep2['classGold']=TestSetStep2['classGold'].astype('category').cat.codes
    TestSetStep2['PredictedTraceValue']=TestSetStep2['PredictedTraceValue'].astype('category').cat.codes
    
   
    
    
    X = TrainingSet.iloc[:, 1:column_count].values
    y = TrainingSet.iloc[:, 0].values
    
    
    XStep2 = TestSetStep2.iloc[:, 1:column_count].values
    yStep2 = TestSetStep2.iloc[:, 0].values
    
    X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.5, random_state=seed)   
    X_train_step2, X_test_step2, y_train_step2, y_test_step2 = train_test_split(XStep2, yStep2, test_size=0.5, random_state=seed)   
    #print(y)
    for i in range(0, 5):
        print('############## ITERATION ',i,'#######################')

        ComputePrecisionRecall(X_train, X_test_step2, y_train, y_test_step2,thresholds_T[i],thresholds_N[i])
    

   


def ComputePrecisionRecall(X_train, X_test, y_train, y_test,Tthreshold,Nthreshold):
    classifier = RandomForestClassifier(n_estimators=400, random_state=0)
    
    classifier.fit(X_train, y_train)
    y_pred = classifier.predict(X_test)
    
    #f = open("dataMachineLearning.txt", "a")
    probs= classifier.predict_proba(X_test)
    counter=0
    y_pred=[None]*len(y_test)
    y_pred_list = list(y_pred)
    y_test_list = list(y_test)
    probs_list = list(probs)
    i=0
    n=0
    threshold_T=Tthreshold
    threshold_N=Nthreshold
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
                   y_test[i]=0
                   if(y_test_list[i]=='N' ): 

                       TP_N=TP_N+1
                   elif(y_test_list[i]=='T' ): 
                       FP_N=FP_N+1
                       FN_T=FN_T+1
                   mylist = [str(X_test[i][2]), str(X_test[i][3]), str(y_pred_list[i])]
                   i=i+1
            
            elif (probs_list[i][1]>=threshold_T):
                   flag=True
                   y_pred_list[i]=1
                   y_test[i]=1

                   if(y_test_list[i]=='N' ): 
                       FP_T=FP_T+1
                       FN_N=FN_N+1
                   elif(y_test_list[i]=='T' ): 
                       TP_T=TP_T+1
                   mylist = [str(X_test[i][2]), str(X_test[i][3]), str(y_pred_list[i])]
                   #print('--------',str(X_test[i]))
                   i=i+1
            else:   
                   #print(y_pred[i])
                   #print('i==> ',i, ' probs length ', len(probs_list), ' ', len(y_pred_list), ' ', len(y_test_list))

                   if (y_test_list[i]=='T' ):
                       FN_T=FN_T+1
                       U_T=U_T+1
                   elif (y_test_list[i]=='N' ):
                       FN_N=FN_N+1
                       U_N=U_N+1
                   y_pred_list.pop(i)
                   y_test_list.pop(i)
                   probs_list.pop(i)
                   
                   #print('======= ',X_test[i])
                   
                   n=n+1
            if flag==True:
                mylist_string = ",".join(mylist)
                s=mylist_string+"\n"
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
        seeds = [500]
        for seed in seeds:
            main(seed)
    