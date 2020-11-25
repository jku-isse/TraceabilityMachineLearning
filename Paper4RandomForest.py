import pandas as pd
import numpy as np
from sklearn.feature_selection import SelectFromModel
from sklearn.model_selection import train_test_split
# Feature Scaling
from sklearn.preprocessing import StandardScaler
SeparateProjectLearning=False

RandomTrainingRandomTestSet=False
TrainCompTestIncomp=False
TrainIncompTestComp=False
TrainIncompTestRandom=False
TrainCompTestComp=True

WeakenedCompleteCallersCallees=False

def main(index):
    print('NEW INDEX=====',index)
    X_train={}
    X_test={}
    y_train={}
    y_test={}
    dataset = pd.read_csv( 'InputData.txt', sep= ',', index_col=False) 
    #dataset = pd.read_csv( 'InputData.txt', sep= ',', index_col=False) 

    #convert T into 1 and N into 0
    dataset=dataset.drop(columns=['Program'], axis=1)
    dataset['gold'] = dataset['gold'].astype('category').cat.codes
    #dataset['Program'] = dataset['Program'].astype('category').cat.codes
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
        
    #print(dataset.head())
    if SeparateProjectLearning==True: 
        

        SeparateProjectLearningTestTrainSet('Chess', dataset,X, y, X_train, X_test, y_test, y_train,'ProgramName',index)
        SeparateProjectLearningTestTrainSet('Gantt', dataset,X, y, X_train, X_test, y_test, y_train,'ProgramName',index)
        SeparateProjectLearningTestTrainSet('iTrust', dataset,X, y, X_train, X_test, y_test, y_train,'ProgramName',index)
        SeparateProjectLearningTestTrainSet('JHotDraw', dataset,X, y, X_train, X_test, y_test, y_train,'ProgramName',index)

    elif TrainIncompTestComp==True:
        SeparateProjectLearningTestTrainSet('Complete', dataset,X, y, X_train, X_test, y_test, y_train,'TrainIncompTestComp',index)

    elif TrainCompTestIncomp==True: 
        SeparateProjectLearningTestTrainSet('Complete', dataset,X, y, X_train, X_test, y_test, y_train,'TrainCompTestIncomp',index)
   
    elif TrainIncompTestRandom==True:
        SeparateProjectLearningTestTrainSet('Complete', dataset,X, y, X_train, X_test, y_test, y_train,'TrainIncompTestRandom',index)
    elif TrainCompTestComp==True:
        SeparateProjectLearningTestTrainSet('Complete', dataset,X, y, X_train, X_test, y_test, y_train,'TrainCompTestComp',index)
   
    elif RandomTrainingRandomTestSet==True:      
        SeparateProjectLearningTestTrainSet('Complete', dataset,X, y, X_train, X_test, y_test, y_train,'RandomTrainingRandomTestSet',index)
        #X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.5, random_state=index)      
        #XtrainYtrainXtestYtest(X_train, X_test, y_test, y_train, Xcol)
        
   

def SeparateProjectLearningTestTrainSet(ProgramName, dataset, X, y, X_train, X_test, y_test, y_train,Type,index):
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
        #print(CompleteSet)
        Length=CompleteSet.loc[CompleteSet['gold']==1] 
        print('Length=== ',len(Length))
        print('Complete ',len(CompleteSet))
        print('Incomplete ',len(IncompleteSet))
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
      
    elif Type=='TrainCompTestComp':
        X_train, X_test, y_train, y_test = train_test_split(CompleteSet_X, CompleteSet_Y, test_size=0.5, random_state=index)      
        print('x_test ==> ',len(X_test), ' y_test ', len(y_test), ' x_train ', len(X_train), '  y_train ', len(y_train))    


    elif Type=='TrainCompTestIncomp':
        #Train on complete data + test on incomplete data
        TrainingSet=CompleteSet.sample(frac=.5, random_state=index)
        TestSet=IncompleteSet.sample(frac=len(CompleteSet)/(len(IncompleteSet)*2), random_state=index)
        print('training set ',len(TrainingSet))
        print('test set ',len(TestSet))

    elif Type=='TrainIncompTestComp':
        #Train on incomplete data + test on complete data
        TrainingSet=IncompleteSet.sample(frac=len(CompleteSet)/(len(IncompleteSet)*2), random_state=index)
        TestSet=CompleteSet.sample(frac=0.5, random_state=index)
        print('TrainingSet---  ',len(TrainingSet))
        print('TestSet---  ',len(TestSet))


    elif Type=='RandomTrainingRandomTestSet':
        X_train, X_test, y_train, y_test = train_test_split(X, y, train_size=len(CompleteSet)/(len(X)*2),test_size=len(CompleteSet)/(len(X)*2), random_state=index) 
        print('X_train length ',len(X_train))
        print('y_train length ',len(y_train))
        print('x_test length ',len(X_test))
        print('y_test length ',len(y_test))
        


    elif Type=='TrainIncompTestRandom':
    
        X_train, X_test, y_train, y_test = train_test_split(IncompleteSet_X, IncompleteSet_Y, train_size=len(CompleteSet)/(len(IncompleteSet)*2), random_state=index)      
        print('x_test ==> ',len(X_test), ' y_test ', len(y_test), ' x_train ', len(X_train), '  y_train ', len(y_train))    
        
        remainingIncompleteSet = pd.concat([y_test, X_test], axis=1)
        print(']]]',len(remainingIncompleteSet))
        TestSet=pd.concat([CompleteSet, remainingIncompleteSet], axis=0)

        print(']]]',len(TestSet))

        TestSet=TestSet.sample(frac=len(CompleteSet)/(len(TestSet)*2), random_state=index)
        print(len(TestSet))

        X_test=TestSet.iloc[:, 1:column_count].values
        y_test=TestSet.iloc[:, 0].values
        print('x_test ==> ',len(X_test), ' y_test ', len(y_test), ' x_train ', len(X_train), '  y_train ', len(y_train))    


        
   
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
    #print(X_train)
    XtrainYtrainXtestYtest(X_train, X_test, y_test, y_train, Xcol)

        
     
    
def XtrainYtrainXtestYtest(X_train, X_test, y_test, y_train, Xcol):
    sc = StandardScaler()
    X_train = sc.fit_transform(X_train)
    X_test = sc.transform(X_test)
    
    from sklearn.ensemble import RandomForestClassifier
    
    classifier = RandomForestClassifier(n_estimators=400, random_state=index)
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
    
    
    
    '''
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
    '''
if __name__=="__main__": 
    arr = [9, 54, 30, 88, 91, 76, 43, 27, 21, 18]
    for i in arr:
        print(i)
       
        main(i) 