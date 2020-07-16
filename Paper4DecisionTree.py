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
DataDependencies=True
CompleteCallersCalleesCallersCallersCalleesCallees=False
SeparateProjectLearning=False

# Function importing Dataset 
column_count =0 
'''
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

    return balance_data, column_count '''
def columns(balance_data): 
    row_count, column_count = balance_data.shape
    return column_count
# Function to split the dataset 
def splitdataset(balance_data, column_count,ProgramName): 

    # Separating the target variable 
    X = balance_data.values[:, 1:column_count] 
    Y = balance_data.values[:, 0] 
    if CompleteCallersCalleesCallersCallersCalleesCallees==True:
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
    elif ProgramName=='Chess' and SeparateProjectLearning==True:
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
    else:
        # Splitting the dataset into train and test 
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
    
   

    print("Predicted values:\n303") 
    #print(y_pred) 
    return y_pred 
    
# Function to calculate accuracy 
def cal_accuracy(y_test, y_pred): 
    
    print("Confusion Matrix: \n", 
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
    #print('dfscores ',dfscores)
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
     dot_data = tree.export_graphviz(clf, out_file=None,feature_names=data_feature_names, class_names=y)
    
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
    column_count=columns(dataset)
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


def ComputePrecisionRecall(X_train, X_test, y_train, y_test):
    clf_gini = train_using_gini(X_train, X_test, y_train)  
    clf_entropy = train_using_entropy(X_train, X_test, y_train) 
    
    
    clf_gini.fit(X_train,y_train) 
    clf_entropy.fit(X_train,y_train) 

            

    classifier = tree.DecisionTreeClassifier()
    classifier = classifier.fit(X_train,y_train)

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



    probs = clf_gini.predict_proba(X_test)
    
    
    y_pred=[None]*len(y_test)
    y_pred_list = list(y_pred)
    y_test_list = list(y_test)
    probs_list = list(probs)
    i=0
    threshold=0.7
    while i<len(probs_list):
            #print('probs ',len(probs_list), 'y_test ', len(y_test_list), 'ypredlist ',len(y_pred_list),' new i', i, ' ')
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
    from sklearn import metrics
    
    print('Mean Absolute Error:', metrics.mean_absolute_error(y_test_list, y_pred_list))
    print('Mean Squared Error:', metrics.mean_squared_error(y_test_list, y_pred_list))
    print('Root Mean Squared Error:', np.sqrt(metrics.mean_squared_error(y_test_list, y_pred_list)))




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