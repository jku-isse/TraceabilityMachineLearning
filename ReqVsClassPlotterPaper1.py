# Load the Pandas libraries with alias 'pd' 
import pandas as pd 
import numpy as np
import matplotlib.ticker as ticker
import matplotlib.pyplot as plt
import matplotlib.ticker as plticker
from scipy.stats import skew

"""
# Read data from file 'filename.csv' 
# (in the same directory that your python process is based)
# Control delimiters, rows, column names with read_csv (see later) 
df = pd.read_csv("chessReqVsMethod.txt") 
# Preview the first 5 lines of the loaded data 
df.head()

RequirementT = df.RequirementT
RequirementN = df.RequirementN
RequirementU = df.RequirementU
labels=df.method

#ax=df.plot.bar(x='method', y=['RequirementT', 'RequirementN', 'RequirementU'])
x = np.arange(len(labels))  # the label locations
width = 0.35  # the width of the bars

fig, ax = plt.subplots()
#plt.xticks(np.arange(min(x), max(x)+1, 100))


rects1 = ax.bar(x - width/2, RequirementT, width, label='T')
rects2 = ax.bar(x + width/2, RequirementN, width, label='N')
rects3 = ax.bar(x + width/2, RequirementU, width, label='U')

# Add some text for labels, title and custom x-axis tick labels, etc.
ax.set_ylabel('Requirement')
ax.set_xlabel('Method#')

ax.set_title('Requirement versus Method# for Chess')
ax.set_xticks(x)

ax.legend()

loc = plticker.MultipleLocator(base=100) # this locator puts ticks at regular intervals
ax.xaxis.set_major_locator(loc)


fig.tight_layout()

plt.show()

############################################################
############################################################
############################################################
############################################################
############################################################

# Read data from file 'filename.csv' 
# (in the same directory that your python process is based)
# Control delimiters, rows, column names with read_csv (see later) 
df = pd.read_csv("chessReqVsClass.txt") 
# Preview the first 5 lines of the loaded data 
df.head()

RequirementT = df.RequirementT
RequirementN = df.RequirementN
RequirementU = df.RequirementU
labels=df.clazz

#ax=df.plot.bar(x='method', y=['RequirementT', 'RequirementN', 'RequirementU'])
x = np.arange(len(labels))  # the label locations
width = 0.35  # the width of the bars

fig, ax = plt.subplots()
#plt.xticks(np.arange(min(x), max(x)+1, 100))


rects1 = ax.bar(x - width/2, RequirementT, width, label='T')
rects2 = ax.bar(x + width/2, RequirementN, width, label='N')
rects3 = ax.bar(x + width/2, RequirementU, width, label='U')

# Add some text for labels, title and custom x-axis tick labels, etc.
ax.set_ylabel('Requirement')
ax.set_xlabel('Class#')

ax.set_title('Requirement versus Class# for Chess')
ax.set_xticks(x)

ax.legend()

loc = plticker.MultipleLocator(base=10) # this locator puts ticks at regular intervals
ax.xaxis.set_major_locator(loc)


fig.tight_layout()

plt.show()

############################################################
############################################################
############################################################
############################################################
############################################################


df = pd.read_csv("chessClassVsReq.txt") 
ax=df.plot.bar(x='Requirement', y=['T'])
ax.set_title('Class versus T Requirements - Chess')

df = pd.read_csv("chessClassVsReq.txt") 
ax=df.plot.bar(x='Requirement', y=['N'])
ax.set_title('Class versus N Requirements - Chess')


df = pd.read_csv("ganttClassVsReq.txt") 
ax=df.plot.bar(x='Requirement', y=['T'])
ax.set_title('Class versus T Requirements - Gantt')

df = pd.read_csv("ganttClassVsReq.txt") 
ax=df.plot.bar(x='Requirement', y=['N'])
ax.set_title('Class versus N Requirements - Gantt')

df = pd.read_csv("itrustClassVsReq.txt") 
ax=df.plot.bar(x='Requirement', y=['T'])
ax.set_title('Class versus T Requirements - iTrust')

df = pd.read_csv("itrustClassVsReq.txt") 
ax=df.plot.bar(x='Requirement', y=['N'])
ax.set_title('Class versus N Requirements - iTrust')

df = pd.read_csv("jhotdrawClassVsReq.txt") 
ax=df.plot.bar(x='Requirement', y=['T'])
ax.set_title('Class versus T Requirements - JHotDraw')

df = pd.read_csv("jhotdrawClassVsReq.txt") 
ax=df.plot.bar(x='Requirement', y=['N'])
ax.set_title('Class versus N Requirements - JHotDraw')


df = pd.read_csv("chessReqVsMethod2.txt") 
ax=df.plot.bar(x='methodTrace', y=['T'])
ax.set_title('T Requirements versus MethodTraces - Chess')

df = pd.read_csv("chessReqVsMethod2.txt") 
ax=df.plot.bar(x='methodTrace', y=['N'])
ax.set_title('N Requirements versus MethodTraces - Chess')

df = pd.read_csv("ganttReqVsMethod.txt") 
ax=df.plot.bar(x='methodTrace', y=['T'])
ax.set_title('T Requirements versus MethodTraces - Gantt')

df = pd.read_csv("ganttReqVsMethod.txt") 
ax=df.plot.bar(x='methodTrace', y=['N'])
ax.set_title('N Requirements versus MethodTraces - Gantt')

df = pd.read_csv("itrustReqVsMethod.txt") 
ax=df.plot.bar(x='methodTrace', y=['T'])
ax.set_title('T Requirements versus MethodTraces - iTrust')

df = pd.read_csv("itrustReqVsMethod.txt") 
ax=df.plot.bar(x='methodTrace', y=['N'])
ax.set_title('N Requirements versus MethodTraces - iTrust')

df = pd.read_csv("jhotdrawReqVsMethod.txt") 
ax=df.plot.bar(x='methodTrace', y=['T'])
ax.set_title('T Requirements versus MethodTraces - jhotdraw')

df = pd.read_csv("jhotdrawReqVsMethod.txt") 
ax=df.plot.bar(x='methodTrace', y=['N'])
ax.set_title('N Requirements versus MethodTraces - jhotdraw')


df = pd.read_csv("chessReqVsClass2.txt") 
ax=df.plot.bar(x='classTrace', y=['T'])
ax.set_title('T Requirements versus ClassTraces - Chess')

df = pd.read_csv("chessReqVsClass2.txt") 
ax=df.plot.bar(x='classTrace', y=['N'])
ax.set_title('N Requirements versus ClassTraces - Chess')

df = pd.read_csv("ganttReqVsClass.txt") 
ax=df.plot.bar(x='classTrace', y=['T'])
ax.set_title('T Requirements versus ClassTraces - Gantt')

df = pd.read_csv("ganttReqVsClass.txt") 
ax=df.plot.bar(x='classTrace', y=['N'])
ax.set_title('N Requirements versus ClassTraces - Gantt')

df = pd.read_csv("itrustReqVsClass.txt") 
ax=df.plot.bar(x='classTrace', y=['T'])
ax.set_title('T Requirements versus ClassTraces - iTrust')

df = pd.read_csv("itrustReqVsClass.txt") 
ax=df.plot.bar(x='classTrace', y=['N'])
ax.set_title('N Requirements versus ClassTraces - iTrust')


df = pd.read_csv("jhotdrawReqVsClass.txt") 
ax=df.plot.bar(x='classTrace', y=['T'])
ax.set_title('T Requirements versus ClassTraces - JHotDraw')

df = pd.read_csv("jhotdrawReqVsClass.txt") 
ax=df.plot.bar(x='classTrace', y=['N'])
ax.set_title('N Requirements versus ClassTraces - JHotDraw')
"""
#CHESS METHOD 
T=[162, 21, 0, 69, 5, 132, 171, 3]
# req 1, 2, 3, 4, 5, 6, 7, 8
N= [207, 348, 369, 300, 364, 237, 198, 366]
# req 1, 2, 3, 4, 5, 6, 7, 8

    

