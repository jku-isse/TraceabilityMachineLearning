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
TtoN50PrecT=[]	
TtoN75PrecT=[]	     

TtoN5PrecN=[]
TtoN10PrecN=[]
TtoN15PrecN=[]
TtoN20PrecN=[]
TtoN25PrecN=[]	
TtoN50PrecN=[]	
TtoN75PrecN=[]	
    
TtoN5RecT=[]
TtoN10RecT=[]
TtoN15RecT=[]
TtoN20RecT=[]
TtoN25RecT=[]	
TtoN50RecT=[]	
TtoN75RecT=[]	
        
TtoN5RecN=[]
TtoN10RecN=[]
TtoN15RecN=[]
TtoN20RecN=[]
TtoN25RecN=[]	
TtoN50RecN=[]	
TtoN75RecN=[]	

       
NtoT0_5PrecT=[]
NtoT1PrecT=[]
NtoT1_5PrecT=[]
NtoT2PrecT=[]
NtoT2_5PrecT=[]	
NtoT5PrecT=[]
NtoT10PrecT=[]
        
NtoT0_5PrecN=[]
NtoT1PrecN=[]
NtoT1_5PrecN=[]
NtoT2PrecN=[]
NtoT2_5PrecN=[]	
NtoT5PrecN=[]
NtoT10PrecN=[]

NtoT0_5RecT=[]
NtoT1RecT=[]
NtoT1_5RecT=[]
NtoT2RecT=[]
NtoT2_5RecT=[]	
NtoT5RecT=[]
NtoT10RecT=[]
        
NtoT0_5RecN=[]
NtoT1RecN=[]
NtoT1_5RecN=[]
NtoT2RecN=[]
NtoT2_5RecN=[]	
NtoT5RecN=[]
NtoT10RecN=[]

def main():
    
    X_train={}
    X_test={}
    y_train={}
    y_test={}
    
   
    CorrectData = pd.read_csv( 'inputFieldsMajority+MethodCalls.txt', sep= ',', index_col=False) 
    CorrectData=CorrectData.drop(columns=['Program'], axis=1)
    CorrectData=CorrectData.drop(columns=['MethodID'], axis=1)
    CorrectData=CorrectData.drop(columns=['RequirementID'], axis=1)

    row_count, column_count = CorrectData.shape
    CorrectData['MethodType'] = CorrectData['MethodType'].astype('category').cat.codes
    CorrectData['gold'] = CorrectData['gold'].astype('category').cat.codes
    CorrectData['VariableTraceValue']=CorrectData['VariableTraceValue'].astype('category').cat.codes
    CorrectData['classGold']=CorrectData['classGold'].astype('category').cat.codes



    X = CorrectData.iloc[:, 1:column_count].values
    y = CorrectData.iloc[:, 0].values
    X_train2, X_test2, y_train2, y_test2 = train_test_split(X, y, test_size=0.5, random_state=1)    

    #print(CorrectData)
    path = 'TtoN'
    print_precision_recall(path, X_train, y_train,X_train2, y_train2)
    
    
    drawboxplots('Prec_T', TtoN5PrecT, TtoN10PrecT, TtoN15PrecT, TtoN20PrecT, TtoN25PrecT,TtoN50PrecT,TtoN75PrecT, 'Trace Precision %', 
                 'T->N % of error seeded', './boxplots/TracePrecisionVsTtoNError')
    drawboxplots('Prec_N', TtoN5PrecN, TtoN10PrecN, TtoN15PrecN, TtoN20PrecN, TtoN25PrecN,TtoN50PrecN,TtoN75PrecN, 'NoTrace Precision %', 
                 'T->N % of error seeded', './boxplots/NoTracePrecisionVsTtoNError')
    drawboxplots('Rec_T', TtoN5RecT, TtoN10RecT, TtoN15RecT, TtoN20RecT, TtoN25RecT,TtoN50RecT,TtoN75RecT, 'Trace Recall %', 
                 'T->N % of error seeded', './boxplots/TraceRecallVsTtoNError')
    drawboxplots('Rec_N', TtoN5RecN, TtoN10RecN, TtoN15RecN, TtoN20RecN, TtoN25RecN,TtoN50RecN,TtoN75RecN, 'NoTrace Recall %', 
                 'T->N % of error seeded', './boxplots/NoTraceRecallVsTtoNError')
   
    '''
    path = 'NtoT'
    print_precision_recall(path, X_train, y_train,X_train2, y_train2)

    drawboxplots('Prec_T', NtoT0_5PrecT, NtoT1PrecT, NtoT1_5PrecT, NtoT2PrecT, NtoT2_5PrecT, NtoT5PrecT,NtoT10PrecT,  'Trace Precision %', 'N->T % of error seeded', './boxplots/TracePrecisionVsNtoTError')
    drawboxplots('Prec_N', NtoT0_5PrecN, NtoT1PrecN, NtoT1_5PrecN, NtoT2PrecN, NtoT2_5PrecN,NtoT5PrecN, NtoT10PrecN, 'NoTrace Precision %',  'N->T % of error seeded', './boxplots/NoTracePrecisionVsNtoTError')
    drawboxplots('Rec_T', NtoT0_5RecT, NtoT1RecT, NtoT1_5RecT, NtoT2RecT, NtoT2_5RecT,NtoT5RecT, NtoT10RecT, 'Trace Recall %',  'N->T % of error seeded', './boxplots/TraceRecallVsNtoTError')
    drawboxplots('Rec_N', NtoT0_5RecN, NtoT1RecN, NtoT1_5RecN, NtoT2RecN, NtoT2_5RecN,NtoT5RecN,NtoT10RecN, 'NoTrace Recall %', 'N->T % of error seeded', './boxplots/NoTraceRecallVsNtoTError')
    '''
