import matplotlib.pyplot as plt
import pandas as pd
import numpy as np
def main():
    Frequency = [14775,1726,464,105,62,12,11,7,13,4,2,0,2,4,0,0,1,0,0,0,1,1,0,0,0,2]
    variableAmount = ['0', '1', '2', '3', '4', '5', '6', '7', '8','9', '10','11','12','13','14','15', '16','17','18','19', '20', '21','22','23','24', '25'] #sample names
    '''
    X_ticks_array=[]
    print('test ', X_ticks_array)
    variableAmount_int=[int(x) for x in variableAmount]
    print('test ', min(variableAmount_int), 'khk ',max(variableAmount_int)+1)
    X_ticks_array=[i for i in range(min(variableAmount_int),max(variableAmount_int)+1)]
    print(X_ticks_array)'''
    plt.bar(variableAmount, Frequency)
    plt.xlabel('Variables per method')
    plt.ylabel('Frequency')
    plt.show()
    
    
    ###########################################
    
    
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
   
    '''
    for range in ranges:
        
        first=int(range[0])
        second=int(range[1])
        print(first,' --- ', second)
        
        tmp = ranges[first<=dataset['percT'] <=second ]
        cnt.append( len(tmp))    
    
    print('CNT ',cnt)
    '''
    fig, ax = plt.subplots(figsize=(10,5))
    (
        pd.cut(dataset['percT'], bins=np.arange(-10, 110, 10))
            .value_counts()
            .sort_index()
            .plot.bar(ax=ax)
    )
    ax.set_yscale('log')

    statistics(dataset)

    plt.xlabel('T percentage')
    plt.ylabel('Frequency')
    plt.show()
    #######################################
    
    dataset = pd.read_csv( 'TNUPercentages.txt', sep= ',', index_col=False) 
    statistics(dataset)
    fig, ax = plt.subplots(figsize=(10,5))
    (
        pd.cut(dataset['percN'], bins=np.arange(-10, 110, 10))
            .value_counts()
            .sort_index()
            .plot.bar(ax=ax)
    )
    statistics(dataset)
    ax.set_yscale('log')

    plt.xlabel('N percentage')
    plt.ylabel('Frequency')
    plt.show()
    #######################################
    dataset = pd.read_csv( 'TNUPercentages.txt', sep= ',', index_col=False) 
    statistics(dataset)
    fig, ax = plt.subplots(figsize=(10,5))
    (
        pd.cut(dataset['percU'], bins=np.arange(-10, 110, 10))
            .value_counts()
            .sort_index()
            .plot.bar(ax=ax)
    )
    statistics(dataset)
    ax.set_yscale('log')

    plt.xlabel('U percentage')
    plt.ylabel('Frequency')
    plt.show()


def statistics(dataset):
    dataset1 = dataset[(dataset['percT']>=0) & (dataset['percT']<10)]
    print('[0,10[',len(dataset1))
    dataset2 = dataset[(dataset['percT']>=10) & (dataset['percT']<20)]
    print('[10,20[',len(dataset2))
    dataset3 = dataset[(dataset['percT']>=20) & (dataset['percT']<30)]
    print('[20,30[',len(dataset3))
    dataset4 = dataset[(dataset['percT']>=30) & (dataset['percT']<40)]
    print('[30,40[',len(dataset4))
    dataset5 = dataset[(dataset['percT']>=40) & (dataset['percT']<50)]
    print('[40,50[',len(dataset5))
    dataset6 = dataset[(dataset['percT']>=50) & (dataset['percT']<60)]
    print('[50,60[',len(dataset6))
    dataset7 = dataset[(dataset['percT']>=60) & (dataset['percT']<70)]
    print('[60,70[',len(dataset7))
    dataset8 = dataset[(dataset['percT']>=70) & (dataset['percT']<80)]
    print('[70,80[',len(dataset8))
    dataset9 = dataset[(dataset['percT']>=80) & (dataset['percT']<90)]
    print('[80,90[',len(dataset9))
    dataset10 = dataset[(dataset['percT']>=90) & (dataset['percT']<=100)]
    print('[90,100]',len(dataset10))

if __name__=="__main__": 
    
        main()