plt.hist(T, bins=4)
plt.yticks(range(5))
plt.title('Number of Requirements that trace to x amount of methods - Chess') 
plt.ylabel('Number of Requirements')
plt.xlabel('Methods Tracing')
plt.savefig("Plots/ReqVsMethodsTracingChess.png")
plt.show()


plt.hist(N, bins=4)
plt.yticks(range(5))
plt.title('Number of Requirements that do not trace to x amount of methods - Chess') 
plt.ylabel('Number of Requirements')
plt.xlabel('Methods Not Tracing')
plt.savefig("Plots/ReqVsMethodsNotTracingChess.png")
plt.show()

#GANTT METHOD 
T=[15, 5, 63, 5, 1, 41, 28, 73, 21, 16, 8, 21, 14, 9, 0, 20, 0]
# req 1, 2, 3, 4, 5, 6, 7, 8... 18
N= [1178, 1438, 1146, 1470, 1657, 1549, 1599, 1403, 1409, 1393, 1465, 1600, 0, 1622, 1537, 0]
# req 1, 2, 3, 4, 5, 6, 7, 8.. 18

    

plt.hist(T, bins=8)
plt.yticks(range(8))
plt.title('Number of Requirements that trace to x amount of methods - Gantt') 
plt.ylabel('Number of Requirements')
plt.xlabel('Methods Tracing')
plt.savefig("Plots/ReqVsMethodsTracingGantt.png")
plt.show()


