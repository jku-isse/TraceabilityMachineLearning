import pandas as pd
import sklearn
from sklearn.model_selection import train_test_split
from sklearn.preprocessing import StandardScaler
from sklearn.ensemble import RandomForestClassifier
from sklearn.metrics import classification_report
from sklearn.metrics import classification_report, confusion_matrix, accuracy_score
import sys
import os
import matplotlib.pyplot as plt



plt.rc('xtick', labelsize=13) 
plt.rc('ytick', labelsize=13) 
plt.rc('font', weight='bold')

TtoN5PrecT=[]
TtoN10PrecT=[]
TtoN15PrecT=[]
TtoN20PrecT=[]
TtoN25PrecT=[]	
        
TtoN5PrecN=[]
TtoN10PrecN=[]
TtoN15PrecN=[]
TtoN20PrecN=[]
TtoN25PrecN=[]	
    
TtoN5RecT=[]
TtoN10RecT=[]
TtoN15RecT=[]
TtoN20RecT=[]
TtoN25RecT=[]	
        
TtoN5RecN=[]
TtoN10RecN=[]
TtoN15RecN=[]
TtoN20RecN=[]
TtoN25RecN=[]	
       
NtoT0_5PrecT=[]
NtoT1PrecT=[]
NtoT1_5PrecT=[]
NtoT2PrecT=[]
NtoT2_5PrecT=[]	
        
NtoT0_5PrecN=[]
NtoT1PrecN=[]
NtoT1_5PrecN=[]
NtoT2PrecN=[]
NtoT2_5PrecN=[]	
    
NtoT0_5RecT=[]
NtoT1RecT=[]
NtoT1_5RecT=[]
NtoT2RecT=[]
NtoT2_5RecT=[]	
        
NtoT0_5RecN=[]
NtoT1RecN=[]
NtoT1_5RecN=[]
NtoT2RecN=[]
NtoT2_5RecN=[]	

def main():
    
    X_train={}
    X_test={}
    y_train={}
    y_test={}
    
   
    CorrectData = pd.read_csv( 'InputDataAtLeastOneInstance.txt', sep= ',', index_col=False) 
    CorrectData=CorrectData.drop(columns=['Program'], axis=1)
    row_count, column_count = CorrectData.shape
    CorrectData['MethodType'] = CorrectData['MethodType'].astype('category').cat.codes
    CorrectData['gold'] = CorrectData['gold'].astype('category').cat.codes
    


    X = CorrectData.iloc[:, 1:column_count].values
    y = CorrectData.iloc[:, 0].values
    X_train, X_test2, y_train, y_test2 = train_test_split(X, y, test_size=0.5, random_state=1)    

    #print(CorrectData)
    path = 'TtoN'
    print_precision_recall(path, X_train, y_train)
    
    
    drawboxplots('Prec_T', TtoN5PrecT, TtoN10PrecT, TtoN15PrecT, TtoN20PrecT, TtoN25PrecT, 'Trace Precision %', 
                 'T->N % of error seeded', './boxplots/TracePrecisionVsTtoNError')
    drawboxplots('Prec_N', TtoN5PrecN, TtoN10PrecN, TtoN15PrecN, TtoN20PrecN, TtoN25PrecN, 'NoTrace Precision %', 
                 'T->N % of error seeded', './boxplots/NoTracePrecisionVsTtoNError')
    drawboxplots('Rec_T', TtoN5RecT, TtoN10RecT, TtoN15RecT, TtoN20RecT, TtoN25RecT, 'Trace Recall %', 
                 'T->N % of error seeded', './boxplots/TraceRecallVsTtoNError')
    drawboxplots('Rec_N', TtoN5RecN, TtoN10RecN, TtoN15RecN, TtoN20RecN, TtoN25RecN, 'NoTrace Recall %', 
                 'T->N % of error seeded', './boxplots/NoTraceRecallVsTtoNError')
   
   
    '''path = 'NtoT'
    print_precision_recall(path, X_train, y_train)

    drawboxplots('Prec_T', NtoT0_5PrecT, NtoT1PrecT, NtoT1_5PrecT, NtoT2PrecT, NtoT2_5PrecT, 'Trace Precision %', 'N->T % of error seeded', './boxplots/TracePrecisionVsNtoTError')
    drawboxplots('Prec_N', NtoT0_5PrecN, NtoT1PrecN, NtoT1_5PrecN, NtoT2PrecN, NtoT2_5PrecN, 'NoTrace Precision %',  'N->T % of error seeded', './boxplots/NoTracePrecisionVsNtoTError')
    drawboxplots('Rec_T', NtoT0_5RecT, NtoT1RecT, NtoT1_5RecT, NtoT2RecT, NtoT2_5RecT, 'Trace Recall %',  'N->T % of error seeded', './boxplots/TraceRecallVsNtoTError')
    drawboxplots('Rec_N', NtoT0_5RecN, NtoT1RecN, NtoT1_5RecN, NtoT2RecN, NtoT2_5RecN, 'NoTrace Recall %', 'N->T % of error seeded', './boxplots/NoTraceRecallVsNtoTError')'''

