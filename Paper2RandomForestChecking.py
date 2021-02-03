import pandas as pd
from sklearn.model_selection import train_test_split
from sklearn.preprocessing import StandardScaler
from sklearn.ensemble import RandomForestClassifier
from sklearn.metrics import classification_report, confusion_matrix, accuracy_score
import sys


def main():
  
    dataset = pd.read_csv( 'InputDataAtLeastOneInstance.txt', sep= ',', index_col=False) 

    #convert Inner, Root, Leaf into 0, 1, 2
   
    dataset['MethodType'] = dataset['MethodType'].astype('category').cat.codes
    dataset['Program'] = dataset['Program'].astype('category').cat.codes
    
    

    #convert T into 1 and N into 0
    
   
    dataset['gold'] = dataset['gold'].astype('category').cat.codes
    
    pd.set_option('display.max_columns', None)

    row_count, column_count = dataset.shape
    
    #dataset.drop(columns=['Program'], axis=1)
    X = dataset.iloc[:, 5:column_count].values
    y = dataset.iloc[:, 0].values
    
    
    '''X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.5, random_state=0)      
    ComputePrecisionRecall(X_train, X_test, y_train, y_test)

    print('####################################################')

    print('Training set: Chess + Test Set: Gantt')
    X_test, y_test, X_train, y_train =GetResults(dataset,0,1)
    ComputePrecisionRecall(X_train, X_test, y_train, y_test)
    
    print('Training set: Chess + Test Set: iTrust')
    X_test, y_test, X_train, y_train =GetResults(dataset,0,2)
    ComputePrecisionRecall(X_train, X_test, y_train, y_test)

    print('Training set: Chess + Test Set: JHotDraw')
    X_test, y_test, X_train, y_train =GetResults(dataset,0,3)
    ComputePrecisionRecall(X_train, X_test, y_train, y_test)
  
    print('Training set: Chess + Test Set: VOD')
    X_test, y_test, X_train, y_train =GetResults(dataset,0,4)
    ComputePrecisionRecall(X_train, X_test, y_train, y_test)'''
   
    print('####################################################')
    #######################################################################
    
    print('Test Set: Chess + Training set: Gantt, iTrust, JHotDraw, VOD')
    X_test, y_test, X_train, y_train =GetResults2(dataset,0,1,2,3,4)
    ComputePrecisionRecall(X_train, X_test, y_train, y_test)
    
    '''print('Test Set: Gantt + Training set: Chess, iTrust, JHotDraw, VOD ')
    X_test, y_test, X_train, y_train =GetResults2(dataset,1,0,2,3,4)
    ComputePrecisionRecall(X_train, X_test, y_train, y_test)
    
    print('Test set: iTrust + training Set: Chess, Gantt, JHotDraw, VOD')
    X_test, y_test, X_train, y_train =GetResults2(dataset,2,0,1,3,4)
    ComputePrecisionRecall(X_train, X_test, y_train, y_test)
    
    print('Test set: JHotDraw + training Set: Chess, Gantt, iTrust, VOD')
    X_test, y_test, X_train, y_train =GetResults2(dataset,3,0,1,2,4)
    ComputePrecisionRecall(X_train, X_test, y_train, y_test)
    
    print('Test set: VOD + training Set: Chess, Gantt, iTrust, JHotDraw')
    X_test, y_test, X_train, y_train =GetResults2(dataset,4,0,1,2,3)
    ComputePrecisionRecall(X_train, X_test, y_train, y_test)'''



 
################################################################################
   
    
def GetResults2(dataset,test,train1, train2, train3, train4):   
    X_train={}
    X_test={}
    y_train={}
    y_test={}
    trainSet1=dataset.loc[dataset['Program'] == train1]
    trainSet2=dataset.loc[dataset['Program'] == train2]
    trainSet3=dataset.loc[dataset['Program'] == train3]
    trainSet4=dataset.loc[dataset['Program'] == train4]

    TrainingSet=pd.concat([trainSet1, trainSet2, trainSet3, trainSet4])
    TestSet=dataset.loc[dataset['Program'] == test]
    DropColumnProgram(TestSet,TrainingSet)     
    print('trial ',X_test)
    row_count, column_count = dataset.shape
    X_test=TestSet.iloc[:, 1:column_count].values
    y_test=TestSet.iloc[:, 0].values
    X_train=TrainingSet.iloc[:, 1:column_count].values
    y_train=TrainingSet.iloc[:, 0].values
    
    return X_test, y_test, X_train, y_train 
    
        
        
def ComputePrecisionRecall(X_train, X_test, y_train, y_test):
    classifier = RandomForestClassifier(n_estimators=400, random_state=0)
    
    classifier.fit(X_train, y_train)
    y_pred = classifier.predict(X_test)
    
    f = open("dataMachineLearning.txt", "a")
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

            print(X_test[i])
            if (probs_list[i][0]>=threshold_N):
                   flag=True
                   y_pred_list[i]=0
                   if(y_test_list[i]==0): 
                       TP_N=TP_N+1
                   elif(y_test_list[i]==1): 
                       FP_N=FP_N+1
                       FN_T=FN_T+1
                   mylist = [str(X_test[i][2]), str(X_test[i][3]), str(y_pred_list[i])]
                   i=i+1
            
            elif (probs_list[i][1]>=threshold_T):
                   flag=True
                   y_pred_list[i]=1
                   if(y_test_list[i]==0): 
                       FP_T=FP_T+1
                       FN_N=FN_N+1
                   elif(y_test_list[i]==1): 
                       TP_T=TP_T+1
                   mylist = [str(X_test[i][2]), str(X_test[i][3]), str(y_pred_list[i])]
                   print('--------',str(X_test[i]))
                   i=i+1
            else:   
                   #print(y_pred[i])
                   print('i==> ',i, ' probs length ', len(probs_list), ' ', len(y_pred_list), ' ', len(y_test_list))

                   if (y_test_list[i]==1):
                       FN_T=FN_T+1
                       U_T=U_T+1
                   elif (y_test_list[i]==0):
                       FN_N=FN_N+1
                       U_N=U_N+1
                   y_pred_list.pop(i)
                   y_test_list.pop(i)
                   probs_list.pop(i)
                   
                   print('======= ',X_test[i])
                   
                   n=n+1
            if flag==True:
                mylist_string = ",".join(mylist)
                s=mylist_string+"\n"
                f.write(s)
    f.close()
 
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
    
def GetResults(dataset,trainingindex,testindex):   
    X_train={}
    X_test={}
    y_train={}
    y_test={}
    TrainingSet=dataset.loc[dataset['Program'].isin([trainingindex])]
    TestSet=dataset.loc[dataset['Program'] == testindex]
    DropColumnProgram(TestSet,TrainingSet)     
    print('trial ',X_test)
    row_count, column_count = dataset.shape
    X_test=TestSet.iloc[:, 1:column_count].values
    y_test=TestSet.iloc[:, 0].values
    X_train=TrainingSet.iloc[:, 1:column_count].values
    y_train=TrainingSet.iloc[:, 0].values
    
    return X_test, y_test, X_train, y_train 
def DropColumnProgram(TestSet,TrainingSet):
    TestSet=TestSet.drop(columns=['Program'], axis=1)
    TrainingSet=TrainingSet.drop(columns=['Program'], axis=1)
    

if __name__=="__main__": 
    
        main()
    