plt.hist(N, bins=4)
plt.yticks(range(13))
plt.title('Number of Requirements that do not trace to x amount of methods - Gantt') 
plt.ylabel('Number of Requirements')
plt.xlabel('Methods Not Tracing')
plt.savefig("Plots/ReqVsMethodsNotTracingGantt.png")
plt.show()

#ITRUST METHOD 

T=[7, 8, 21, 14, 2, 12, 2, 10, 14, 8, 1, 7, 5, 6, 7, 19, 30, 2, 5, 10, 3, 9, 7, 4, 3, 9, 19, 9, 12, 4, 5]
# req 1, 2, 3, 4, 5, 6, 7, 8... 34
N= [213, 212, 199, 206, 218, 208, 218, 210, 206, 212, 219, 213, 197, 213, 215, 214, 213, 201, 190, 218, 215, 210, 217, 217, 211, 213, 216, 217, 211, 201, 211, 208, 216, 215]
# req 1, 2, 3, 4, 5, 6, 7, 8.. 34

    

plt.hist(T, bins=8)
plt.yticks(range(11))
plt.title('Number of Requirements that trace to x amount of methods - iTrust') 
plt.ylabel('Number of Requirements')
plt.xlabel('Methods Tracing')
plt.savefig("Plots/ReqVsMethodsTracingiTrust.png")
plt.show()


plt.hist(N, bins=4)
plt.yticks(range(21))
plt.title('Number of Requirements that do not trace to x amount of methods - iTrust') 
plt.ylabel('Number of Requirements')
plt.xlabel('Methods Not Tracing')
plt.savefig("Plots/ReqVsMethodsNotTracingiTrust.png")
plt.show()

#JHOTDRAW  METHOD 
T=[65,76,1,1,59,20,43,42,3,1,1,21,31,44,0,0,10,12,9,0,0]
# req 1, 2, 3, 4, 5, 6, 7, 8... 21
N= [465,469,531,622,576,474,438,600,608,583,622,605,573,629,627,608,617,632,664,658]
# req 1, 2, 3, 4, 5, 6, 7, 8.. 21

    


plt.hist(T, bins=8)
plt.yticks(range(11))
plt.title('Number of Requirements that trace to x amount of methods - JHotDraw') 
plt.ylabel('Number of Requirements')
plt.xlabel('Methods Tracing')
plt.savefig("Plots/ReqVsMethodsTracingJHotDraw.png")
plt.show()


plt.hist(N, bins=8)
plt.yticks(range(11))
plt.title('Number of Requirements that do not trace to x amount of methods - JHotDraw') 
plt.ylabel('Number of Requirements')
plt.xlabel('Methods Not Tracing')
plt.savefig("Plots/ReqVsMethodsNotTracingJHotDraw.png")

#VOD METHOD 
T=[8,0,5,4,1,4,1,4,2,41,13,0,0,20]
N=[72,80,75,76,79,76,79,76,78,39,67,80,80,60]

