import pandas as pd
import numpy as np
from sklearn.model_selection import train_test_split

SeparateProjectLearning=False


WeakenedCompleteCallersCallees=False
arr = [9, 54, 30, 88, 91, 76, 43, 27, 21, 18]
index=arr[0]
def main():
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
        
    print(dataset.head())
    CompleteSet=dataset.loc[dataset['CompleteCallersCallees'] == 1] 
    X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=len(CompleteSet)/(len(X)*2), random_state=index) 
        
    ytrainSet = pd.DataFrame(np.array(y_train).T)
    xtrainSet = pd.DataFrame(np.array(X_train))
    print('====!!!!!!!\n',ytrainSet.head())
    print('====!!!!!!!\n',xtrainSet.head())
    #remainingSet = pd.DataFrame(ytrainSet, xtrainSet)
    
    
    
    remainingSet=remainingSet.join(pd.DataFrame(
            ytrainSet, xtrainSet,
            index=remainingSet.index,
            columns=['gold','MethodType','CallersT','CallersN','CallersU','CallersCallersT',
                     'CallersCallersN','CallersCallersU','CalleesT','CalleesN','CalleesU','CalleesCalleesT',
                     'CalleesCallleesN','CalleesCalleesU','CompleteCallersCallees','classGold']))
    print('====\n',remainingSet.head())

    
if __name__=="__main__": 
    main() 