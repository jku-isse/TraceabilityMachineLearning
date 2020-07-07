# -*- coding: utf-8 -*-
"""
Created on Wed Oct 24 16:29:15 2018

@author: mouna
"""

# -*- coding: utf-8 -*-
"""
Created on Wed Oct 24 14:18:34 2018

@author: uashraf
"""

import numpy as np 

# data processing
import pandas as pd 

# data visualization
import seaborn as sns
from matplotlib import pyplot as plt
from matplotlib import style

# Algorithms
from sklearn import linear_model
from sklearn.linear_model import LogisticRegression
from sklearn.ensemble import RandomForestClassifier
from sklearn.linear_model import Perceptron
from sklearn.linear_model import SGDClassifier
from sklearn.tree import DecisionTreeClassifier
from sklearn.neighbors import KNeighborsClassifier
from sklearn.svm import SVC, LinearSVC
from sklearn.naive_bayes import GaussianNB


data = pd.read_csv('C:/Users/mouna/ownCloud/Share/dumps/tablelogChessPython.csv')

labels = data['Gold2']

#plt.hist(labels)
features = data.iloc[:,1:47]


from sklearn.model_selection import train_test_split

train_features, test_features, train_labels, test_labels = train_test_split(features, labels, test_size = 0.25, random_state = 42)
#test_features  = test_features.drop("Gold2", axis=1)

random_forest = RandomForestClassifier(n_estimators=10)
random_forest.fit([train_features.any()], [train_labels.any()])

Y_prediction = random_forest.predict(test_features)
acc_random_forest_test = round(random_forest.score(test_features, test_labels) * 100, 2)
print(round(acc_random_forest_test,2,), "%")

importances = pd.DataFrame({'feature':train_features.columns,'importance':np.round(random_forest.feature_importances_,3)})
importances = importances.sort_values('importance',ascending=False).set_index('feature')
importances.head(47)

# Decision Tree
decision_tree = DecisionTreeClassifier()
decision_tree.fit([train_features.any()], [train_labels.any()])

Y_pred = decision_tree.predict(test_features)

acc_decision_tree = round(decision_tree.score(test_features, test_labels) * 100, 2)
print(round(acc_decision_tree,2,), "%")
