import pandas as pd
import numpy as np
from sklearn.feature_selection import SelectFromModel
from sklearn.model_selection import train_test_split
# Feature Scaling
from sklearn.preprocessing import StandardScaler
from sklearn.metrics import precision_recall_fscore_support as score

# Creates a list containing 5 lists, each of 8 items, all set to 0
 

SeparateProjectLearningMixed=True
SeparateProjectLearningComplete=False


RandomTrainingRandomTestSet=False
TrainCompTestIncomp=False
TrainIncompTestComp=False
TrainIncompTestRandom=False
TrainCompTestComp=False
TrainIncompTestIncomp=False



if SeparateProjectLearningMixed==False and SeparateProjectLearningComplete==False:
    columns, rows = 10, 6;
else:
    columns, rows=12,6;
Matrix = [[0 for x in range(rows)] for y in range(columns)]

def main(index, row):
    print('NEW INDEX=====',index)
    X_train={}
    X_test={}
    y_train={}
    y_test={}
    dataset = pd.read_csv( 'InputDataHighMediumLow.txt', sep= ',', index_col=False) 

    #convert T into 1 and N into 0
    if SeparateProjectLearningMixed==False and SeparateProjectLearningComplete==False:
        dataset=dataset.drop(columns=['Program'], axis=1)
    else: 
        dataset['Program'] = dataset['Program'].astype('category').cat.codes
    dataset['gold'] = dataset['gold'].astype('category').cat.codes
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


    print(dataset.head())
    row_count, column_count = dataset.shape
 
   
    X = dataset.iloc[:, 1:column_count].values
    y = dataset.iloc[:, 0].values
    Xcol = dataset.iloc[:, 1:column_count]
        
    #print(dataset.head())
    if SeparateProjectLearningMixed==True or SeparateProjectLearningComplete==True: 
        SeparateProjectLearningTestTrainSet('Chess', dataset,X, y, X_train, X_test, y_test, y_train,'ProgramName',index,row)
        SeparateProjectLearningTestTrainSet('Gantt', dataset,X, y, X_train, X_test, y_test, y_train,'ProgramName',index,row)
        SeparateProjectLearningTestTrainSet('iTrust', dataset,X, y, X_train, X_test, y_test, y_train,'ProgramName',index,row)
        SeparateProjectLearningTestTrainSet('JHotDraw', dataset,X, y, X_train, X_test, y_test, y_train,'ProgramName',index,row)
        
    elif TrainIncompTestComp==True:
        SeparateProjectLearningTestTrainSet('', dataset,X, y, X_train, X_test, y_test, y_train,'TrainIncompTestComp',index,row)

    elif TrainCompTestIncomp==True: 
        SeparateProjectLearningTestTrainSet('', dataset,X, y, X_train, X_test, y_test, y_train,'TrainCompTestIncomp',index,row)
   
    elif TrainIncompTestRandom==True:
        SeparateProjectLearningTestTrainSet('', dataset,X, y, X_train, X_test, y_test, y_train,'TrainIncompTestRandom',index,row)
    elif TrainCompTestComp==True:
        SeparateProjectLearningTestTrainSet('', dataset,X, y, X_train, X_test, y_test, y_train,'TrainCompTestComp',index,row)
    elif TrainIncompTestIncomp==True:
        SeparateProjectLearningTestTrainSet('', dataset,X, y, X_train, X_test, y_test, y_train,'TrainIncompTestIncomp',index,row)
   
    elif RandomTrainingRandomTestSet==True:      
        SeparateProjectLearningTestTrainSet('', dataset,X, y, X_train, X_test, y_test, y_train,'RandomTrainingRandomTestSet',index,row)
        #X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.5, random_state=index)      
        #XtrainYtrainXtestYtest(X_train, X_test, y_test, y_train, Xcol)
        
   

