import pandas as pd
from sklearn.model_selection import train_test_split
from sklearn.preprocessing import StandardScaler
from sklearn.ensemble import RandomForestClassifier
from sklearn.metrics import classification_report, confusion_matrix, accuracy_score
import sys
import os
import matplotlib.pyplot as plt


plt.rc('xtick', labelsize=13) 
plt.rc('ytick', labelsize=13) 
plt.rc('font', weight='bold')

TtoN0_5PrecT=[]
TtoN1PrecT=[]
TtoN1_5PrecT=[]
TtoN2PrecT=[]
TtoN2_5PrecT=[]	
        
TtoN0_5PrecN=[]
TtoN1PrecN=[]
TtoN1_5PrecN=[]
TtoN2PrecN=[]
TtoN2_5PrecN=[]	
    
TtoN0_5RecT=[]
TtoN1RecT=[]
TtoN1_5RecT=[]
TtoN2RecT=[]
TtoN2_5RecT=[]	
        
TtoN0_5RecN=[]
TtoN1RecN=[]
TtoN1_5RecN=[]
TtoN2RecN=[]
TtoN2_5RecN=[]	
       
NtoT5PrecT=[]
NtoT10PrecT=[]
NtoT15PrecT=[]
NtoT20PrecT=[]
NtoT25PrecT=[]	
        
NtoT5PrecN=[]
NtoT10PrecN=[]
NtoT15PrecN=[]
NtoT20PrecN=[]
NtoT25PrecN=[]	
    
NtoT5RecT=[]
NtoT10RecT=[]
NtoT15RecT=[]
NtoT20RecT=[]
NtoT25RecT=[]	
        
NtoT5RecN=[]
NtoT10RecN=[]
NtoT15RecN=[]
NtoT20RecN=[]
NtoT25RecN=[]	
def main():
    
    X_train={}
    X_test={}
    y_train={}
    y_test={}
    
   
    
    path = 'TtoN'
    print_precision_recall(path)
    
    
    drawboxplots('Prec_T', TtoN0_5PrecT, TtoN1PrecT, TtoN1_5PrecT, TtoN2PrecT, TtoN2_5PrecT, 'Trace Precision %', 
                 'T->N % of error seeded', './boxplots/TracePrecisionVsTtoNError')
    drawboxplots('Prec_N', TtoN0_5PrecN, TtoN1PrecN, TtoN1_5PrecN, TtoN2PrecN, TtoN2_5PrecN, 'NoTrace Precision %', 
                 'T->N % of error seeded', './boxplots/NoTracePrecisionVsTtoNError')
    drawboxplots('Rec_T', TtoN0_5RecT, TtoN1RecT, TtoN1_5RecT, TtoN2RecT, TtoN2_5RecT, 'Trace Recall %', 
                 'T->N % of error seeded', './boxplots/TraceRecallVsTtoNError')
    drawboxplots('Rec_N', TtoN0_5RecN, TtoN1RecN, TtoN1_5RecN, TtoN2RecN, TtoN2_5RecN, 'NoTrace Recall %', 
                 'T->N % of error seeded', './boxplots/NoTraceRecallVsTtoNError')
    path = 'NtoT'
    print_precision_recall(path)

    drawboxplots('Prec_T', NtoT5PrecT, NtoT10PrecT, NtoT15PrecT, NtoT20PrecT, NtoT25PrecT, 'Trace Precision %', 
                 'N->T % of error seeded', './boxplots/TracePrecisionVsNtoTError')
    drawboxplots('Prec_N', NtoT5PrecN, NtoT10PrecN, NtoT15PrecN, NtoT20PrecN, NtoT25PrecN, 'NoTrace Precision %', 
                 'N->T % of error seeded', './boxplots/NoTracePrecisionVsNtoTError')
    drawboxplots('Rec_T', NtoT5RecT, NtoT10RecT, NtoT15RecT, NtoT20RecT, NtoT25RecT, 'Trace Recall %', 
                 'N->T % of error seeded', './boxplots/TraceRecallVsNtoTError')
    drawboxplots('Rec_N', NtoT5RecN, NtoT10RecN, NtoT15RecN, NtoT20RecN, NtoT25RecN, 'NoTrace Recall %', 
                 'N->T % of error seeded', './boxplots/NoTraceRecallVsNtoTError')

def drawboxplots(prec_T, array1, array2, array3, array4, array5, ylabel, xlabel, figname):
    box_plot_data=[array1,array2,array3,array4, array5]
    if(figname.find('NtoT')!=-1):
        plt.boxplot(box_plot_data,patch_artist=True,labels=['5','10','15','20', '25'])
    else:
        plt.boxplot(box_plot_data,patch_artist=True,labels=['0.5','1','1.5','2', '2.5'])

    plt.ylim(0, 100)# Add title and axis names
    #plt.title('Trace Precision % versus T->N % of error seeded',fontsize=15)
    plt.ylabel(ylabel,fontsize=15, weight='bold')
    plt.xlabel(xlabel,fontsize=15, weight='bold')
    
    plt.savefig(figname)
    plt.show()
    
