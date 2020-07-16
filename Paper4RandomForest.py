import pandas as pd
import numpy as np
from sklearn.feature_selection import SelectFromModel
from sklearn.model_selection import train_test_split
# Feature Scaling
from sklearn.preprocessing import StandardScaler
SeparateProjectLearning=False

TrainCompTestIncomp=False
TrainIncompTestComp=False
TrainCompTestCompIncomp=False
TrainInCompTestCompIncomp=False
TrainCompIncompTestIncomp=False
TrainCompIncompTestComp=True

WeakenedCompleteCallersCallees=True

RandomTrainingTestSet=False

def main():
    X_train={}
    X_test={}
    y_train={}
    y_test={}
    dataset = pd.read_csv( 'InputData.txt', sep= ',', index_col=False) 
    #convert T into 1 and N into 0
    dataset['gold'] = dataset['gold'].astype('category').cat.codes
    dataset['Program'] = dataset['Program'].astype('category').cat.codes
    dataset['classGold'] = dataset['classGold'].astype('category').cat.codes
    dataset['MethodType'] = dataset['MethodType'].astype('category').cat.codes
    
    dataset['CallersT'] = dataset['CallersT'].astype('category').cat.codes
    dataset['CallersN'] = dataset['CallersN'].astype('category').cat.codes
    dataset['CallersU'] = dataset['CallersU'].astype('category').cat.codes
    dataset['CallersCallersT'] = dataset['CallersCallersT'].astype('category').cat.codes
    dataset['CallersCallersN'] = dataset['CallersCallersN'].astype('category').cat.codes
    dataset['CallersCallersU'] = dataset['CallersCallersU'].astype('category').cat.codes
    dataset['CalleesT'] = dataset['CalleesT'].astype('category').cat.codes
    dataset['CalleesN'] = dataset['CalleesN'].astype('category').cat.codes
    dataset['CalleesU'] = dataset['CalleesU'].astype('category').cat.codes
    dataset['CalleesCalleesT'] = dataset['CalleesCalleesT'].astype('category').cat.codes
    dataset['CalleesCalleesN'] = dataset['CalleesCalleesN'].astype('category').cat.codes
    dataset['CalleesCalleesU'] = dataset['CalleesCalleesU'].astype('category').cat.codes

    
    pd.set_option('display.max_columns', None)


    #print(dataset.head())
    row_count, column_count = dataset.shape
 
   
    X = dataset.iloc[:, 1:column_count].values
    y = dataset.iloc[:, 0].values
    Xcol = dataset.iloc[:, 1:column_count]
        
              
    if SeparateProjectLearning==True: 
        

        SeparateProjectLearningTestTrainSet('Chess', dataset, X_train, X_test, y_test, y_train,'ProgramName')
        SeparateProjectLearningTestTrainSet('Gantt', dataset, X_train, X_test, y_test, y_train,'ProgramName')
        SeparateProjectLearningTestTrainSet('iTrust', dataset, X_train, X_test, y_test, y_train,'ProgramName')
        SeparateProjectLearningTestTrainSet('JHotDraw', dataset, X_train, X_test, y_test, y_train,'ProgramName')


    elif TrainCompTestIncomp==True: 
        SeparateProjectLearningTestTrainSet('Complete', dataset, X_train, X_test, y_test, y_train,'TrainCompTestIncomp')
   
    elif TrainCompTestCompIncomp==True:
        SeparateProjectLearningTestTrainSet('Complete', dataset, X_train, X_test, y_test, y_train,'TrainCompTestCompIncomp')
    elif TrainInCompTestCompIncomp==True:
        SeparateProjectLearningTestTrainSet('Complete', dataset, X_train, X_test, y_test, y_train,'TrainInCompTestCompIncomp')
    elif TrainCompIncompTestIncomp==True:
        SeparateProjectLearningTestTrainSet('Complete', dataset, X_train, X_test, y_test, y_train,'TrainCompIncompTestIncomp')
    elif TrainCompIncompTestComp==True:
        SeparateProjectLearningTestTrainSet('Complete', dataset, X_train, X_test, y_test, y_train,'TrainCompIncompTestComp')
  
    elif RandomTrainingTestSet==True:      
        X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.3, random_state=0)      
        XtrainYtrainXtestYtest(X_train, X_test, y_test, y_train, Xcol)
        
   

