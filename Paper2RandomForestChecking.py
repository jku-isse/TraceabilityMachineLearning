import pandas as pd
from sklearn.model_selection import train_test_split
from sklearn.preprocessing import StandardScaler
from sklearn.ensemble import RandomForestClassifier
from sklearn.metrics import classification_report, confusion_matrix, accuracy_score
import sys


def main():
    X_train={}
    X_test={}
    y_train={}
    y_test={}
    dataset = pd.read_csv( 'InputDataAtLeastOneInstance.txt', sep= ',', index_col=False) 

    #convert Inner, Root, Leaf into 0, 1, 2
   
    dataset['MethodType'] = dataset['MethodType'].astype('category').cat.codes
    
    #convert T into 1 and N into 0
    
   
    dataset['gold'] = dataset['gold'].astype('category').cat.codes
    
    pd.set_option('display.max_columns', None)

    row_count, column_count = dataset.shape
 
    
    X = dataset.iloc[:, 1:column_count].values
    y = dataset.iloc[:, 0].values
    

    
    
    X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.5, random_state=1)    

    print(X_test)
    
################################################################################
   
    
    
    classifier = RandomForestClassifier(n_estimators=400, random_state=0)
    classifier.fit(X_train, y_train)
    y_pred = classifier.predict(X_test)
    print('X_test===============',X_test)
    print('y_test===============',y_test)
    print('X_train1===============',X_train)
    print('y_train1===============',y_train)
    
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
            if (probs_list[i][0]>=threshold_N):
                   y_pred_list[i]=0
                   if(y_test_list[i]==0): 
                       TP_N=TP_N+1
                   elif(y_test_list[i]==1): 
                       FP_N=FP_N+1
                       FN_T=FN_T+1
                   i=i+1
            
            elif (probs_list[i][1]>=threshold_T):
                   y_pred_list[i]=1
                   if(y_test_list[i]==0): 
                       FP_T=FP_T+1
                       FN_N=FN_N+1
                   elif(y_test_list[i]==1): 
                       TP_T=TP_T+1
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
                   n=n+1

    print('TP_T ',TP_T, 'FP_T, ', FP_T,  'FN_T ', FN_T, 'U_T ', U_T)
    print('TP_N ',TP_N, 'FP_N, ', FP_N,  'FN_N ', FN_N, ' U_N ', U_N)
    print('T PRECISION ', TP_T/(TP_T+FP_T))
    print('T RECALL ', TP_T/(TP_T+FN_T))
    
    print('N PRECISION ', TP_N/(TP_N+FP_N))
    print('N RECALL ', TP_N/(TP_N+FN_N))
    original_stdout = sys.stdout # Save a reference to the original standard output

       
    with open('output.txt', 'w') as f:
        sys.stdout = f # Change the standard output to the file we created.
        for i in probs:
                print (probs[counter][0],',',probs[counter][1],',',X_test[counter],',',y_test[counter])          
                counter=counter+1
    sys.stdout = original_stdout # Reset the standard output to its original value
    print('confusion matrix\n',confusion_matrix(y_test_list,y_pred_list))
    print('classification report\n', classification_report(y_test_list,y_pred_list))
    print('accuracy score', accuracy_score(y_test_list, y_pred_list))
       
    ################################################################################
    
        
        
    
    
    

   

if __name__=="__main__": 
    
        main()
    