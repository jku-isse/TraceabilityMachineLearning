# Load the Pandas libraries with alias 'pd' 
import pandas as pd 
import numpy as np
import matplotlib.ticker as ticker
import matplotlib.pyplot as plt
import matplotlib.ticker as plticker
from scipy.stats import skew


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
plt.show()



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