def SeparateProjectLearningTestTrainSet(ProgramName, dataset, X_train, X_test, y_test, y_train,Type):
    #Test Set=Chess
    row_count, column_count = dataset.shape

    if WeakenedCompleteCallersCallees==True: 
       CompleteSet = dataset[((dataset['CallersU'] == 0) | (dataset['CallersU'] == 2)) 
       & ((dataset['CalleesU']==0) | (dataset['CalleesU']==2))]

       
       IncompleteSet = dataset[((dataset['CallersU'] == 1) | (dataset['CallersU'] == 3)) 
       & ((dataset['CalleesU']==1) | (dataset['CalleesU']==3))]
       
       
       
       

   
    else:   
        CompleteSet=dataset.loc[dataset['CompleteCallersCallees'] == 1] 
        IncompleteSet=dataset.loc[dataset['CompleteCallersCallees'] == 0]
        
    CompleteSet_X = CompleteSet.iloc[:, 1:column_count]
    CompleteSet_Y = CompleteSet.iloc[:, 0]
    IncompleteSet_X = IncompleteSet.iloc[:, 1:column_count]
    IncompleteSet_Y = IncompleteSet.iloc[:, 0]
    if Type=='ProgramName':    
        if ProgramName=='Chess':
            TestSet=dataset.loc[dataset['Program'] == 0]
            TrainingSet=dataset.loc[dataset['Program'].isin([1,2,3])]
        elif ProgramName=='Gantt':
            TestSet=dataset.loc[dataset['Program'] == 1]
            TrainingSet=dataset.loc[dataset['Program'].isin([0,2,3])]
        elif ProgramName=='iTrust':
            TestSet=dataset.loc[dataset['Program'] == 2]
            TrainingSet=dataset.loc[dataset['Program'].isin([0,1,3])]    
        elif ProgramName=='JHotDraw':
            TestSet=dataset.loc[dataset['Program'] == 3]
            TrainingSet=dataset.loc[dataset['Program'].isin([0,1,2])]
      
    elif Type=='TrainCompTestIncomp':
        #Train on complete data + test on incomplete data
        TrainingSet=CompleteSet
        TestSet=IncompleteSet
    elif Type=='TrainIncompTestcomp':
        #Train on incomplete data + test on complete data
        TrainingSet=IncompleteSet
        TestSet=CompleteSet
    elif Type=='TrainCompTestCompIncomp':
        #Train on complete data + test on both complete and incomplete data
       
        X_train, X_test, y_train, y_test = train_test_split(CompleteSet_X, CompleteSet_Y, test_size = 0.2, random_state = 0)
        X_test1=IncompleteSet.iloc[:, 1:column_count]
        X_test=pd.concat([X_test1,X_test])
        y_test1=IncompleteSet.iloc[:, 0]
        y_test=pd.concat([y_test1, y_test])
    elif Type=='TrainInCompTestCompIncomp':
        #Train on incomplete data + test on both complete and incomplete data
      
        X_train, X_test, y_train, y_test = train_test_split(IncompleteSet_X, IncompleteSet_Y, test_size = 0.2, random_state = 0)
        X_test1=CompleteSet.iloc[:, 1:column_count]
        X_test=pd.concat([X_test1,X_test])
        y_test1=CompleteSet.iloc[:, 0]
        y_test=pd.concat([y_test1, y_test]) 
    elif Type=='TrainCompIncompTestIncomp':
      
        X_train, X_test, y_train, y_test = train_test_split(IncompleteSet_X, IncompleteSet_Y, test_size = 0.8, random_state = 0)
        X_training1=CompleteSet.iloc[:, 1:column_count]
        X_train=pd.concat([X_training1,X_train])
        y_training1=CompleteSet.iloc[:, 0]
        y_train=pd.concat([y_training1, y_train])
    elif Type=='TrainCompIncompTestComp':
        
        X_train, X_test, y_train, y_test = train_test_split(CompleteSet_X, CompleteSet_Y, test_size = 0.8, random_state = 0)
        X_training1=IncompleteSet.iloc[:, 1:column_count]
        X_train=pd.concat([X_training1,X_train])
        y_training1=IncompleteSet.iloc[:, 0]
        y_train=pd.concat([y_training1, y_train])
   
    if Type=='TrainCompTestIncomp' or Type=='ProgramName' or Type=='TrainIncompTestComp':
        row_count, column_count = dataset.shape
        X_test=TestSet.iloc[:, 1:column_count].values
        #print('TEST SET===', X_test)
        y_test=TestSet.iloc[:, 0].values
        #print('TEST SET===', y_test)
            
        X_train=TrainingSet.iloc[:, 1:column_count].values
       # print('TRAINING SET===', X_train)
        y_train=TrainingSet.iloc[:, 0].values
        #print('TRAINING SET===', y_train)
        print('*****************************************************')
        print('*****************************************************')
        print('*****************************************************')

    print(ProgramName)
    Xcol = dataset.iloc[:, 1:column_count]
    XtrainYtrainXtestYtest(X_train, X_test, y_test, y_train, Xcol)

        
     
    
