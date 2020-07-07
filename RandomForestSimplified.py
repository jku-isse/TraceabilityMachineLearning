import pandas as pd
import numpy as np
from sklearn.feature_selection import SelectFromModel
from sklearn.model_selection import train_test_split
# Feature Scaling
from sklearn.preprocessing import StandardScaler
from sklearn.metrics import classification_report, confusion_matrix, accuracy_score

X_train={}
X_test={}
y_train={}
y_test={}
dataset = pd.read_csv( 'dataExtended2.txt', sep= ',', index_col=False) 
    #convert T into 1 and N into 0

dataset['gold'] = dataset['gold'].astype('category').cat.codes
dataset['Program'] = dataset['Program'].astype('category').cat.codes
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
pd.set_option('display.max_columns', None)

print(dataset.head())
row_count, column_count = dataset.shape
   
X = dataset.iloc[:, 1:column_count].values
y = dataset.iloc[:, 0].values
Xcol = dataset.iloc[:, 1:column_count]
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=0)
   
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
    
    
    
y_pred_original = classifier.predict(X_test)
probs = classifier.predict_proba(X_test)
print('confusion matrix\n',confusion_matrix(y_test,y_pred_original))
print('classification report\n', classification_report(y_test,y_pred_original))
print('accuracy score', accuracy_score(y_test, y_pred_original))
    
    
    

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
    
