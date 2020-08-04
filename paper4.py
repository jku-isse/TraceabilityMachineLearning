# Run this program on your local python 
# interpreter, provided you have installed 
# the required libraries. 

# Importing the required packages 
import numpy as np 
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

import pydotplus
# Function importing Dataset 
column_count =0 
def importdata(): 
    balance_data = pd.read_csv( 'data1extended.txt', sep= ',') 
    row_count, column_count = balance_data.shape

    # Printing the dataswet shape 
    print ("Dataset Length: ", len(balance_data)) 
    print ("Dataset Shape: ", balance_data.shape) 
    print("Number of columns ", column_count)

    # Printing the dataset obseravtions 
    print ("Dataset: ",balance_data.head()) 
    balance_data['gold'] = balance_data['gold'].astype('category').cat.codes

    return balance_data, column_count 
def columns(balance_data): 
    row_count, column_count = balance_data.shape
    return column_count
# Function to split the dataset 
def splitdataset(balance_data, column_count): 

    # Separating the target variable 
    X = balance_data.values[:, 1:column_count] 
    Y = balance_data.values[:, 0] 

    # Splitting the dataset into train and test 
    X_train, X_test, y_train, y_test = train_test_split( 
    X, Y, test_size = 0.3, random_state = 100) 
    
    return X, Y, X_train, X_test, y_train, y_test 
    
# Function to perform training with giniIndex. 
def train_using_gini(X_train, X_test, y_train): 

    # Creating the classifier object 
    clf_gini = DecisionTreeClassifier(criterion = "gini", 
            random_state = 100,max_depth=3, min_samples_leaf=5, splitter='best') 

    # Performing training 
    clf_gini.fit(X_train, y_train) 
    return clf_gini 
    
# Function to perform training with entropy. 
def train_using_entropy(X_train, X_test, y_train): 

    # Decision tree with entropy 
    clf_entropy = DecisionTreeClassifier( 
            criterion = "entropy", random_state = 100, 
            max_depth = 3, min_samples_leaf = 5, splitter='best') 

    print(clf_entropy)
    # Performing training 
    clf_entropy.fit(X_train, y_train) 
    return clf_entropy 


# Function to make predictions 
def prediction(X_test, clf_object): 

    # Predicton on test with giniIndex 
    y_pred = clf_object.predict(X_test) 
    
   

    print("Predicted values:") 
    print(y_pred) 
    return y_pred 
    
# Function to calculate accuracy 
def cal_accuracy(y_test, y_pred): 
    
    print("Confusion Matrix: ", 
        confusion_matrix(y_test, y_pred)) 
    
    print ("Accuracy : ", 
    accuracy_score(y_test,y_pred)*100) 
    
    print("Report : ", 
    classification_report(y_test, y_pred)) 
#Univariate selection 
def selection(column_count, data): 
  #  data = pd.read_csv("data1extended.txt")
    X = data.iloc[:,1:column_count]  #independent columns
    y = data.iloc[:,0]    #target column i.e price range
    #apply SelectKBest class to extract top 10 best features
    bestfeatures = SelectKBest(score_func=chi2, k=5)
    fit = bestfeatures.fit(X,y)
    dfscores = pd.DataFrame(fit.scores_)
    print('heeey',dfscores)
    dfcolumns = pd.DataFrame(X.columns)
    df=pd.DataFrame(data, columns=X)
    #concat two dataframes for better visualization 
    featureScores = pd.concat([dfcolumns,dfscores],axis=1)
    featureScores.columns = ['Specs','Score']  #naming the dataframe columns
    print(featureScores.nlargest(5,'Score'))  #print 10 best features
    return X,y,data,df
#Feature importance
def feature(X,y):    
    model = ExtraTreesClassifier()
    model.fit(X,y)
    print(model.feature_importances_) #use inbuilt class feature_importances of tree based classifiers
    #plot graph of feature importances for better visualization
    feat_importances = pd.Series(model.feature_importances_, index=X.columns)
    feat_importances.nlargest(5).plot(kind='barh')
    plt.show()