def XtrainYtrainXtestYtest(X_train, X_test, y_test, y_train, Xcol):
    sc = StandardScaler()
    X_train = sc.fit_transform(X_train)
    X_test = sc.transform(X_test)
    
    from sklearn.ensemble import RandomForestClassifier
    
    classifier = RandomForestClassifier(n_estimators=400, random_state=0)
    classifier.fit(X_train, y_train)
    
    
    sel = SelectFromModel(RandomForestClassifier(n_estimators = 400))
    sel.fit(X_train, y_train)
    sel.get_support()
    selected_feat= Xcol.columns[(sel.get_support())]
    len(selected_feat)
    print(selected_feat)
    print('Feature Importance')
    for feature in sorted(zip(map(lambda x: round(x, 4), classifier.feature_importances_), Xcol.columns), reverse=True):
        print(feature)
    
    
    from sklearn.metrics import classification_report, confusion_matrix, accuracy_score
    
    y_pred_original = classifier.predict(X_test)
    probs= classifier.predict_proba(X_test)
    print('confusion matrix\n',confusion_matrix(y_test,y_pred_original))
    print('classification report\n', classification_report(y_test,y_pred_original))
    print('accuracy score', accuracy_score(y_test, y_pred_original))
    
    
    
    '''for x in range(len(y_test)): 
        print(y_test[x],'   ',y_pred_original[x])'''
    y_pred=[None]*len(y_test)
    y_pred_list = list(y_pred)
    y_test_list = list(y_test)
    probs_list = list(probs)
    
    i=0
    n=0
    threshold=0.95
    while i<len(probs_list):
            #print('i ',i)
            if (probs_list[i][0]>=threshold) & (probs_list[i][1]<threshold):
                   y_pred_list[i]=0
                   i=i+1
            
            elif (probs_list[i][0]<threshold) & (probs_list[i][1]>=threshold):
                   y_pred_list[i]=1
                   i=i+1
            else:   
                   #print(y_pred[i])
                   #print('i==> ',i, ' probs length ', len(probs_list), ' ', len(y_pred_list), ' ', len(y_test_list))
                   y_pred_list.pop(i)
                   y_test_list.pop(i)
                   probs_list.pop(i)
                   n=n+1
                   
                   
                  
    #print(y_pred_list)
    print('confusion matrix\n',confusion_matrix(y_test_list,y_pred_list))
    print('classification report\n', classification_report(y_test_list,y_pred_list))
    print('accuracy score', accuracy_score(y_test_list, y_pred_list))
    from sklearn import metrics
    
    print('Mean Absolute Error:', metrics.mean_absolute_error(y_test_list, y_pred_list))
    print('Mean Squared Error:', metrics.mean_squared_error(y_test_list, y_pred_list))
    print('Root Mean Squared Error:', np.sqrt(metrics.mean_squared_error(y_test_list, y_pred_list)))
    
if __name__=="__main__": 
    main() 