def SeparateProjectLearningTestTrainSet(ProgramName, dataset, X, y, X_train, X_test, y_test, y_train,Type,index,row):
    #Test Set=Chess
    row_count, column_count = dataset.shape

   
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
    
    if Type=='ProgramName' and (SeparateProjectLearningMixed==True or SeparateProjectLearningComplete==True):    
        if ProgramName=='Chess':
            GetResults(dataset,0,1,X_test,y_test,X_train,y_train,0)
            GetResults(dataset,0,2,X_test,y_test,X_train,y_train,1)
            GetResults(dataset,0,3,X_test,y_test,X_train,y_train,2)

        elif ProgramName=='Gantt':
            GetResults(dataset,1,0,X_test,y_test,X_train,y_train,3)
            GetResults(dataset,1,2,X_test,y_test,X_train,y_train,4)
            GetResults(dataset,1,3,X_test,y_test,X_train,y_train,5)
        elif ProgramName=='iTrust':
            GetResults(dataset,2,0,X_test,y_test,X_train,y_train,6)
            GetResults(dataset,2,1,X_test,y_test,X_train,y_train,7)
            GetResults(dataset,2,3,X_test,y_test,X_train,y_train,8)
  
        elif ProgramName=='JHotDraw':
            GetResults(dataset,3,0,X_test,y_test,X_train,y_train,9)
            GetResults(dataset,3,1,X_test,y_test,X_train,y_train,10)
            GetResults(dataset,3,2,X_test,y_test,X_train,y_train,11)
        
        
   

    elif Type=='TrainCompTestComp':
        X_train, X_test, y_train, y_test = train_test_split(CompleteSet_X, CompleteSet_Y, test_size=0.5, random_state=index)      
        print('x_test ==> ',len(X_test), ' y_test ', len(y_test), ' x_train ', len(X_train), '  y_train ', len(y_train))    

    elif Type=='TrainIncompTestIncomp':
        perc=len(CompleteSet)/(len(IncompleteSet)*2)
        X_train, X_test, y_train, y_test = train_test_split(IncompleteSet_X, IncompleteSet_Y, test_size=perc, train_size=perc, random_state=index)      
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


        
   
    if Type=='TrainCompTestIncomp' or Type=='TrainIncompTestComp':
        row_count, column_count = dataset.shape
        X_test=TestSet.iloc[:, 1:column_count].values
        y_test=TestSet.iloc[:, 0].values
        X_train=TrainingSet.iloc[:, 1:column_count].values
        y_train=TrainingSet.iloc[:, 0].values
        print('*****************************************************')
        print('*****************************************************')
        print('*****************************************************')

    print(ProgramName)
    if Type!='ProgramName':
        Xcol = dataset.iloc[:, 1:column_count]
        #print(X_train)
        XtrainYtrainXtestYtest(X_train, X_test, y_test, y_train, Xcol,index,row)
def GetResults(dataset,trainingindex,testindex,X_test,y_test,X_train,y_train,row):   
    TrainingSet=dataset.loc[dataset['Program'].isin([trainingindex])]
    if SeparateProjectLearningComplete==True:
        TrainingSet=TrainingSet.loc[TrainingSet['CompleteCallersCallees']==1]
    TestSet=dataset.loc[dataset['Program'] == testindex]
    DropColumnProgram(TestSet,TrainingSet)     
    X_test,y_test,X_train,y_train=FormXandYTrainingTestSet(TestSet,TrainingSet,dataset,X_test,y_test,X_train,y_train)
    print('trial ',X_test)
    row_count, column_count = dataset.shape
    Xcol = dataset.iloc[:, 1:column_count]  
    XtrainYtrainXtestYtest(X_train, X_test, y_test, y_train, Xcol,0,row)
def DropColumnProgram(TestSet,TrainingSet):
    TestSet=TestSet.drop(columns=['Program'], axis=1)
    TrainingSet=TrainingSet.drop(columns=['Program'], axis=1)
def FormXandYTrainingTestSet(TestSet,TrainingSet,dataset,X_test,y_test,X_train,y_train):
    row_count, column_count = dataset.shape
    X_test=TestSet.iloc[:, 1:column_count].values
    y_test=TestSet.iloc[:, 0].values
    X_train=TrainingSet.iloc[:, 1:column_count].values
    y_train=TrainingSet.iloc[:, 0].values
    return X_test, y_test, X_train,y_train


def XtrainYtrainXtestYtest(X_train, X_test, y_test, y_train, Xcol,index,row):
    sc = StandardScaler()
    print('===',X_test)
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
    '''print('Feature Importance')
    for feature in sorted(zip(map(lambda x: round(x, 4), classifier.feature_importances_), Xcol.columns), reverse=True):
        print(feature)'''
    
    
    from sklearn.metrics import classification_report, confusion_matrix, accuracy_score
    
    y_pred_original = classifier.predict(X_test)
    probs= classifier.predict_proba(X_test)
    precision,recall,fscore,support=score(y_test,y_pred_original)
    print(row)
    Matrix[row][0]=format(precision[1])
    Matrix[row][1]=format(recall[1])
    Matrix[row][2]=format(fscore[1])

    Matrix[row][3]=format(precision[0])
    Matrix[row][4]=format(recall[0])
    Matrix[row][5]=format(fscore[0])
    
    
    print('confusion matrix\n',confusion_matrix(y_test,y_pred_original))
    print('classification report\n', classification_report(y_test,y_pred_original))
    print('accuracy score', accuracy_score(y_test, y_pred_original))
   
    
   
if __name__=="__main__": 
    arr = [9, 54, 30, 88, 91, 76, 43, 27, 21, 18]
    row=0
    if SeparateProjectLearningMixed==False and SeparateProjectLearningComplete==False:
        for i in arr:
            print(i)
            main(i,row)
            row=row+1
        
    else:
        main(0,0)
    for row in Matrix:
            for val in row:
                print ('{:.2f}'.format(float(val)*100), end = ' ')  
            print()