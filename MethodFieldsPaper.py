import pandas as pd
from sklearn.model_selection import train_test_split
from sklearn.preprocessing import StandardScaler
from sklearn.ensemble import RandomForestClassifier
from sklearn.metrics import classification_report, confusion_matrix, accuracy_score
import numpy as np
from sklearn.metrics import mean_squared_error
import sys


def main(seed):
  
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
    #dataset['gold']=dataset['gold'].astype('category').cat.codes

    
    dataset=dataset.drop(columns=['RequirementID'], axis=1)
    dataset=dataset.drop(columns=['MethodID'], axis=1)
    dataset=dataset.drop(columns=['Program'], axis=1)

    pd.set_option('display.max_columns', None)
    
    row_count, column_count = dataset.shape
    
    '''X, y = dataset.iloc[:,:-1],dataset.iloc[:,-1]
   # split data into train and test sets
    seed = 7
    test_size = 0.33
    X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=test_size, random_state=seed)
    # fit model no training data
    model = XGBClassifier()
    model.fit(X_train, y_train)
    # make predictions for test data
    y_pred = model.predict(X_test)
    predictions = [round(value) for value in y_pred]
    # evaluate predictions
    accuracy = accuracy_score(y_test, predictions)
    print("Accuracy: %.2f%%" % (accuracy * 100.0))'''

    
    
    
    
    X = dataset.iloc[:, 1:column_count].values
    y = dataset.iloc[:, 0].values
    
    #print(y)

    X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.5, random_state=seed)   
    
         
    ################################################################################
       
        
    ComputePrecisionRecall(X_train, X_test, y_train, y_test)
    classifier = RandomForestClassifier(n_estimators=10, random_state=0,max_depth=20, min_samples_leaf=40,
                                       min_samples_split=220 )
    rf=classifier.fit(X_train, y_train)
    #y_pred = classifier.predict(X_test)
    #i=0
    #f = open("log.txt", "a")
    '''f.write("ProgramName,RequirementID,MethodID,VariableTrace,MethodType,CallersT,CallersN,CallersU,CallersCallersT,CallersCallersN,CallersCallersU,CalleesT,CalleesN,CalleesU,CalleesCalleesT,CalleesCalleesN,CalleesCalleesU,pred,gold\n")
    while i < y_pred.size:
        s=str(X_test[i][0])+','+str(X_test[i][1])+','+str(X_test[i][2])+','+ str(X_test[i][3])+','+str(X_test[i][4])+','+str(X_test[i][5])+','+str(X_test[i][6]) +','+str(X_test[i][7])+','+str(X_test[i][8])+','+str(X_test[i][9])+','+ str(X_test[i][10])+','+str(X_test[i][11])+','+str(X_test[i][12]) +','+str(X_test[i][13])+','+str(X_test[i][14])+','+str(X_test[i][15]) +','+str(X_test[i][16])+','+str(y_pred[i])+','+str(y_test[i])+'\n'
        f.write(s)
        i += 1
    f.close()   ''' 
    #print('##################################################')
    #print(seed)
    #print('confusion matrix\n',confusion_matrix(y_test,y_pred))
    #print('classification report\n', classification_report(y_test,y_pred))
    #print('accuracy score', accuracy_score(y_test, y_pred))   
    Xcol = dataset.iloc[:, 1:column_count]

    print('Feature Importance')
    for feature in sorted(zip(map(lambda x: round(x, 4), classifier.feature_importances_), Xcol.columns), reverse=True):
        print(feature)    
    print('##################################################')


def ComputePrecisionRecall(X_train, X_test, y_train, y_test):
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
                   if(y_test_list[i]=='N'): 
                       TP_N=TP_N+1
                   elif(y_test_list[i]=='T'): 
                       FP_N=FP_N+1
                       FN_T=FN_T+1
                   mylist = [str(X_test[i][2]), str(X_test[i][3]), str(y_pred_list[i])]
                   i=i+1
            
            elif (probs_list[i][1]>=threshold_T):
                   flag=True
                   y_pred_list[i]=1
                   if(y_test_list[i]=='N'): 
                       FP_T=FP_T+1
                       FN_N=FN_N+1
                   elif(y_test_list[i]=='T'): 
                       TP_T=TP_T+1
                   mylist = [str(X_test[i][2]), str(X_test[i][3]), str(y_pred_list[i])]
                   #print('--------',str(X_test[i]))
                   i=i+1
            else:   
                   #print(y_pred[i])
                   #print('i==> ',i, ' probs length ', len(probs_list), ' ', len(y_pred_list), ' ', len(y_test_list))

                   if (y_test_list[i]=='T'):
                       FN_T=FN_T+1
                       U_T=U_T+1
                   elif (y_test_list[i]=='N'):
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
        seeds = [500,2,10,15,24,31,34,49,58,60]
        for seed in seeds:
            main(seed)
    