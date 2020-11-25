import matplotlib.pyplot as plt
import pandas as pd
import numpy as np

Frequency = [15097,1207,645,93,68,15,19,10,20,3,4,3,1,1,1,1,1,1,2]
variableAmount = ['0', '1', '2', '3', '4', '5', '6', '7', '8','10', '12','13','14', '15', '20', '23', '24', '26', '30'] #sample names


variableAmount_int=[int(x) for x in variableAmount]
X_ticks_array=[i for i in range(min(variableAmount_int),max(variableAmount_int)+1)]

plt.bar(variableAmount_int, Frequency)
plt.xticks(X_ticks_array)
plt.xlabel('Variables per method')
plt.ylabel('Frequency')
plt.show()

###########################################

dataset = pd.read_csv( 'TNUPercentages.txt', sep= ',', index_col=False) 

fig, ax = plt.subplots(figsize=(10,5))
(
    pd.cut(dataset['percT'], bins=np.arange(-10, 110, 10))
        .value_counts()
        .sort_index()
        .plot.bar(ax=ax)
)
plt.xlabel('T percentage')
plt.ylabel('Frequency')
plt.show()
#######################################

dataset = pd.read_csv( 'TNUPercentages.txt', sep= ',', index_col=False) 

fig, ax = plt.subplots(figsize=(10,5))
(
    pd.cut(dataset['percN'], bins=np.arange(-10, 110, 10))
        .value_counts()
        .sort_index()
        .plot.bar(ax=ax)
)
plt.xlabel('N percentage')
plt.ylabel('Frequency')
plt.show()
#######################################
dataset = pd.read_csv( 'TNUPercentages.txt', sep= ',', index_col=False) 

fig, ax = plt.subplots(figsize=(10,5))
(
    pd.cut(dataset['percU'], bins=np.arange(-10, 110, 10))
        .value_counts()
        .sort_index()
        .plot.bar(ax=ax)
)
plt.xlabel('U percentage')
plt.ylabel('Frequency')
plt.show()



