import pandas as pd
from sklearn.model_selection import train_test_split
from sklearn.preprocessing import StandardScaler
from sklearn.ensemble import RandomForestClassifier
from sklearn.metrics import classification_report, confusion_matrix, accuracy_score
import sys


def main():
  
    dataset = pd.read_csv( 'inputFields.txt', sep= ',', index_col=False) 
    
    #convert Inner, Root, Leaf into 0, 1, 2
    
    dataset['ProgramName'] = dataset['ProgramName'].astype('category').cat.codes
    dataset['DataTypeName'] = dataset['DataTypeName'].astype('category').cat.codes
    dataset['VariableName'] = dataset['VariableName'].astype('category').cat.codes
    dataset['FieldMethodOwnerClassName'] = dataset['FieldMethodOwnerClassName'].astype('category').cat.codes
    dataset['gold'] = dataset['gold'].astype('category').cat.codes
    
    pd.set_option('display.max_columns', None)
    
    row_count, column_count = dataset.shape
     
        
    X = dataset.iloc[:, 1:column_count].values
    y = dataset.iloc[:, 0].values

    print(y)

    X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.4, random_state=1)    
    
         
    ################################################################################
       
        
        
    classifier = RandomForestClassifier(n_estimators=400, random_state=0)
    classifier.fit(X_train, y_train)
    y_pred = classifier.predict(X_test)
        
    
        
    print('confusion matrix\n',confusion_matrix(y_test,y_pred))
    print('classification report\n', classification_report(y_test,y_pred))
    print('accuracy score', accuracy_score(y_test, y_pred))     
if __name__=="__main__": 
    
        main()
    