def print_precision_recall(path):
    
    files = os.listdir(path)
    
    for f in files:
        print(f)
        filename=path+'\\'+f
        print(filename)
        dataset = pd.read_csv( filename, sep= ',', index_col=False) 

        #convert Inner, Root, Leaf into 0, 1, 2
       
        dataset['MethodType'] = dataset['MethodType'].astype('category').cat.codes
        
        #convert T into 1 and N into 0
        
       
        dataset['gold'] = dataset['gold'].astype('category').cat.codes
        
        pd.set_option('display.max_columns', None)
    
        row_count, column_count = dataset.shape
     
        
        X = dataset.iloc[:, 1:column_count].values
        y = dataset.iloc[:, 0].values
        
    
        
        
        X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.5, random_state=1)    
    
         
    ################################################################################
       
        
        
        classifier = RandomForestClassifier(n_estimators=400, random_state=0)
        classifier.fit(X_train, y_train)
        y_pred = classifier.predict(X_test)
     
        
        probs= classifier.predict_proba(X_test)
        
        y_pred=[None]*len(y_test)
        y_pred_list = list(y_pred)
        y_test_list = list(y_test)
        probs_list = list(probs)
        i=0
        n=0
        threshold_T=0.65
        threshold_N=0.95
        TP_T=0
        FP_T=0
        FN_T=0
        FP_N=0
        FN_N=0
        TP_N=0
        FP_N=0
        U_T=0
        U_N=0
        while i<len(probs_list):
                #print('i ',i)
                if (probs_list[i][0]>=threshold_N):
                       y_pred_list[i]=0
                       if(y_test_list[i]==0): 
                           TP_N=TP_N+1
                       elif(y_test_list[i]==1): 
                           FP_N=FP_N+1
                           FN_T=FN_T+1
                       i=i+1
                
                elif (probs_list[i][1]>=threshold_T):
                       y_pred_list[i]=1
                       if(y_test_list[i]==0): 
                           FP_T=FP_T+1
                           FN_N=FN_N+1
                       elif(y_test_list[i]==1): 
                           TP_T=TP_T+1
                       i=i+1
                else:   
                       #print(y_pred[i])
                       #print('i==> ',i, ' probs length ', len(probs_list), ' ', len(y_pred_list), ' ', len(y_test_list))
                       if (y_test_list[i]==1):
                           FN_T=FN_T+1
                           U_T=U_T+1
                       elif (y_test_list[i]==0):
                           FN_N=FN_N+1
                           U_N=U_N+1
                       y_pred_list.pop(i)
                       y_test_list.pop(i)
                       probs_list.pop(i)
                       n=n+1
    
        print('TP_T ',TP_T, 'FP_T, ', FP_T,  'FN_T ', FN_T, 'U_T ', U_T)
        print('TP_N ',TP_N, 'FP_N, ', FP_N,  'FN_N ', FN_N, ' U_N ', U_N)
        print('T PRECISION ', TP_T/(TP_T+FP_T))
        print('T RECALL ', TP_T/(TP_T+FN_T))
        
        print('N PRECISION ', TP_N/(TP_N+FP_N))
        print('N RECALL ', TP_N/(TP_N+FN_N))
        Prec_T=TP_T/(TP_T+FP_T)*100
        Rec_T=TP_T/(TP_T+FN_T)*100
        Prec_N=TP_N/(TP_N+FP_N)*100
        Rec_N=TP_N/(TP_N+FN_N)*100
        
        if(filename.find('TtoN-0.5')!=-1):
            appendToArray(TtoN0_5PrecT, TtoN0_5PrecN, TtoN0_5RecT, TtoN0_5RecN, Prec_T, Rec_T, Prec_N, Rec_N)
        elif(filename.find('TtoN-1.0')!=-1):
            appendToArray(TtoN1PrecT, TtoN1PrecN, TtoN1RecT, TtoN1RecN, Prec_T, Rec_T, Prec_N, Rec_N)
        elif(filename.find('TtoN-1.5')!=-1):
            appendToArray(TtoN1_5PrecT, TtoN1_5PrecN, TtoN1_5RecT, TtoN1_5RecN, Prec_T, Rec_T, Prec_N, Rec_N)
        elif(filename.find('TtoN-2.0')!=-1):
            appendToArray(TtoN2PrecT, TtoN2PrecN, TtoN2RecT, TtoN2RecN, Prec_T, Rec_T, Prec_N, Rec_N)
        elif(filename.find('TtoN-2.5')!=-1):
            appendToArray(TtoN2_5PrecT, TtoN2_5PrecN, TtoN2_5RecT, TtoN2_5RecN, Prec_T, Rec_T, Prec_N, Rec_N)
            
            
        if(filename.find('NtoT-5')!=-1):
            appendToArray(NtoT5PrecT, NtoT5PrecN, NtoT5RecT, NtoT5RecN, Prec_T, Rec_T, Prec_N, Rec_N)
        elif(filename.find('NtoT-10')!=-1):
            appendToArray(NtoT10PrecT, NtoT10PrecN, NtoT10RecT, NtoT10RecN, Prec_T, Rec_T, Prec_N, Rec_N)
        elif(filename.find('NtoT-15')!=-1):
            appendToArray(NtoT15PrecT, NtoT15PrecN, NtoT15RecT, NtoT15RecN, Prec_T, Rec_T, Prec_N, Rec_N)
        elif(filename.find('NtoT-20')!=-1):
            appendToArray(NtoT20PrecT, NtoT20PrecN, NtoT20RecT, NtoT20RecN, Prec_T, Rec_T, Prec_N, Rec_N)
        elif(filename.find('NtoT-25')!=-1):
            appendToArray(NtoT25PrecT, NtoT25PrecN, NtoT25RecT, NtoT25RecN, Prec_T, Rec_T, Prec_N, Rec_N)
          
            
       
        print('confusion matrix\n',confusion_matrix(y_test_list,y_pred_list))
        print('classification report\n', classification_report(y_test_list,y_pred_list))
        print('accuracy score', accuracy_score(y_test_list, y_pred_list))       
    
    
def appendToArray(PrecTArray, PrecNArray, RecTArray, RecNArray,Prec_T, Rec_T, Prec_N, Rec_N):
    PrecTArray.append(Prec_T)
    PrecNArray.append(Prec_N)
    RecTArray.append(Rec_T)
    RecNArray.append(Rec_N)
    

   

if __name__=="__main__": 
    
        main()
    