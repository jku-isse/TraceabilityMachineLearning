import matplotlib.pyplot as plt
import pandas as pd


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
X_ticks_array=[i for i in range(0, 100, 10)]
plt.xticks(X_ticks_array)


Tdata= dataset['percT']
print(Tdata.head())
plt.hist(Tdata);
plt.xlabel('Percentages of T')
plt.ylabel('Frequency')
plt.show()

Ndata= dataset['percN']
print(Ndata.head())
plt.hist(Ndata);
plt.xlabel('Percentages of N')
plt.ylabel('Frequency')
plt.show()

Udata= dataset['percU']
print(Udata.head())
plt.hist(Udata);
plt.xlabel('Percentages of U')
plt.ylabel('Frequency')
plt.show()