def drawboxplots(prec_T, array1, array2, array3, array4, array5, array6, array7, ylabel, xlabel, figname):
    box_plot_data=[array1,array2,array3,array4, array5, array6, array7]
    print(box_plot_data)
    if(figname.find('TtoN')==-1):
        plt.boxplot(box_plot_data,patch_artist=True,labels=['0.5','1','1.5','2', '2.5','5','10'])
    else:
        plt.boxplot(box_plot_data,patch_artist=True,labels=['5','10','15','20', '25','50','75'])

    plt.ylim(0, 110)# Add title and axis names
    #plt.title('Trace Precision % versus T->N % of error seeded',fontsize=15)
    plt.ylabel(ylabel,fontsize=15, weight='bold')
    plt.xlabel(xlabel,fontsize=15, weight='bold')
    
    plt.savefig(figname)
    plt.show()

def print_precision_recall(path, X_train, y_train,X_train2, y_train2):
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
    
        classifier.fit(X_train2, y_train2)
        y_pred = classifier.predict(X_test)
        
        #f = open("dataMachineLearning.txt", "a")
        probs= classifier.predict_proba(X_test)
        counter=0
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
                flag=False
    
                #print(X_test[i])
                if (probs_list[i][0]>=threshold_N):
                       flag=True
                       y_pred_list[i]=0
                       if(y_test_list[i]=='N'): 
                           TP_N=TP_N+1
                       elif(y_test_list[i]=='T'): 
                           FP_N=FP_N+1
                           FN_T=FN_T+1
                       mylist = [str(X_test[i][2]), str(X_test[i][3]), str(y_pred_list[i])]
                       i=i+1
                
                elif (probs_list[i][1]>=threshold_T):
                       flag=True
                       y_pred_list[i]=1
                       if(y_test_list[i]=='N'): 
                           FP_T=FP_T+1
                           FN_N=FN_N+1
                       elif(y_test_list[i]=='T'): 
                           TP_T=TP_T+1
                       mylist = [str(X_test[i][2]), str(X_test[i][3]), str(y_pred_list[i])]
                       #print('--------',str(X_test[i]))
                       i=i+1
                else:   
                       #print(y_pred[i])
                       #print('i==> ',i, ' probs length ', len(probs_list), ' ', len(y_pred_list), ' ', len(y_test_list))
    
                       if (y_test_list[i]=='T'):
                           FN_T=FN_T+1
                           U_T=U_T+1
                       elif (y_test_list[i]=='N'):
                           FN_N=FN_N+1
                           U_N=U_N+1
                       y_pred_list.pop(i)
                       y_test_list.pop(i)
                       probs_list.pop(i)
                       
                       #print('======= ',X_test[i])
                       
                       n=n+1
                if flag==True:
                    mylist_string = ",".join(mylist)
                    s=mylist_string+"\n"
                    #f.write(s)
        #f.close()
 

   
    
        Prec_T=TP_T/(TP_T+FP_T)
        Rec_T=TP_T/(TP_T+FN_T)
        Prec_N=TP_N/(TP_N+FP_N)
        Rec_N=TP_N/(TP_N+FN_N)
    
        Prec_T=round(Prec_T*100,2)
        Prec_N=round(Prec_N*100,2)
        Rec_T=round(Rec_T*100,2)
        Rec_N=round(Rec_N*100,2)
        
        print('TP_T ',TP_T, 'FP_T, ', FP_T,  'FN_T ', FN_T, 'U_T ', U_T,'TP_N ',TP_N, 'FP_N, ', FP_N,  'FN_N ', FN_N, ' U_N ', U_N)
        print(TP_T, ',', FP_T,  ',', FN_T, ',', U_T,',',TP_N, ',', FP_N,  ',', FN_N, ',', U_N, ',', Prec_T, ',', Rec_T, ',', Prec_N, ',', Rec_N)
    
        print('T PRECISION ', Prec_T)
        print('T RECALL ', Rec_T)
        print('N PRECISION ', Prec_N)
        print('N RECALL ', Rec_N)     
    
         

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
        elif(filename.find('NtoT-5')!=-1):
            appendToArray(NtoT5PrecT, NtoT5PrecN, NtoT5RecT, NtoT5RecN, Prec_T, Rec_T, Prec_N, Rec_N)
        elif(filename.find('NtoT-10')!=-1):
            appendToArray(NtoT10PrecT, NtoT10PrecN, NtoT10RecT, NtoT10RecN, Prec_T, Rec_T, Prec_N, Rec_N)
            
            
            
        if(filename.find('TtoN-5.0-')!=-1):
            appendToArray(TtoN5PrecT, TtoN5PrecN, TtoN5RecT, TtoN5RecN, Prec_T, Rec_T, Prec_N, Rec_N)
        elif(filename.find('TtoN-10')!=-1):
            appendToArray(TtoN10PrecT, TtoN10PrecN, TtoN10RecT, TtoN10RecN, Prec_T, Rec_T, Prec_N, Rec_N)
        elif(filename.find('TtoN-15')!=-1):
            appendToArray(TtoN15PrecT, TtoN15PrecN, TtoN15RecT, TtoN15RecN, Prec_T, Rec_T, Prec_N, Rec_N)
        elif(filename.find('TtoN-20')!=-1):
            appendToArray(TtoN20PrecT, TtoN20PrecN, TtoN20RecT, TtoN20RecN, Prec_T, Rec_T, Prec_N, Rec_N)
        elif(filename.find('TtoN-25')!=-1):
            appendToArray(TtoN25PrecT, TtoN25PrecN, TtoN25RecT, TtoN25RecN, Prec_T, Rec_T, Prec_N, Rec_N)
        elif(filename.find('TtoN-50.0-')!=-1):
            appendToArray(TtoN50PrecT, TtoN50PrecN, TtoN50RecT, TtoN50RecN, Prec_T, Rec_T, Prec_N, Rec_N)
        elif(filename.find('TtoN-75')!=-1):
            appendToArray(TtoN75PrecT, TtoN75PrecN, TtoN75RecT, TtoN75RecN, Prec_T, Rec_T, Prec_N, Rec_N)

         

def appendToArray(PrecTArray, PrecNArray, RecTArray, RecNArray,Prec_T, Rec_T, Prec_N, Rec_N):
    Prec_T=round(Prec_T,2)
    Prec_N=round(Prec_N,2)
    Rec_T=round(Rec_T,2)
    Rec_N=round(Rec_N,2)
    print(Prec_T, ' ', Prec_N, ' ', Rec_T, ' ', Rec_N )
    PrecTArray.append(Prec_T)
    PrecNArray.append(Prec_N)
    RecTArray.append(Rec_T)
    RecNArray.append(Rec_N)         

if __name__=="__main__": 
    
        main()
    