def drawboxplots(prec_T, array1, array2, array3, array4, array5, ylabel, xlabel, figname):
    box_plot_data=[array1,array2,array3,array4, array5]
    if(figname.find('NtoT')!=-1):
        plt.boxplot(box_plot_data,patch_artist=True,labels=['0.5','1','1.5','2', '2.5'])
    else:
        plt.boxplot(box_plot_data,patch_artist=True,labels=['5','10','15','20', '25'])

    plt.ylim(0, 100)# Add title and axis names
    #plt.title('Trace Precision % versus T->N % of error seeded',fontsize=15)
    plt.ylabel(ylabel,fontsize=15, weight='bold')
    plt.xlabel(xlabel,fontsize=15, weight='bold')
    
    plt.savefig(figname)
    plt.show()

def print_precision_recall(path, X_train, y_train):
    print(sklearn.__version__)
    X_train={}
    X_test={}
    y_train={}
    y_test={}
    #change line below to TtoN or NtoT depending on seeding type 
    path = 'TtoN'
    files = os.listdir(path)

    for f in files:
        print(f)
        filename=path+'\\'+f
        print(filename)
        dataset = pd.read_csv( filename, sep= ',', index_col=False) 
    
            #convert Inner, Root, Leaf into 0, 1, 2
           
        dataset['MethodType'] = dataset['MethodType'].astype('category').cat.codes
        dataset['classGold'] = dataset['classGold'].astype('category').cat.codes
        dataset['VariableTraceValue'] = dataset['VariableTraceValue'].astype('category').cat.codes
            
        pd.set_option('display.max_columns', None)
        
        row_count, column_count = dataset.shape
         
            
        X = dataset.iloc[:, 1:column_count].values
        y = dataset.iloc[:, 0].values
            
        
            
            
        X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.5, random_state=1)    
        
             
        ################################################################################
           
            
            
        classifier = RandomForestClassifier(n_estimators=400, random_state=0)
        classifier.fit(X_train, y_train)
        y_pred = classifier.predict(X_test)   
        report1=classification_report(y_test,y_pred)
        report = classification_report(y_test,y_pred, output_dict=True)
        Prec_T =  report['T']['precision'] 
        Rec_T =  report['T']['recall'] 
        Prec_N =  report['N']['precision'] 
        Rec_N =  report['N']['recall'] 
    
        print('confusion matrix\n',confusion_matrix(y_test,y_pred))
        print('classification report\n', report1)
        print('accuracy score', accuracy_score(y_test,y_pred))     

        if(filename.find('NtoT-0.5')!=-1):
            appendToArray(NtoT0_5PrecT, NtoT0_5PrecN, NtoT0_5RecT, NtoT0_5RecN, Prec_T, Rec_T, Prec_N, Rec_N)
        elif(filename.find('NtoT-1.0')!=-1):
            appendToArray(NtoT1PrecT, NtoT1PrecN, NtoT1RecT, NtoT1RecN, Prec_T, Rec_T, Prec_N, Rec_N)
        elif(filename.find('NtoT-1.5')!=-1):
            appendToArray(NtoT1_5PrecT, NtoT1_5PrecN, NtoT1_5RecT, NtoT1_5RecN, Prec_T, Rec_T, Prec_N, Rec_N)
        elif(filename.find('NtoT-2.0')!=-1):
            appendToArray(NtoT2PrecT, NtoT2PrecN, NtoT2RecT, NtoT2RecN, Prec_T, Rec_T, Prec_N, Rec_N)
        elif(filename.find('NtoT-2.5')!=-1):
            appendToArray(NtoT2_5PrecT, NtoT2_5PrecN, NtoT2_5RecT, NtoT2_5RecN, Prec_T, Rec_T, Prec_N, Rec_N)
        
        if(filename.find('TtoN-5')!=-1):
            appendToArray(TtoN5PrecT, TtoN5PrecN, TtoN5RecT, TtoN5RecN, Prec_T, Rec_T, Prec_N, Rec_N)
        elif(filename.find('TtoN-10')!=-1):
            appendToArray(TtoN10PrecT, TtoN10PrecN, TtoN10RecT, TtoN10RecN, Prec_T, Rec_T, Prec_N, Rec_N)
        elif(filename.find('TtoN-15')!=-1):
            appendToArray(TtoN15PrecT, TtoN15PrecN, TtoN15RecT, TtoN15RecN, Prec_T, Rec_T, Prec_N, Rec_N)
        elif(filename.find('TtoN-20')!=-1):
            appendToArray(TtoN20PrecT, TtoN20PrecN, TtoN20RecT, TtoN20RecN, Prec_T, Rec_T, Prec_N, Rec_N)
        elif(filename.find('TtoN-25')!=-1):
            appendToArray(TtoN25PrecT, TtoN25PrecN, TtoN25RecT, TtoN25RecN, Prec_T, Rec_T, Prec_N, Rec_N)
            

def appendToArray(PrecTArray, PrecNArray, RecTArray, RecNArray,Prec_T, Rec_T, Prec_N, Rec_N):
    Prec_T=round(Prec_T*100,2)
    Prec_N=round(Prec_N*100,2)
    Rec_T=round(Rec_T*100,2)
    Rec_N=round(Rec_N*100,2)
    print(Prec_T, ' ', Prec_N, ' ', Rec_T, ' ', Rec_N )
    PrecTArray.append(Prec_T)
    PrecNArray.append(Prec_N)
    RecTArray.append(Rec_T)
    RecNArray.append(Rec_N)         

if __name__=="__main__": 
    
        main()
    