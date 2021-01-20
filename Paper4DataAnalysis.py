import matplotlib.pyplot as plt
import pandas as pd
import numpy as np
def main():
    Frequency = [14775,1726,464,105,62,12,11,7,13,4,2,0,2,4,0,0,1,0,0,0,1,1,0,0,0,2]
    variableAmount = ['0', '1', '2', '3', '4', '5', '6', '7', '8','9', '10','11','12','13','14','15', '16','17','18','19', '20', '21','22','23','24', '25'] #sample names
   
    plt.bar(variableAmount, Frequency)
    plt.xlabel('Variables per method')
    plt.ylabel('Frequency')
    plt.show()
    
    
    ###########################################
    Frequency = [14775,1611,642,121,34,7,2]
    variableAmount = ['[0-1[','[1-2[', '[2-4[','[4-8[','[8-16[','[16-24]','[24-48['] #sample names
    plt.bar(variableAmount, Frequency)
    plt.xlabel('Number of Methods')
    plt.ylabel('Number of Variables')

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


    plt.xlabel('T percentage')
    plt.ylabel('Frequency')
    plt.show()
    statistics(dataset,'percT')

    #######################################
    
    dataset = pd.read_csv( 'TNUPercentages.txt', sep= ',', index_col=False) 
    fig, ax = plt.subplots(figsize=(10,5))
    (
        pd.cut(dataset['percN'], bins=np.arange(-10, 110, 10))
            .value_counts()
            .sort_index()
            .plot.bar(ax=ax)
    )
    ax.set_yscale('log')

    plt.xlabel('N percentage')
    plt.ylabel('Frequency')
    plt.show()
    statistics(dataset,'percN')

    #######################################
    dataset = pd.read_csv( 'TNUPercentages.txt', sep= ',', index_col=False) 
    fig, ax = plt.subplots(figsize=(10,5))
    (
        pd.cut(dataset['percU'], bins=np.arange(-10, 110, 10))
            .value_counts()
            .sort_index()
            .plot.bar(ax=ax)
    )
    ax.set_yscale('log')

    plt.xlabel('U percentage')
    plt.ylabel('Frequency')
    plt.show()
    statistics(dataset,'percU')


def statistics(dataset, perc):
    dataset0 = dataset[(dataset[perc]>=-10) & (dataset[perc]<=0)]
    print('[-10,0]',len(dataset0))
    dataset1 = dataset[(dataset[perc]>0) & (dataset[perc]<10)]
    print(']0,10[',len(dataset1))
    dataset2 = dataset[(dataset[perc]>=10) & (dataset[perc]<20)]
    print('[10,20[',len(dataset2))
    dataset3 = dataset[(dataset[perc]>=20) & (dataset[perc]<30)]
    print('[20,30[',len(dataset3))
    dataset4 = dataset[(dataset[perc]>=30) & (dataset[perc]<40)]
    print('[30,40[',len(dataset4))
    dataset5 = dataset[(dataset[perc]>=40) & (dataset[perc]<50)]
    print('[40,50[',len(dataset5))
    dataset6 = dataset[(dataset[perc]>=50) & (dataset[perc]<60)]
    print('[50,60[',len(dataset6))
    dataset7 = dataset[(dataset[perc]>=60) & (dataset[perc]<70)]
    print('[60,70[',len(dataset7))
    dataset8 = dataset[(dataset[perc]>=70) & (dataset[perc]<80)]
    print('[70,80[',len(dataset8))
    dataset9 = dataset[(dataset[perc]>=80) & (dataset[perc]<90)]
    print('[80,90[',len(dataset9))
    dataset10 = dataset[(dataset[perc]>=90) & (dataset[perc]<=100)]
    print('[90,100]',len(dataset10))

if __name__=="__main__": 
    
        main()