plt.hist(T, bins=4)
plt.yticks(range(12))
plt.title('Number of Requirements that trace to x amount of methods - VOD') 
plt.ylabel('Number of Requirements')
plt.xlabel('Methods Tracing')
plt.savefig("Plots/ReqVsMethodsTracingVOD.png")
plt.show()




plt.hist(N, bins=8)
plt.yticks(range(12))
plt.title('Number of Requirements that do not trace to x amount of methods - VOD') 
plt.ylabel('Number of Requirements')
plt.xlabel('Methods Not Tracing')
plt.savefig("Plots/ReqVsMethodsNotTracingVOD.png")



#CHESS CLASS 
T=[38,8,0,17,5,29,31,3]
N=[10,40,48,31,43,19,17,45]

plt.hist(T, bins=4)
plt.yticks(range(5))
plt.title('Number of Requirements that trace to x amount of classes - Chess') 
plt.ylabel('Number of Requirements')
plt.xlabel('Classes Tracing')
plt.savefig("Plots/ReqVsClassesTracingChess.png")
plt.show()


plt.hist(N, bins=4)
plt.yticks(range(5))
plt.title('Number of Requirements that do not trace to x amount of classes - Chess') 
plt.ylabel('Number of Requirements')
plt.xlabel('Classes Not Tracing')
plt.savefig("Plots/ReqVsClassesNotTracingChess.png")
plt.show()


#GANTT CLASS
T=[19,19,47,20,5,16,16,25,43,23,33,39,20,9,0,12,14,0]
N=[411,411,383,410,425,414,414,405,387,407,397,391,410,421,0,418,416,0]

plt.hist(T, bins=4)
plt.yticks(range(10))
plt.title('Number of Requirements that trace to x amount of classes - Gantt') 
plt.ylabel('Number of Requirements')
plt.xlabel('Classes Tracing')
plt.savefig("Plots/ReqVsClassesTracingGantt.png")
plt.show()


plt.hist(N, bins=4)
plt.yticks(range(20))
plt.title('Number of Requirements that do not trace to x amount of classes - Gantt') 
plt.ylabel('Number of Requirements')
plt.xlabel('Classes Not Tracing')
plt.savefig("Plots/ReqVsClassesNotTracingGantt.png")
plt.show()
#ITRUST CLASS
T=[5,6,11,12,1,4,2,5,8,5,1,4,12,6,2,3,6,9,10,2,3,6,3,3,5,7,3,3,3,9,7,7,6,2] 
N=[81,80,75,74,85,82,84,81,78,81,85,82,74,80,84,83,80,77,76,84,83,80,83,83,81,79,83,83,83,77,79,79,80,84]
plt.hist(T, bins=4)
plt.yticks(range(15))
plt.title('Number of Requirements that trace to x amount of classes - iTrust') 
plt.ylabel('Number of Requirements')
plt.xlabel('Classes Tracing')
plt.savefig("Plots/ReqVsClassesTracingiTrust.png")
plt.show()


plt.hist(N, bins=4)
plt.yticks(range(15))
plt.title('Number of Requirements that do not trace to x amount of classes - iTrust') 
plt.ylabel('Number of Requirements')
plt.xlabel('Classes Not Tracing')
plt.savefig("Plots/ReqVsClassesNotTracingiTrust.png")
plt.show()

#JHOTDRAW CLASS 
T=[75,76,18,7,16,27,109,14,5,4,12,29,59,39,7,12,7,21,19,14,12]
N=[468,467,525,536,527,516,434,529,538,539,531,514,484,504,536,531,536,522,524,529,531]
plt.hist(T, bins=4)
plt.yticks(range(18))
plt.title('Number of Requirements that trace to x amount of classes - JHotDraw') 
plt.ylabel('Number of Requirements')
plt.xlabel('Classes Tracing')
plt.savefig("Plots/ReqVsClassesTracingJHotDraw.png")
plt.show()


