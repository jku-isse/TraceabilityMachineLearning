# Make Predictions with Naive Bayes On The Iris Dataset
from sklearn.cross_validation import train_test_split 
from sklearn import metrics
import pandas as pd 
import numpy as np
import seaborn as sns; sns.set()
from sklearn.metrics import confusion_matrix 
from sklearn.metrics import accuracy_score 
from sklearn.metrics import classification_report 
import seaborn as sns
from sklearn import svm
from sklearn.svm import LinearSVC
from sklearn.feature_extraction.text import TfidfVectorizer
from sklearn.pipeline import Pipeline

DataDependencies=True
CompleteCallersCalleesCallersCallersCalleesCallees=False
SeparateProjectLearning=False
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
    dataset['Top'] = dataset['Top'].astype('category').cat.codes
    dataset['Side'] = dataset['Side'].astype('category').cat.codes
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
    if DataDependencies==True:
            dataset['FieldMethods'] = dataset['FieldMethods'].astype('category').cat.codes
            dataset['Parameters'] = dataset['Parameters'].astype('category').cat.codes
            dataset['ReturnType'] = dataset['ReturnType'].astype('category').cat.codes
            dataset['Parents'] = dataset['Parents'].astype('category').cat.codes
            dataset['Children'] = dataset['Children'].astype('category').cat.codes
    else:
            dataset=dataset.drop(columns=['FieldMethods', 'Parameters','ReturnType','Parents','Children'])
            print(dataset.head())
    pd.set_option('display.max_columns', None)
        
    row_count, column_count = dataset.shape
    
        # Printing the dataswet shape 
    print ("Dataset Length: ", len(dataset)) 
    print ("Dataset Shape: ", dataset.shape) 
    print("Number of columns ", column_count)
    
        # Printing the dataset obseravtions 
    print ("Dataset: ",dataset.head()) 
    
    # Building Phase Separating the target variable 
    X = dataset.values[:, 1:column_count] 
    Y = dataset.values[:, 0] 
    
    # Splitting the dataset into train and test 
    
    if SeparateProjectLearning==True:
        print('=====>CHESS')
        X, Y, X_train, X_test, y_train, y_test = splitdataset(dataset, column_count,'Chess') 
        ComputePrecisionRecall(X_train, X_test, y_train, y_test)     
        print('=====>GANTT')
        X, Y, X_train, X_test, y_train, y_test = splitdataset(dataset, column_count,'Gantt') 
        ComputePrecisionRecall(X_train, X_test, y_train, y_test)    
        print('=====>ITRUST')
        X, Y, X_train, X_test, y_train, y_test = splitdataset(dataset, column_count,'iTrust') 
        ComputePrecisionRecall(X_train, X_test, y_train, y_test)
        print('=====>JHOTDRAW')
        X, Y, X_train, X_test, y_train, y_test = splitdataset(dataset, column_count,'JHotDraw') 
        ComputePrecisionRecall(X_train, X_test, y_train, y_test)
        
    else: 
        X, Y, X_train, X_test, y_train, y_test = splitdataset(dataset, column_count,'') 
        ComputePrecisionRecall(X_train, X_test, y_train, y_test)
    
    
    
    
# Function to split the dataset 
def splitdataset(balance_data, column_count, ProgramName): 
    # Separating the target variable 
    X = balance_data.values[:, 1:column_count] 
    Y = balance_data.values[:, 0] 
        
    if ProgramName=='Chess' and SeparateProjectLearning==True:
        TestSet=balance_data.loc[balance_data['Program'] == 0]
        TrainingSet=balance_data.loc[balance_data['Program'].isin([1,2,3])]
    elif ProgramName=='Gantt' and SeparateProjectLearning==True:
        TestSet=balance_data.loc[balance_data['Program'] == 1]
        TrainingSet=balance_data.loc[balance_data['Program'].isin([0,2,3])]
    elif ProgramName=='iTrust' and SeparateProjectLearning==True:
        TestSet=balance_data.loc[balance_data['Program'] == 2]
        TrainingSet=balance_data.loc[balance_data['Program'].isin([0,1,3])]
    elif ProgramName=='JHotDraw' and SeparateProjectLearning==True:
        TestSet=balance_data.loc[balance_data['Program'] == 3]
        TrainingSet=balance_data.loc[balance_data['Program'].isin([0,1,2])]  
      
    elif CompleteCallersCalleesCallersCallersCalleesCallees==True:
        TrainingSet=balance_data.loc[balance_data['CompleteCallersCalleesCallersCallersCalleesCallees'] == 1]
        TestSet=balance_data.loc[balance_data['CompleteCallersCalleesCallersCallersCalleesCallees'] == 0]
        row_count, column_count = balance_data.shape
        X_test=TestSet.iloc[:, 1:column_count].values
        #print('TEST SET===', X_test)
        y_test=TestSet.iloc[:, 0].values
        #print('TEST SET===', y_test)
            
        X_train=TrainingSet.iloc[:, 1:column_count].values
       # print('TRAINING SET===', X_train)
        y_train=TrainingSet.iloc[:, 0].values
    
      
    X_train, X_test, y_train, y_test = train_test_split( 
    X, Y, test_size = 0.3, random_state = 100) 
    if SeparateProjectLearning==True:
        row_count, column_count = balance_data.shape
   
        X_test=TestSet.iloc[:, 1:column_count].values
        y_test=TestSet.iloc[:, 0].values
            
        X_train=TrainingSet.iloc[:, 1:column_count].values
        y_train=TrainingSet.iloc[:, 0].values
    else:
        X_train, X_test, y_train, y_test = train_test_split(X, Y, test_size = 0.3, random_state = 100) 
    return X, Y, X_train, X_test, y_train, y_test     
    
def ComputePrecisionRecall(X_train, X_test, y_train, y_test):      
    #Create a svm Classifier
 
    svclassifier = svm.SVC(probability=True)
    
    print('Before fitting')
    svclassifier.fit(X_train, y_train)
    predicted = svclassifier.predict(X_test)
    
    print('classification over')
    print(metrics.confusion_matrix(y_test, predicted))
    
    print('prediction over')
    print(metrics.classification_report(y_test, predicted))
    
    probs=svclassifier.predict_proba(X_test)
        
    #probs = svclassifier.predict_proba(X_test)
    probs_list = list(probs)
    y_pred=[None]*len(y_test)
    y_pred_list = list(y_pred)
    y_test_list = list(y_test)
    i=0
    threshold=0.95
    while i<len(probs_list):
                #print('probs ',probs_list[i][0])
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
                       
                       
                       
                      
        #print(y_pred_list)
    print('confusion matrix\n',confusion_matrix(y_test_list,y_pred_list))
    print('classification report\n', classification_report(y_test_list,y_pred_list))
    print('accuracy score', accuracy_score(y_test_list, y_pred_list))
        
    print('Mean Absolute Error:', metrics.mean_absolute_error(y_test_list, y_pred_list))
    print('Mean Squared Error:', metrics.mean_squared_error(y_test_list, y_pred_list))
    print('Root Mean Squared Error:', np.sqrt(metrics.mean_squared_error(y_test_list, y_pred_list)))
    
if __name__=="__main__": 
    main() 