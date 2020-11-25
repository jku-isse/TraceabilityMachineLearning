
# Make Predictions with Naive Bayes On The Iris Dataset
from csv import reader
from math import sqrt
from math import exp
from math import pi
from sklearn.cross_validation import train_test_split 
from sklearn import datasets
from sklearn import metrics
from sklearn.naive_bayes import GaussianNB
import pandas as pd 
import numpy as np
import matplotlib.pyplot as plt
import seaborn as sns; sns.set()
import numpy as np 
from sklearn.linear_model import LogisticRegression
import pandas as pd 
from sklearn.metrics import confusion_matrix 
from sklearn.cross_validation import train_test_split 
from sklearn.tree import DecisionTreeClassifier 
from sklearn.metrics import accuracy_score 
from sklearn.metrics import classification_report 
from sklearn.ensemble import ExtraTreesClassifier
import matplotlib.pyplot as plt
import seaborn as sns
from sklearn.feature_selection import SelectKBest
from sklearn.feature_selection import chi2
from sklearn.externals.six import StringIO  
from IPython.display import Image  
from sklearn.tree import export_graphviz
from sklearn import tree
import collections
# Function to split the dataset 
def splitdataset(balance_data, column_count): 

    # Separating the target variable 
    X = balance_data.values[:, 1:column_count] 
    Y = balance_data.values[:, 0] 

    # Splitting the dataset into train and test 
    X_train, X_test, y_train, y_test = train_test_split( 
    X, Y, test_size = 0.3, random_state = 100) 
    
    return X, Y, X_train, X_test, y_train, y_test 

def importdata(): 
    balance_data = pd.read_csv( 'dataExtended.txt', sep= ',') 
    row_count, column_count = balance_data.shape

    # Printing the dataswet shape 
    print ("Dataset Length: ", len(balance_data)) 
    print ("Dataset Shape: ", balance_data.shape) 
    print("Number of columns ", column_count)

    # Printing the dataset obseravtions 
    print ("Dataset: ",balance_data.head()) 
    balance_data['gold'] = balance_data['gold'].astype('category').cat.codes
    balance_data['Program'] = balance_data['Program'].astype('category').cat.codes

    return balance_data, column_count 

 
# Driver code 
def main(): 
    print("hey")

    # Building Phase 
    data,column_count = importdata() 
    X, Y, X_train, X_test, y_train, y_test = splitdataset(data, column_count) 
    model = LogisticRegression()
    model.fit(X_test, y_test)
    predicted = model.predict(X_test)   
    print(metrics.classification_report(y_test, predicted))
    print(metrics.confusion_matrix(y_test, predicted))
    probs = model.predict_proba(X_test)
    probs_list = list(probs)
    y_pred=[None]*len(y_test)
    y_pred_list = list(y_pred)
    y_test_list = list(y_test)
    i=0
    threshold=0.8
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