plt.hist(N, bins=4)
plt.yticks(range(18))
plt.title('Number of Requirements that do not trace to x amount of classes - JHotDraw') 
plt.ylabel('Number of Requirements')
plt.xlabel('Classes Not Tracing')
plt.savefig("Plots/ReqVsClassesNotTracingJHotDraw.png")
plt.show()
#VOD CLASS 
T=[7,0,4,2,1,2,1,2,1,9,4,0,0,13]
N=[11,18,14,16,17,16,17,16,17,9,14,18,18,5]
plt.hist(T, bins=4)
plt.yticks(range(10))
plt.title('Number of Requirements that trace to x amount of classes - VOD') 
plt.ylabel('Number of Requirements')
plt.xlabel('Classes Tracing')
plt.savefig("Plots/ReqVsClassesTracingVOD.png")
plt.show()


plt.hist(N, bins=4)
plt.yticks(range(10))
plt.title('Number of Requirements that do not trace to x amount of classes - VOD') 
plt.ylabel('Number of Requirements')
plt.xlabel('Classes Not Tracing')
plt.savefig("Plots/ReqVsClassesNotTracingVOD.png")
plt.show()


#CHESS 


    

# Make a fake dataset




Traces = [ 766, 212, 137, 8, 7, 5, 0, 0, 0]
NoTraces = [766, 0, 0, 5, 7, 8, 137, 212, 0]
req = ('0','1', '2', '3','4','5','6','7','8')

plt.bar(req, NoTraces)
plt.title('Number of Methods that do not trace to x amount of Requirements - Chess') 
plt.ylabel('Number of methods')
plt.xlabel('x amount of requirements')
plt.show()


plt.bar(req, NoTraces)
plt.title('Number of Methods that do not trace to x amount of Requirements - Chess') 
plt.ylabel('Number of methods')
plt.xlabel('x amount of requirements')
plt.savefig("Plots/MethodsVsReqChessNoTrace.png")
plt.show()

plt.bar(req, Traces)
plt.title('Number of Methods that do trace to x amount of Requirements - Chess') 
plt.ylabel('Number of methods')
plt.xlabel('x amount of requirements')
plt.savefig("Plots/MethodsVsReqChessTrace.png")
plt.show()