#Correlation Matrix 
def correlation(data, column_count):

    corrmat = data.corr()
    top_corr_features = corrmat.index
    plt.figure(figsize=(column_count,column_count))
    #plot heat map
    g=sns.heatmap(data[top_corr_features].corr(),annot=True,cmap="RdYlGn")
def generate_decision_tree(X,y):
     clf = DecisionTreeClassifier(random_state=0)
     data_feature_names = ['callersAtLeast1T','CalleesAtLeast1T','callersAllT','calleesAllT','CallersAtLeast1N','CalleesAtLeast1N','CallersAllN','CalleesAllN','childrenAtLeast1T','parentsAtLeast1T','childrenAtLeast1N','parentsAtLeast1N','childrenAllT','parentsAllT','childrenAllN','ParentsAllN','ParametersatLeast1T','FieldMethodsAtLeast1T','ReturnTypeAtLeast1T','ParametersAtLeast1N','FieldMethodsAtLeast1N','ReturnTypeN','ParametersAllT','FieldMethodsAllT','ParametersAllN','FieldMethodsAllN']
     #generate model 
     model = clf.fit(X, y)
    # Create DOT data
     dot_data = tree.export_graphviz(clf, out_file=None, 
                                    feature_names=data_feature_names,  
                                    class_names=y)
    
    # Draw graph
     graph = pydotplus.graph_from_dot_data(dot_data)  
    
    # Show graph
     Image(graph.create_png())
    # Create PDF
     graph.write_pdf("tree.pdf")
    
    # Create PNG
     graph.write_png("tree.png")
# Driver code 
def main(): 
    
    # Building Phase 
    data,column_count = importdata() 
    X, Y, X_train, X_test, y_train, y_test = splitdataset(data, column_count) 
    clf_gini = train_using_gini(X_train, X_test, y_train) 
    
    clf_entropy = train_using_entropy(X_train, X_test, y_train) 
    
    
    clf_gini.fit(X_test,y_test) 
    probs = clf_gini.predict_proba(X_test)
    for i in range(len(probs)):
        #print('probs[0]',probs[0])
        if (probs[i][0]>0.5) & (probs[i][1]<0.5):
               y_test[i]=0
        
        elif (probs[i][0]<0.5) & (probs[i][1]>0.5):
               y_test[i]=1
        print("Probabilities=%s, Predicted=%s" % (probs[i], y_test[i]))
        

    classifier = tree.DecisionTreeClassifier()
    classifier = classifier.fit(X_test,y_test)

    print('FIT===>  ',classifier)
    # Operational Phase 
    print("Results Using Gini Index:") 
    
    # Prediction using gini 
    y_pred_gini = prediction(X_test, clf_gini) 
    cal_accuracy(y_test, y_pred_gini) 
    
    print("Results Using Entropy:") 
    # Prediction using entropy 
    y_pred_entropy = prediction(X_test, clf_entropy) 
    cal_accuracy(y_test, y_pred_entropy) 

    #COMMENTED OUT THE 4 FOLLOWING LINES DUE TO MEMORY ERROR
    #X,y,dataheaders,df=selection(column_count,data)
    #generate_decision_tree(X,y)
    
    #feature(X,y)
    #correlation(dataheaders,column_count)
# Calling main function 
if __name__=="__main__": 
    main() 
	# data_feature_names = [ 'callersAtLeast1T','CalleesAtLeast1T','callersAllT','calleesAllT','CallersAtLeast1N',
    #                     'CalleesAtLeast1N','CallersAllN','CalleesAllN','InterfacesAtLeast1T','ImplememntationsAtleast1T',
    #                      'childrenAtLeast1T','parentsAtLeast1T','InterfacesAtLeast1N','ImplementationsAtLeast1N',
    #                      'childrenAtLeast1N','parentsAtLeast1N','InterfacesAllT','ImplementationsAllT','childrenAllT',
    #                      'parentsAllT',' InterfacesAllN','ImplementationsAllN','childrenAllN','ParentsAllN',
    #                      'ParametersatLeast1T','FieldMethodsAtLeast1T','ReturnTypeAtLeast1T','ParametersAtLeast1N',
    #                      'FieldMethodsAtLeast1N','ReturnTypeN','ParametersAllT','FieldMethodsAllT','ParametersAllN',
    #                      'FieldMethodsAllN' ]