import matplotlib.pyplot as plt
import pandas as pd
import numpy as np
import matplotlib as matplotlib

Frequency = [14775,1726,464,105,62,12,11,7,13,4,2,2,4,1,1,1,2]
variableAmount = ['0', '1', '2', '3', '4', '5', '6', '7', '8','9', '10','12','13', '16', '20', '21', '25'] #sample names


variableAmount_int=[int(x) for x in variableAmount]
X_ticks_array=[i for i in range(min(variableAmount_int),max(variableAmount_int)+1)]

plt.bar(variableAmount_int, Frequency)
plt.xticks(X_ticks_array)
plt.xlabel('Variables per method')
plt.ylabel('Frequency')
plt.show()


###########################################

print('matplotlib: {}'.format(matplotlib.__version__))

variableAmount = [16,20,21,10,12,25,9,13,7,6,5,8,4,3,2,1,0]
Frequency = ['1','1','1','2','2','2','4','4','7','11','12','13','62','105','464','1726','14775'] #sample names
helper = np.arange(len(Frequency))

plt.bar(helper, variableAmount)
plt.xticks(ticks=helper, labels=Frequency, rotation=45)

plt.xlabel('Number of Methods')
plt.ylabel('Variables')
plt.show()
###########################################
###########################################
###########################################
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