Traces=[9458, 233, 44, 6, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
NoTraces=[ 6454, 2, 2, 4, 9, 12, 36, 31, 65, 98, 61, 137, 219, 220, 196, 236, 458, 0, 0]
req = ('0','1', '2', '3','4','5','6','7','8', '9', '10', '11', '12','13','14','15', '16','17','18')

plt.bar(req, NoTraces)
plt.title('Number of Methods that do not trace to x amount of Requirements - Gantt') 
plt.ylabel('Number of methods')
plt.xlabel('x amount of requirements')
plt.savefig("Plots/MethodsVsReqGanttNoTrace.png")
plt.show()

plt.bar(req, Traces)
plt.title('Number of Methods that do trace to x amount of Requirements - Gantt') 
plt.ylabel('Number of methods')
plt.xlabel('x amount of requirements')
plt.savefig("Plots/MethodsVsReqGanttTrace.png")
plt.show()


Traces=[ 9374, 180, 27, 4, 1, 3, 1, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
NoTraces=[ 9374, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 1, 3, 1, 4, 27, 180, 0]
req = ('0','1', '2', '3','4','5','6','7','8', '9', '10', '11', '12','13','14','15', '16','17','18','19', '20','21', '22', '23', '24', '25', '26', '27', '28', '29','30', '31', '32', '33', '34')

plt.bar(req, NoTraces)
plt.title('Number of Methods that do not trace to x amount of Requirements - iTrust') 
plt.ylabel('Number of methods')
plt.xlabel('x amount of requirements')
plt.savefig("Plots/MethodsVsReqiTrustNoTrace.png")
plt.show()

plt.bar(req, Traces)
plt.title('Number of Methods that do trace to x amount of Requirements - iTrust') 
plt.ylabel('Number of methods')
plt.xlabel('x amount of requirements')
plt.savefig("Plots/MethodsVsReqiTrustTrace.png")
plt.show()


Traces=[ 12202, 401, 16, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
NoTraces=[ 11700, 0, 0, 0, 0, 0, 4, 0, 0, 0, 17, 1, 2, 0, 10, 40, 54, 66, 86, 139, 196, 55]
req = ('0','1', '2', '3','4','5','6','7','8', '9', '10', '11', '12','13','14','15', '16','17','18','19', '20','21')

plt.bar(req, NoTraces)
plt.title('Number of Methods that do not trace to x amount of Requirements - JHotDraw') 
plt.ylabel('Number of methods')
plt.xlabel('x amount of requirements')
plt.savefig("Plots/MethodsVsReqJHotDrawNoTrace.png")
plt.show()

plt.bar(req, Traces)
plt.title('Number of Methods that do trace to x amount of Requirements - JHotDraw') 
plt.ylabel('Number of methods')
plt.xlabel('x amount of requirements')
plt.savefig("Plots/MethodsVsReqJHotDrawTrace.png")
plt.show()



Traces=[282, 64, 11, 3, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
NoTraces=[ 282, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 3, 11, 64, 0]
req = ('0','1', '2', '3','4','5','6','7','8', '9', '10', '11', '12','13','14')

plt.bar(req, NoTraces)
plt.title('Number of Methods that do not trace to x amount of Requirements - VOD') 
plt.ylabel('Number of methods')
plt.xlabel('x amount of requirements')
plt.savefig("Plots/MethodsVsReqVODNoTrace.png")
plt.show()

plt.bar(req, Traces)
plt.title('Number of Methods that do trace to x amount of Requirements - VOD') 
plt.ylabel('Number of methods')
plt.xlabel('x amount of requirements')
plt.savefig("Plots/MethodsVsReqVODTrace.png")
plt.show()


#CHESS CLASS
Traces = [ 112, 16, 4, 13, 8, 6, 1, 0, 0]
NoTraces = [112, 0, 1, 6, 8, 13, 4, 16, 0]
req = ('0','1', '2', '3','4','5','6','7','8')




plt.bar(req, NoTraces)
plt.title('Number of Classes that do not trace to x amount of Requirements - Chess') 
plt.ylabel('Number of Classes')
plt.xlabel('x amount of requirements')
plt.savefig("Plots/ClassesVsReqChessNoTrace.png")
plt.show()

plt.bar(req, Traces)
plt.title('Number of Classes that do trace to x amount of Requirements - Chess') 
plt.ylabel('Number of Classes')
plt.xlabel('x amount of requirements')
plt.savefig("Plots/ClassesVsReqChessTrace.png")
plt.show()

#GANTT
Traces=[1038, 64, 29, 24, 14, 5, 3, 2, 2, 3, 1, 0, 0, 0, 0, 0, 0, 0, 0]
NoTraces=[472, 0, 0, 0, 0, 0, 1, 3, 2, 2, 3, 5, 14, 24, 29, 64, 283, 0, 0]
req = ('0','1', '2', '3','4','5','6','7','8', '9', '10', '11', '12','13','14','15', '16','17','18')

plt.bar(req, NoTraces)
plt.title('Number of Classes that do not trace to x amount of Requirements - Gantt') 
plt.ylabel('Number of Classes')
plt.xlabel('x amount of requirements')
plt.savefig("Plots/ClassesVsReqGanttNoTrace.png")
plt.show()

plt.bar(req, Traces)
plt.title('Number of Classes that do trace to x amount of Requirements - Gantt') 
plt.ylabel('Number of Classes')
plt.xlabel('x amount of requirements')
plt.savefig("Plots/ClassesVsReqGanttTrace.png")
plt.show()


#ITRUST CLASS

Traces=[ 1264, 63, 11, 2, 1, 2, 0, 0, 1, 3, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
NoTraces=[ 1264, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 3, 1, 0, 0, 2, 1, 2, 11, 63, 0]
req = ('0','1', '2', '3','4','5','6','7','8', '9', '10', '11', '12','13','14','15', '16','17','18','19', '20','21', '22', '23', '24', '25', '26', '27', '28', '29','30', '31', '32', '33', '34')
plt.bar(req, NoTraces)
plt.title('Number of Classes that do not trace to x amount of Requirements - iTrust') 
plt.ylabel('Number of Classes')
plt.xlabel('x amount of requirements')
plt.savefig("Plots/ClassesVsReqiTrustNoTrace.png")
plt.show()

plt.bar(req, Traces)
plt.title('Number of Classes that do trace to x amount of Requirements - iTrust') 
plt.ylabel('Number of Classes')
plt.xlabel('x amount of requirements')
plt.savefig("Plots/ClassesVsReqiTrustTrace.png")
plt.show()

#JHOTDRAW CLASS
Traces=[ 602, 232, 82, 34, 9, 1, 1, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1]
NoTraces=[242, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 1, 1, 9, 34, 82, 232, 181]
req = ('0','1', '2', '3','4','5','6','7','8', '9', '10', '11', '12','13','14','15', '16','17','18','19', '20','21')
plt.bar(req, NoTraces)
plt.title('Number of Classes that do not trace to x amount of Requirements - JHotDraw') 
plt.ylabel('Number of Classes')
plt.xlabel('x amount of requirements')
plt.savefig("Plots/ClassesVsReqJHotDrawNoTrace.png")
plt.show()

plt.bar(req, Traces)
plt.title('Number of Classes that do trace to x amount of Requirements - JHotDraw') 
plt.ylabel('Number of Classes')
plt.xlabel('x amount of requirements')
plt.savefig("Plots/ClassesVsReqJHotDrawTrace.png")
plt.show()


#VOD CLASS 


Traces=[ 38, 8, 3, 2, 1, 3, 0, 1, 0, 0, 0, 0, 0, 0, 0]
NoTraces=[38, 0, 0, 0, 0, 0, 0, 1, 0, 3, 1, 2, 3, 8, 0]
req = ('0','1', '2', '3','4','5','6','7','8', '9', '10', '11', '12','13','14')

plt.bar(req, NoTraces)
plt.title('Number of Classes that do not trace to x amount of Requirements - JHotDraw') 
plt.ylabel('Number of Classes')
plt.xlabel('x amount of requirements')
plt.savefig("Plots/ClassesVsReqVODNoTrace.png")
plt.show()

plt.bar(req, Traces)
plt.title('Number of Classes that do trace to x amount of Requirements - JHotDraw') 
plt.ylabel('Number of Classes')
plt.xlabel('x amount of requirements')
plt.savefig("Plots/ClassesVsReqVODTrace.png")
plt.show()

'''

df = pd.read_csv("chessMethodVsReq.txt") 
ax=df.plot.bar(x='Requirement', y=['T'])
ax.set_title('Method versus T Requirements - Chess')
plt.savefig("Plots/chessMethodVsTReq.png")


df = pd.read_csv("chessMethodVsReq.txt") 
ax=df.plot.bar(x='Requirement', y=['N'])
ax.set_title('Method versus N Requirements - Chess')
plt.savefig("Plots/chessMethodVsNReq.png")


df = pd.read_csv("ganttMethodVsReq.txt") 
ax=df.plot.bar(x='Requirement', y=['T'])
ax.set_title('Method versus T Requirements - Gantt')
plt.savefig("Plots/GanttMethodVsTReq.png")

df = pd.read_csv("ganttMethodVsReq.txt") 
ax=df.plot.bar(x='Requirement', y=['N'])
ax.set_title('Method versus N Requirements - Gantt')
plt.savefig("Plots/GanttMethodVsNReq.png")


df = pd.read_csv("itrustMethodVsReq.txt") 
ax=df.plot.bar(x='Requirement', y=['T'])
ax.set_title('Method versus T Requirements - iTrust')
plt.savefig("Plots/iTrustMethodVsTReq.png")

df = pd.read_csv("itrustMethodVsReq.txt") 
ax=df.plot.bar(x='Requirement', y=['N'])
ax.set_title('Method versus N Requirements - iTrust')
plt.savefig("Plots/iTrustMethodVsNReq.png")


df = pd.read_csv("jhotdrawMethodVsReq.txt") 
ax=df.plot.bar(x='Requirement', y=['T'])
ax.set_title('Method versus T Requirements - JHotDraw')
plt.savefig("Plots/JHotDrawMethodVsTReq.png")


df = pd.read_csv("jhotdrawMethodVsReq.txt") 
ax=df.plot.bar(x='Requirement', y=['N'])
ax.set_title('Method versus N Requirements - JHotDraw')
plt.savefig("Plots/JHotDrawMethodVsNReq.png")
'''








