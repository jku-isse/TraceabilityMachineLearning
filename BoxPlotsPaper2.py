import matplotlib.pyplot as plt


plt.rc('xtick', labelsize=13) 
plt.rc('ytick', labelsize=13) 
plt.rc('font', weight='bold')

#T->N ERROR

value1=[83, 100, 76, 0, 83, 92, 95, 66, 83, 66, 84, 100, 50, 100, 100, 100, 100, 100, 100, 100, 100, 100, 50, 75, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 0, 100, 100, 100, 100, 100, 100, 100, 100, 93, 80, 75, 42, 93, 82, 100, 70, 64, 79, 100, 100, 66, 0, 85, 60, 100]
value2=[91, 84, 66, 91, 66, 85, 91, 100, 64, 100, 100, 92, 50, 83, 94, 85, 80, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 68, 58, 75, 40, 66, 82, 58, 100, 40, 77, 73, 100, 93, 92, 73, 61, 96, 93, 50, 0, 60, 0, 0]
value3=[80, 80, 50, 100, 83, 60, 92, 94, 80, 100, 70, 100, 57, 50, 83, 100, 76, 100, 77, 100, 100, 73, 78, 100, 100, 50, 100, 50, 100, 100, 0, 100, 100, 100, 100, 100, 100, 100, 100, 100, 0, 100, 100, 100, 50, 66, 100, 0, 100, 100, 100, 100, 100, 100, 100, 100, 0, 100, 100, 0, 100, 100, 100, 100, 100, 100, 100, 100, 0, 100, 100, 100, 100, 100, 100, 100, 0, 100, 100, 100, 100, 0, 100, 100, 100, 100, 100, 100, 100, 88, 78, 87, 60, 100, 82, 91, 68, 60, 96, 71, 88, 100, 66, 73, 66, 70, 100, 100, 62, 79, 50, 100, 50, 88, 100, 50, 81, 86, 66, 75, 0, 100, 100, 80, 100, 100, 0, 66, 100]
value4=[0, 100, 100, 100, 100, 75, 0, 66, 100, 85, 100, 50, 100, 100, 50, 50, 100, 100, 50, 100, 0, 44, 100, 100, 72, 100, 100, 100, 100, 100, 50, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 50, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 66, 100, 100, 100, 100, 100, 100, 100, 64, 100, 100, 84, 100, 63, 57, 80, 100, 90, 85, 40, 77, 70, 100, 71, 63, 40, 33, 66, 88, 50, 100, 100, 92, 100]
value5=[66, 100, 100, 100, 100, 100, 100, 83, 100, 100, 100, 100, 62, 0, 100, 66, 100, 83, 85, 50, 0, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 0, 100, 100, 100, 100, 100, 50, 100, 55, 100, 100, 100, 50, 60, 50, 60, 33, 100, 0, 100, 0, 33, 100, 33, 100, 100, 100, 100, 100, 0, 100, 100, 100]
value6=[62, 100, 50, 50, 100, 100, 50, 100, 100, 100, 0, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 40, 100, 100, 100, 57, 100, 100, 100]
box_plot_data=[value1,value2,value3,value4, value5,value6]
plt.boxplot(box_plot_data,patch_artist=True,labels=['0',']0-20[','[20,40[','[40,60[','[60-80[', '[80-100]'])
plt.ylim(0, 100)# Add title and axis names
#plt.title('Trace Precision % versus T->N % of error seeded',fontsize=15)
plt.ylabel('Trace Precision %',fontsize=15, weight='bold')
plt.xlabel('T->N % of error seeded',fontsize=15, weight='bold')

plt.savefig('./BoxPlotsPaper2IncompletenessSeedingV2/TracePrecisionVsTtoNError')
plt.show()


value1=[100, 100, 99, 100,  100, 99, 99, 98, 99, 99, 100, 99, 100, 99, 99,  99, 100, 100, 100, 100, 100, 100, 100, 98,  96, 100,  100, 100, 100, 100, 100, 100, 100, 97, 97, 100, 100, 100, 100,  100, 100, 100, 98, 100,  98, 100, 100, 100,  100, 100, 98, 98,  100,  100, 97, 96, 97, 98, 100,  100,  99, 100, 100, 100,  100,  100, 100, 100, 99,  100,  100, 96,  100,  100,  96,  100,  100,  100,  89,  96, 85, 96,  100,  100, 89]
value2=[99, 99, 100, 99, 100, 99, 99, 98, 99, 99, 99, 99, 99, 100, 98, 99, 99, 100, 98, 100, 100, 100, 100, 100, 100, 97, 100,  96, 97, 100, 100, 100, 100, 94, 100, 100, 100, 100, 100, 100, 98, 100, 100, 100, 98, 100, 98, 100, 97, 100, 99, 98, 96, 99, 98, 99, 100, 96, 99, 97, 100, 98, 97, 99, 99, 98, 97, 87, 93, 96, 93, 96]
value3=[99, 99, 99,  99, 98,  99, 100, 97, 99, 98,  99, 100, 100,  99, 98, 98, 99, 100, 99, 100, 99, 99,  99, 99, 99, 100, 99, 99, 99, 100,  99, 99, 97, 99,  99, 98,  94, 100, 100, 100, 91, 98,  100, 98, 98,  96,  96, 100, 100, 86, 100, 100,  100,  98,  98, 98, 100, 100, 100, 100, 100, 100,  100, 100, 98,  98, 100, 98, 100, 100, 100, 97, 100,  100, 100, 100, 100,  100,  100, 100,  98, 100, 96,  96, 100,  100, 100, 98, 89, 100, 100,  100, 100, 98,  96, 94, 100,  100, 100, 98,  98,  100, 100, 100,  100, 100,  98, 100,  100, 100, 100,  89, 100,  98, 98, 100, 98, 96, 100, 100,  100,  98, 96, 93, 98, 96, 98, 100, 96, 97, 100, 99, 95, 96, 97, 100, 99, 95, 99, 95, 100, 100, 99, 94, 96, 100, 99, 98, 100, 99, 96, 98, 99, 99, 94,  89,  100,  100,  90, 88,  100,  96,  91,  93,  100,  90, 90,  100,  96,  94, 57, 96, 89,  96,  89, 91,  96,  89, 87, 86]
value4=[100, 97, 99, 99, 100, 98, 100, 99, 99,  98,  99, 99, 99, 99,  99,  98, 99, 98,  99, 100, 99, 100,  99, 100,  99, 99, 99,  100, 100, 99,  99, 100, 100, 99, 98,  100, 99,  99, 98, 98,  100, 98, 100, 100, 100, 98,  98, 83,  100, 100,  98, 98, 100, 98, 100, 98, 89,  100, 100, 89,  100, 98, 100, 100,  96, 94, 100, 98,  100, 100, 94, 98, 100, 92,  100, 98, 88,  100,  98, 100,  100,  96,  96,  100, 100,  98,  100, 98, 100, 100, 96, 100, 100,  100, 100, 100, 98, 100, 100, 100,  100, 100, 98, 95,  100, 96, 96, 98, 96, 100,  100, 94,  98, 100, 91,  100, 100,  98, 98, 100, 98, 100, 98, 100,  100, 98,  100, 100, 100, 98, 88,  100,  100,  98,  100, 100, 95, 100, 99, 94, 99, 94, 98, 95, 99, 94, 96, 98, 96,  99, 95, 94, 98, 97, 96, 96, 99,  97,  94,  85,  100,  97,  90,  94, 59, 87,  97,  96, 56,  100,  96,  94,  100,  94, 86,  97,  96,  94,  82,  100,  100,  94,  100,  100,  94, 86, 93,  94]
value5=[100, 100, 99,  98,  100, 97,  99, 99, 100, 97,  98, 97,  98, 99, 99, 100,  99, 99,  98,  99,  100, 96, 100, 98, 100,  95,  99,  95,  99,  99, 98, 96,  99, 98, 99, 99, 99,  99, 96,  99, 92,  98,  100, 98, 100, 100,  98,  96, 100, 100, 100,  98,  98, 85, 100, 98,  98, 98,  96,  100, 100,  98, 98,  92, 96,  96, 100, 100, 89,  100,  98,  98, 87,  98, 96, 100, 94, 98,  100,  100,  98, 85, 98, 100,  92, 98,  98, 98,  98,  98, 88,  98,  100,  98,  84,  100, 92,  92, 100,  100, 98,  100, 100,  98, 98, 98, 94,  100, 90, 95,  100, 96, 100, 95, 99, 91, 94,  99,  99, 95,  100, 97, 98, 92, 96, 95,  99, 96, 95,  100, 93,  99, 99, 95, 99, 99, 100, 98,  99, 99,  100,  100, 56,  83, 91,  94,  100,  91, 87, 84,  100,  100,  91, 54,  88,  97,  90,  100]
value6=[ 100, 98, 98, 98,  100,  99,  100, 98,  99, 97,  100, 96, 99,  100,  100,  99,  100,  99,  100,  99,  99,  98,  100,  98,  94,  100, 97,  100,  99,  99, 98,  100, 96,  96,  90,  96, 98,  100,  98,  98, 92,  92,  100,  96,  80,  98,  98,  100,  100,  98,  82,  100,  98,  98,  100, 98,  98, 100,  98,  83, 100,  92,  100,  98,  100,  98,  100,  76,  98,  92,  100, 98, 96,  92, 100,  98,  98,  98,  98, 96,  94,  100, 98,  100,  98, 88, 94,  100,  100,  95, 95,  100,  99,  99,  100,  100,  100,  99, 97, 93, 89,  100,  100,  100,  99,  100,  100,  100,  99, 99,  86,  100,  100,  95,  100,  99,  91, 99,  100,  100,  92,  100,  99,  97,  99,  86, 89,  100,  100, 94,  100,  99,  95,  86,  100,  100,  100,  99,  99, 86,  100,  100, 91,  100,  99, 93, 99,  100,  100,  92,  100,  99,  100,  100,  100,  100,  100,  100,  100,  100,  100,  40,  92,  100,  100, 68,  82,  100,  100,  40,  81,  100,  100,  100,  100,  100,  100, 86,  100,  100,  100,  45]
box_plot_data=[value1,value2,value3,value4, value5,value6]
plt.boxplot(box_plot_data,patch_artist=True,labels=['0',']0-20[','[20,40[','[40,60[','[60-80[', '[80-100]'])
plt.ylim(0, 100)# Add title and axis names
#plt.title('NoTrace Precision % versus T->N % of error seeded',fontsize=15)
plt.ylabel('NoTrace Precision %',fontsize=15, weight='bold')
plt.xlabel('T->N % of error seeded',fontsize=15, weight='bold')
plt.savefig('./BoxPlotsPaper2IncompletenessSeedingV2/NoTracePrecisionVsTtoNError')
plt.show()


#N->T ERROR
value1=[83, 100, 76, 0, 83, 92, 95, 66, 83, 66, 84, 100, 50, 100, 100, 100, 100, 100, 100, 100, 100, 100, 50, 75, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 0, 100, 100, 100, 100, 100, 100, 100, 100, 93, 80, 75, 42, 93, 82, 100, 70, 64, 79, 100, 100, 66, 0, 85, 60, 100]
value2=[13, 0, 19, 11, 38, 14, 12, 0, 15, 24, 26, 6, 1, 35, 33, 28, 0, 1, 62, 19, 16, 17, 39, 26, 1, 68, 28, 5, 6, 40, 14, 18, 31, 35, 64, 12, 15, 41, 33, 20, 0, 50, 26, 30, 64, 8, 0, 50, 33, 100, 63, 66, 33, 33, 40, 6, 11, 27, 27, 0, 36, 41, 10, 80, 0, 71, 15, 77, 18, 37, 18, 20, 39, 22, 80, 30, 20, 0, 0, 50, 3, 53, 3, 0, 0, 25, 34, 0, 17, 39, 25, 2, 0, 17, 40, 0, 7, 58, 0, 33, 6, 30, 35, 55, 0, 41, 26, 31, 0, 0, 65, 30, 55, 66, 31, 0, 0, 29, 0, 0, 0, 0, 42, 0, 0, 0, 0, 62, 11, 0, 14, 85, 50, 0, 27, 0, 0, 0, 90]
value3=[0, 9, 0, 0, 0, 4, 0, 0, 6, 8, 12, 0, 18, 3, 2, 4, 1, 0, 13, 3, 2, 0, 6, 13, 2, 0, 12, 3, 25, 12, 4, 20, 33, 45, 5, 0, 14, 12, 28, 11, 0, 13, 0, 4, 20, 14, 21, 0, 0, 20, 0, 28, 16, 17, 9, 28, 0, 13, 12, 5, 6, 16, 0, 23, 22, 23, 10, 0, 13, 4, 12, 18, 3, 14, 14, 8, 0, 11, 12, 20, 4, 13, 0, 6, 20, 18, 24, 0, 0, 5, 8, 13, 0, 13, 0, 8, 22, 0, 12, 0, 18, 13, 1, 49, 24, 23, 46, 40, 0, 17, 19, 0, 38, 30, 1, 0, 0, 20, 3, 0, 37, 0, 0, 7, 27, 10, 2, 0, 0, 26, 25, 0, 1, 0, 4, 0, 2, 0, 40, 4, 25, 1, 0, 8, 0, 9, 0, 0, 0, 66, 0, 0, 0, 78, 40, 0, 0, 14, 0, 0, 81, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 66, 0, 50, 0, 0, 0, 0, 20, 26, 0, 0, 0]
value4=[1, 0, 5, 3, 3, 0, 7, 7, 2, 1, 12, 0, 6, 2, 0, 7, 3, 8, 3, 0, 0, 2, 4, 0, 11, 0, 4, 0, 0, 3, 0, 8, 0, 2, 2, 0, 0, 5, 3, 3, 0, 3, 8, 0, 6, 17, 3, 8, 14, 0, 6, 6, 0, 6, 3, 12, 19, 4, 15, 1, 7, 3, 5, 2, 2, 11, 13, 11, 5, 0, 0, 16, 5, 12, 1, 19, 0, 2, 6, 2, 10, 10, 14, 4, 8, 2, 16, 4, 7, 8, 5, 7, 2, 13, 16, 9, 4, 7, 8, 7, 23, 2, 25, 0, 1, 1, 9, 0, 0, 29, 20, 19, 10, 7, 0, 0, 32, 0, 0, 24, 0, 0, 20, 0, 2, 2, 1, 1, 2, 0, 0, 17, 9, 1, 0, 0, 0, 24, 6, 0, 1, 2, 0, 30, 22, 0, 8, 1, 1, 0, 7, 0, 11, 79, 0, 0, 0, 0, 74, 0, 0, 0, 0, 61, 0, 5, 81, 28, 0, 6, 0, 0, 13]
value5=[6, 8, 2, 0, 1, 0, 0, 1, 0, 1, 6, 1, 2, 1, 1, 0, 2, 0, 0, 2, 7, 1, 0, 2, 2, 0, 0, 6, 6, 1, 2, 14, 12, 0, 13, 7, 5, 16, 1, 3, 3, 0, 1, 5, 4, 1, 8, 8, 11, 2, 11, 1, 7, 2, 5, 8, 1, 2, 6, 11, 1, 6, 6, 12, 4, 6, 5, 9, 6, 9, 4, 3, 7, 4, 6, 0, 1, 7, 5, 3, 5, 12, 6, 5, 2, 1, 2, 12, 0, 6, 10, 5, 1, 12, 2, 5, 5, 13, 3, 0, 1, 10, 1, 3, 15, 5, 3, 10, 7, 12, 1, 13, 10, 0, 2, 0, 15, 0, 0, 6, 5, 0, 0, 0, 0, 0, 0, 0, 1, 3, 0, 2, 0, 11, 0, 20, 0, 12, 0, 0, 20, 0, 0, 12, 0, 0, 14, 5, 0, 5, 5, 0, 0, 5, 0, 13, 0, 5, 26, 20, 16, 0, 0, 5, 0, 0, 0, 0, 15]
value6=[0, 1, 1, 0, 1, 2, 1, 2, 4, 1, 0, 1, 0, 0, 1, 1, 0, 0, 1, 0, 0, 1, 1, 0, 0, 2, 5, 2, 1, 0, 0, 7, 5, 0, 4, 5, 4, 8, 2, 0, 5, 3, 3, 8, 5, 4, 4, 4, 3, 4, 2, 2, 7, 3, 10, 3, 11, 4, 3, 8, 3, 4, 1, 2, 0, 1, 10, 8, 4, 10, 1, 3, 4, 5, 7, 2, 4, 3, 2, 9, 4, 6, 3, 3, 4, 2, 4, 2, 8, 3, 6, 1, 4, 6, 5, 7, 6, 1, 1, 4, 2, 4, 7, 10, 2, 5, 7, 14, 2, 5, 17, 0, 0, 4, 0, 0, 0, 0, 4, 8, 0, 19, 0, 5, 9, 0, 0, 1, 10, 0, 0, 2, 16, 0, 0, 11, 5, 10, 0, 0, 1, 3, 7, 9, 0, 8, 0, 63, 15, 0, 10, 0, 13, 18, 8, 2, 0, 3, 0, 0, 0, 9, 15, 0, 9, 0, 0, 0, 10, 8, 67, 0, 0, 16]
box_plot_data=[value1,value2,value3,value4, value5,value6]
plt.boxplot(box_plot_data,patch_artist=True,labels=['0',']0-20[','[20,40[','[40,60[','[60-80[', '[80-100]'])
plt.ylim(0, 100)# Add title and axis names
#plt.title('Trace Precision % versus N->T % of error seeded',fontsize=15)
plt.ylabel('Trace Precision %',fontsize=15, weight='bold')
plt.xlabel('N->T % of error seeded',fontsize=15, weight='bold')
plt.savefig('./BoxPlotsPaper2IncompletenessSeedingV2/TracePrecisionVsNtoTError')
plt.show()


value1=[100, 100, 99, 100,  100, 99, 99, 98, 99, 99, 100, 99, 100, 99, 99,  99, 100, 100, 100, 100, 100, 100, 100, 98,  96, 100,  100, 100, 100, 100, 100, 100, 100, 97, 97, 100, 100, 100, 100,  100, 100, 100, 98, 100,  98, 100, 100, 100,  100, 100, 98, 98,  100,  100, 97, 96, 97, 98, 100,  100,  99, 100, 100, 100,  100,  100, 100, 100, 99,  100,  100, 96,  100,  100,  96,  100,  100,  100,  89,  96, 85, 96,  100,  100, 89]
value2=[100, 100, 99, 100, 99, 99, 99, 100, 99, 99, 99, 99, 100, 100, 100, 100, 100, 98, 100, 99, 99, 100, 98, 99, 99, 99, 99, 100, 99, 100, 100, 100, 100, 100, 100, 100, 100, 96, 100, 97, 100, 100, 100, 100, 100, 100, 97, 100, 100, 100, 100, 97, 100, 100, 100, 100, 100, 100, 100, 97, 100, 100, 100, 100, 97, 100, 100, 100, 100, 100, 96, 100, 100, 100, 100, 100, 100, 100, 97, 100, 100, 100, 100, 100, 100, 98, 97, 100, 99, 97, 100, 100, 100, 97, 99, 100, 97, 99, 100, 100, 100, 100, 100, 98, 100, 100, 100, 100, 100, 100, 99, 100, 98, 98, 97, 100, 99, 100, 100, 100, 100,  100, 96,  100, 95,  100, 96, 100, 100, 100,  100,  100, 100, 81, 100, 95, 85, 96,  100, 91, 92, 100,  100, 95,  100, 100,  100,  89, 83]
value3=[100, 99, 100, 100, 100, 99, 100, 100, 99, 99, 99, 100, 98, 100, 100, 100, 98, 100, 100, 99, 100, 100, 99, 98, 100, 100, 99, 100, 100, 100, 100, 100, 100, 100, 100, 96, 96, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 96, 100, 100, 97, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 94, 100, 100, 100, 100, 100, 100, 96, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 95, 100, 100, 100, 100, 100, 100, 100, 100, 100, 97, 100, 100, 100, 99, 100, 98, 97, 100, 97, 98, 100, 98, 98, 100, 100, 99, 100, 100, 100, 98, 100, 100, 96, 97, 100, 100, 100, 100, 98, 100, 100, 100, 100, 100, 100, 100, 100, 98, 98, 97, 100, 100, 100, 100, 100, 100, 100, 100, 95, 100, 100, 100, 85, 88, 100, 100, 100, 100, 100, 87, 100, 100, 100, 100, 100, 95, 100, 100, 100, 100, 100, 100, 88, 100, 88, 100, 100, 100, 100, 100, 91, 100, 93, 100]
value4=[100, 100, 100, 98, 98, 100, 98, 98, 99, 100, 100, 100, 100, 100, 100, 100, 99, 100, 100, 100, 100, 98, 99, 100, 100, 100, 99, 100, 100, 100, 100, 99, 100, 99, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 94, 100, 100, 95, 100, 92, 100, 100, 100, 100, 100, 100, 100, 96, 100, 100, 100, 100, 94, 100, 94, 100, 96, 100, 100, 100, 100, 100, 100, 100, 100, 94, 100, 100, 100, 100, 100, 95, 100, 100, 100, 100, 100, 100, 95, 100, 100, 96, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 97, 97, 100, 100, 100, 100, 98, 100, 100, 100, 100, 100, 97, 100, 98, 96, 100, 100, 100, 100, 100, 98, 100, 100, 100, 100, 100, 98, 100, 100, 100, 97, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 94, 80, 100, 100, 100, 100, 80, 100, 100, 100, 100, 83, 100, 100, 83, 100, 100, 100, 100, 100, 50]
value5=[100, 98, 95, 100, 96, 100, 100, 100, 100, 100, 100, 100, 100, 100, 97, 100, 98, 100, 100, 96, 100, 100, 97, 97, 100, 100, 94, 100, 100, 98, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 95, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 90, 100, 100, 100, 94, 95, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 90, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 91, 100, 100, 100, 100, 100, 100, 100, 88, 100, 100, 100, 100, 95, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 88, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 85, 100, 100, 100, 83, 100, 90, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100]
value6=[100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 96, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 75, 100, 100, 100, 100, 100, 100, 80, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 80, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 93, 100, 100, 100, 100, 100, 100, 100, 100, 100, 50, 0, 100, 83, 100, 100, 100, 100, 100, 100, 0]
box_plot_data=[value1,value2,value3,value4, value5,value6]
plt.boxplot(box_plot_data,patch_artist=True,labels=['0',']0-20[','[20,40[','[40,60[','[60-80[', '[80-100]'])
plt.ylim(0, 100)# Add title and axis names
#plt.title('NoTrace Precision % versus N->T % of error seeded',fontsize=15)
plt.ylabel('NoTrace Precision %',fontsize=15, weight='bold')
plt.xlabel('N->T % of error seeded',fontsize=15, weight='bold')
plt.savefig('./BoxPlotsPaper2IncompletenessSeedingV2/NoTracePrecisionVsNtoTError')
plt.show()





value1=[33, 20, 25, 0, 0, 36, 46, 31, 47, 31, 25, 52, 50, 11, 5, 0, 57, 50, 33, 50, 100, 58, 50, 10, 0, 12, 0, 42, 39, 42, 80, 66, 28, 15, 6, 50, 40, 30, 0, 0, 22, 28, 25, 33, 0, 31, 33, 41, 0, 60, 46, 43, 0, 0, 37, 15, 32, 45, 33, 0, 0, 57, 29, 52, 20, 8, 44, 0, 0, 0, 0, 0, 0, 0, 0, 29, 23, 5]
value2=[39, 52, 25, 39, 25, 28, 39, 20, 42, 5, 29, 46, 11, 33, 24, 28, 25, 28, 28, 50, 30, 28, 19, 58, 28, 30, 33, 30, 28, 35, 42, 50, 6, 41, 33, 14, 41, 42, 28, 37, 58, 42, 28, 37, 33, 10, 57, 15, 52, 22, 31, 10, 44, 45, 22, 8, 10, 47, 32, 20, 43, 30, 52, 25, 46, 32, 7, 0, 23, 0, 0]
value3=[19, 19, 11, 16, 33, 4, 46, 21, 26, 20, 19, 15, 19, 12, 23, 6, 24, 18, 33, 23, 20, 22, 26, 25, 12, 11, 10, 14, 25, 20, 0, 33, 15, 25, 14, 28, 42, 50, 6, 20, 0, 22, 40, 12, 12, 28, 33, 0, 22, 25, 28, 28, 21, 80, 28, 15, 0, 33, 41, 0, 33, 40, 10, 14, 80, 16, 3, 10, 0, 33, 11, 3, 40, 14, 25, 20, 0, 14, 33, 28, 50, 0, 22, 40, 37, 14, 41, 28, 30, 18, 34, 16, 9, 20, 25, 25, 52, 33, 38, 25, 19, 33, 38, 28, 44, 23, 33, 8, 23, 25, 10, 33, 16, 35, 33, 22, 34, 30, 19, 40, 0, 5, 15, 19, 15, 5, 0, 15, 5]
value4=[0, 4, 18, 14, 20, 14, 0, 19, 18, 28, 14, 11, 19, 10, 12, 11, 20, 6, 9, 23, 0, 19, 6, 20, 19, 10, 28, 50, 8, 10, 12, 14, 42, 16, 6, 22, 11, 20, 50, 50, 17, 5, 22, 10, 28, 50, 50, 15, 50, 41, 12, 21, 50, 50, 10, 16, 3, 50, 50, 50, 50, 12, 17, 50, 22, 20, 42, 28, 50, 50, 12, 80, 16, 10, 30, 8, 28, 14, 50, 10, 14, 5, 20, 8, 20, 50, 50, 28, 30, 14, 50, 50, 13, 3, 20, 15, 20, 11, 18, 8, 11, 12, 9, 8, 15, 28, 6, 23, 20, 9, 23, 15, 10, 5, 44, 19, 7, 9, 5, 29, 23]
value5=[13, 20, 12, 4, 7, 20, 2, 6, 12, 14, 13, 12, 7, 0, 14, 13, 3, 6, 21, 6, 0, 7, 1, 14, 25, 12, 60, 42, 60, 20, 5, 20, 8, 14, 37, 14, 10, 12, 33, 5, 5, 14, 16, 10, 13, 5, 11, 20, 13, 16, 5, 14, 12, 40, 0, 25, 11, 17, 4, 7, 5, 33, 11, 10, 7, 4, 5, 14, 9, 3, 5, 4, 0, 6, 0, 11, 16, 11, 8, 33, 9, 8, 9, 0, 7, 5, 9]
value6=[12, 3, 4, 4, 7, 2, 11, 4, 9, 4, 0, 14, 4, 20, 14, 20, 16, 20, 16, 14, 5, 8, 2, 14, 2, 7, 8, 10, 2, 2, 1, 3, 9, 10, 19, 5]
box_plot_data=[value1,value2,value3,value4, value5,value6]
plt.boxplot(box_plot_data,patch_artist=True,labels=['0',']0-20[','[20,40[','[40,60[','[60-80[', '[80-100]'])
plt.ylim(0, 100)# Add title and axis names
#plt.title('Trace Recall % versus T->N % of error seeded',fontsize=15)
plt.ylabel('Trace Recall %',fontsize=15, weight='bold')
plt.xlabel('T->N % of error seeded',fontsize=15, weight='bold')
plt.savefig('./BoxPlotsPaper2IncompletenessSeedingV2/TraceRecallVsTtoNError')
plt.show()


value1=[46, 52, 43, 52, 54, 51, 51, 48, 52, 49, 49, 50, 49, 54, 53, 53, 25, 25, 25, 24, 24, 25, 25, 23, 23, 22, 25, 23, 26, 24, 24, 24, 23, 19, 17, 25, 25, 22, 24, 23, 23, 23, 23, 24, 24, 19, 25, 25, 23, 25, 33, 32, 36, 39, 31, 33, 31, 33, 38, 38, 39, 36, 37, 37,  39,  37, 39, 38, 39,  39,  40, 40,  47, 50, 42, 48, 50, 48, 34, 41, 30, 41,  47,  47, 41]
value2=[51, 50, 49, 51, 49, 50, 52, 49, 52, 53, 51, 51, 54, 46, 49, 50, 49, 25, 23, 25, 23, 25, 25, 25, 23, 22, 25,  23, 22, 25, 24, 24, 24, 17, 25, 25, 23, 25, 25, 23, 25, 25, 24, 23, 25, 25, 23, 25, 22, 36, 37, 32, 34, 39, 33, 37, 38, 34, 37, 31, 39, 33, 31, 36, 37, 33, 31, 41, 43, 41, 43, 40]
value3=[43, 50, 54,  53, 49,  53, 46, 43, 52, 48,  53, 46, 52,  53, 43, 49, 52, 49, 50, 46, 51, 49,  53, 52, 50, 52, 44, 51, 49, 49,  53, 54, 49, 52,  53, 25,  24, 25, 24, 24, 21, 25,  24, 25, 24,  23,  23, 25, 24, 19, 25, 24,  25,  24,  25, 25, 25, 25, 24, 23, 24, 24,  23, 23, 25,  24, 25, 23, 26, 24, 25, 21, 24,  23, 24, 25, 24,  25,  23, 24,  25, 25, 23,  23, 23,  25, 24, 24, 18, 22, 24,  23, 24, 25,  23, 17, 25,  25, 23, 23,  24,  24, 22, 25,  23, 23,  24, 25,  24, 24, 25,  18, 24,  23, 25, 25, 25, 26, 25, 23,  25,  24, 33, 31, 37, 32, 37, 40, 33, 31, 36, 39, 33, 32, 34, 38, 36, 32, 39, 31, 38, 38, 37, 33, 36, 38, 37, 33, 38, 39, 33, 34, 37, 37, 47,  34,  50,  50,  35, 50,  50,  42,  42,  41,  50,  35, 41,  50,  42,  48, 30, 41, 41,  42,  34, 43,  42,  34, 43, 41]
value4=[52, 49, 49, 50, 52, 43, 52, 52, 49,  53,  52, 50, 49, 54,  52,  53, 52, 52,  54, 49, 54, 52,  54, 46,  52, 52, 50,  53, 52, 52,  53, 46, 52, 51, 52,  49, 50,  53, 24, 25,  25, 23, 24, 25, 25, 24,  23, 18,  25, 25,  25, 25, 25, 24, 25, 26, 21,  25, 25, 20,  24, 25, 24, 25,  23, 23, 25, 25,  24, 25, 24, 24, 25, 24,  24, 24, 21,  25,  23, 24,  25,  23,  23,  23, 25,  23,  24, 24, 25, 24, 26, 25, 23,  24, 25, 25, 24, 24, 25, 22,  24, 24, 24, 21,  25, 23, 25, 25, 24, 24,  25, 23,  23, 25, 21,  25, 25,  24, 25, 25, 24, 25, 23, 26,  24, 23,  25, 24, 25, 26, 19,  25,  25,  25,  24, 25, 34, 39, 39, 33, 38, 35, 38, 31, 38, 34, 33, 38, 32,  38, 33, 31, 36, 37, 34, 35, 39,  48,  44,  50,  50,  48,  36,  44, 33, 43,  48,  41, 33,  50,  42,  44,  50,  44, 41,  48,  41,  44,  43,  50,  50,  44,  50,  50,  44, 33, 41,  44]
value5=[46, 52, 49,  53,  46, 52,  49, 50, 52, 52,  53, 49,  53, 49, 50, 46,  52, 49,  53,  53,  53, 44, 52, 50, 46,  45,  52,  49,  50,  53, 52, 49,  50, 52, 49, 49, 50,  53, 44,  52, 24,  23,  23, 25, 25, 24,  25,  25, 25, 24, 25,  23,  24, 22, 25, 25,  25, 23,  25,  24, 25,  25, 25,  23, 23,  25, 25, 25, 21,  25,  25,  24, 20,  25, 26, 25, 23, 26,  25,  25,  24, 22, 25, 25,  24, 26,  24, 24,  23,  24, 22,  24,  25,  24,  21,  25, 24,  24, 24,  24, 24,  24, 25,  25, 25, 25, 35,  39, 34, 35,  39, 35, 38, 37, 40, 35, 32,  40,  39, 35,  39, 37, 37, 33, 37, 37,  40, 37, 32,  39, 38,  40, 39, 35, 39, 38, 38, 37,  40, 38,  50,  50, 33,  41, 47,  44,  50,  42, 41, 45,  50,  50,  42, 30,  50,  48,  36,  50]
value6=[ 54, 52, 52, 52,  54,  55,  54, 52,  49, 44,  54, 52, 54,  53,  54,  51,  54,  50,  54,  49,  49,  54,  54,  53,  45,  54, 52,  54,  50,  55, 26,  25, 26,  24,  24,  26, 25,  25,  25,  25, 24,  24,  25,  26,  21,  25,  24,  25,  25,  25,  21,  25,  25,  25,  25, 26,  24, 25,  25,  22, 25,  24,  25,  25,  25,  26,  25,  22,  25,  24,  25, 24, 24,  23, 25,  25,  25,  25,  25, 25,  23,  25, 25,  25,  25, 22, 25,  36,  39,  37, 36,  38,  39,  38,  36,  39,  38,  39, 37, 37, 34,  36,  39,  38,  39,  36,  39,  38,  39, 38,  34,  36,  39,  35,  38,  39,  38, 40,  36,  39,  32,  38,  39,  37,  39,  34, 33,  36,  39, 36,  38,  39,  38,  34,  36,  39,  38,  39,  38, 36,  36,  39, 34,  38,  39, 37, 40,  36,  39,  36,  38,  39,  48,  48,  48,  48,  50,  48,  48,  48,  48,  38,  48,  48,  48, 33,  43,  48,  48,  35,  45,  48,  48,  48,  48,  48,  48, 53,  50,  48,  48,  35]
box_plot_data=[value1,value2,value3,value4, value5,value6]
plt.boxplot(box_plot_data,patch_artist=True,labels=['0',']0-20[','[20,40[','[40,60[','[60-80[', '[80-100]'])
plt.ylim(0, 100)# Add title and axis names
#plt.title('NoTrace Recall % versus T->N % of error seeded',fontsize=15)
plt.ylabel('NoTrace Recall %',fontsize=15, weight='bold')
plt.xlabel('T->N % of error seeded',fontsize=15, weight='bold')
plt.savefig('./BoxPlotsPaper2IncompletenessSeedingV2/NoTraceRecallVsTtoNError')
plt.show()



value1=[33, 20, 25, 0, 0, 36, 46, 31, 47, 31, 25, 52, 50, 11, 5, 0, 57, 50, 33, 50, 100, 58, 50, 10, 0, 12, 0, 42, 39, 42, 80, 66, 28, 15, 6, 50, 40, 30, 0, 0, 22, 28, 25, 33, 0, 31, 33, 41, 0, 60, 46, 43, 0, 0, 37, 15, 32, 45, 33, 0, 0, 57, 29, 52, 20, 8, 44, 0, 0, 0, 0, 0, 0, 0, 0, 29, 23, 5]
value2=[57, 0, 57, 33, 43, 52, 5, 0, 39, 32, 52, 31, 11, 40, 20, 31, 0, 5, 33, 41, 47, 39, 25, 47, 11, 36, 52, 20, 5, 100, 42, 22, 31, 41, 39, 33, 28, 16, 22, 25, 0, 57, 50, 42, 39, 33, 0, 31, 33, 60, 58, 20, 42, 41, 57, 10, 12, 42, 30, 0, 44, 33, 50, 66, 0, 41, 60, 33, 100, 42, 6, 50, 47, 44, 80, 66, 28, 0, 0, 41, 33, 56, 20, 0, 15, 32, 44, 38, 29, 8, 0, 15, 44, 15, 32, 0, 32, 33, 57, 52, 43, 0, 57, 29, 52, 46, 57, 46, 43, 32, 0, 0, 61, 0, 0, 0, 23, 0, 0, 0, 38, 5, 0, 25, 29, 23, 0, 23, 0, 0, 0, 43]
value3=[0, 50, 22, 0, 0, 52, 20, 0, 53, 61, 30, 0, 34, 33, 37, 64, 15, 20, 43, 37, 75, 0, 50, 36, 50, 0, 50, 37, 33, 66, 33, 57, 62, 42, 50, 0, 21, 40, 36, 33, 0, 40, 0, 33, 47, 100, 58, 0, 0, 30, 0, 42, 71, 62, 100, 58, 0, 42, 80, 50, 40, 40, 0, 57, 50, 33, 100, 0, 13, 25, 60, 50, 33, 57, 62, 14, 0, 42, 42, 20, 50, 40, 0, 22, 57, 75, 50, 0, 0, 50, 30, 37, 0, 42, 0, 50, 42, 0, 60, 0, 47, 61, 16, 47, 47, 54, 47, 50, 0, 34, 47, 46, 32, 33, 0, 0, 61, 20, 0, 37, 0, 15, 45, 35, 20, 44, 52, 100, 44, 0, 16, 47, 15, 52, 33, 44, 12, 0, 0, 10, 0, 0, 43, 10, 0, 0, 50, 0, 0, 43, 0, 0, 0, 0, 0, 12, 0, 0, 20, 0, 15, 0, 0, 0, 50, 30, 0]
value4=[33, 40, 39, 52, 43, 40, 34, 38, 50, 50, 39, 0, 46, 71, 20, 46, 53, 36, 71, 0, 20, 43, 61, 22, 36, 0, 52, 40, 0, 71, 0, 26, 0, 43, 40, 0, 0, 51, 52, 57, 22, 25, 40, 0, 33, 50, 100, 42, 23, 0, 33, 21, 0, 21, 33, 57, 57, 25, 26, 33, 33, 25, 33, 25, 50, 26, 23, 41, 21, 0, 0, 42, 100, 58, 50, 39, 0, 33, 33, 25, 41, 60, 50, 25, 57, 25, 42, 25, 80, 66, 22, 57, 25, 50, 58, 21, 40, 40, 44, 42, 56, 15, 63, 100, 16, 33, 61, 60, 50, 47, 66, 35, 49, 56, 0, 0, 49, 0, 44, 15, 33, 16, 55, 0, 50, 32, 20, 0, 55, 35, 20, 44, 53, 50, 100, 61, 20, 16, 0, 50, 25, 46, 0, 0, 48, 0, 0, 31, 0, 25, 43, 46, 0, 12, 0, 0, 23]
value5=[41, 52, 67, 33, 30, 0, 40, 75, 0, 46, 39, 75, 61, 35, 50, 22, 60, 0, 40, 50, 38, 40, 20, 52, 71, 11, 25, 36, 39, 50, 85, 57, 58, 0, 39, 80, 57, 33, 50, 50, 22, 0, 50, 40, 42, 11, 85, 75, 42, 100, 58, 50, 50, 25, 42, 80, 50, 40, 44, 38, 50, 40, 57, 39, 42, 80, 57, 31, 42, 58, 60, 20, 28, 37, 57, 0, 33, 44, 57, 50, 57, 39, 80, 57, 50, 33, 50, 64, 0, 57, 36, 13, 50, 47, 50, 40, 42, 39, 40, 0, 25, 66, 50, 20, 39, 42, 40, 50, 71, 39, 50, 54, 41, 0, 55, 61, 33, 0, 66, 38, 20, 0, 0, 100, 20, 55, 0, 41, 0, 57, 55, 41, 0, 0, 55, 0, 0, 70, 33, 51, 35, 25, 50, 0, 0, 25, 25, 0, 50, 46, 30, 37, 0, 50, 0, 20]
value6=[20, 75, 85, 40, 46, 65, 85, 53, 45, 61, 33, 85, 0, 40, 61, 75, 0, 75, 78, 40, 40, 62, 61, 22, 0, 67, 52, 66, 40, 40, 33, 85, 62, 50, 40, 35, 57, 31, 40, 0, 71, 100, 60, 66, 50, 50, 57, 80, 66, 57, 66, 50, 58, 60, 71, 42, 39, 66, 33, 58, 60, 66, 50, 40, 0, 33, 52, 64, 66, 64, 50, 37, 57, 66, 36, 40, 40, 33, 66, 47, 44, 42, 42, 80, 66, 40, 71, 100, 58, 80, 31, 33, 44, 35, 57, 31, 50, 33, 33, 44, 50, 60, 75, 42, 100, 57, 36, 43, 66, 55, 53, 0, 100, 38, 0, 50, 70, 55, 33, 66, 59, 20, 16, 55, 51, 100, 41, 64, 0, 20, 52, 55, 51, 33, 41, 40, 59, 61, 0, 70, 0, 51, 30, 37, 0, 30, 30, 50, 50, 12, 0, 0, 75, 15, 0, 37, 0, 37, 75, 51, 25]
box_plot_data=[value1,value2,value3,value4, value5,value6]
plt.boxplot(box_plot_data,patch_artist=True,labels=['0',']0-20[','[20,40[','[40,60[','[60-80[', '[80-100]'])
plt.ylim(0, 100)# Add title and axis names
#plt.title('Trace Recall % versus N->T % of error seeded',fontsize=15)
plt.ylabel('Trace Recall %',fontsize=15, weight='bold')
plt.xlabel('N->T % of error seeded',fontsize=15, weight='bold')
plt.savefig('./BoxPlotsPaper2IncompletenessSeedingV2/TraceRecallVsNtoTError')
plt.show()

value1=[46, 52, 43, 52,  54, 51, 51, 48, 52, 49, 49, 50, 49, 54, 53,  53, 25, 25, 25, 24, 24, 25, 25, 23,  23, 22,  25, 23, 26, 24, 24, 24, 23, 19, 17, 25, 25, 22, 24,  23, 23, 23, 23, 24,  24, 19, 25, 25,  23, 25, 33, 32,  36,  39, 31, 33, 31, 33, 38,  38,  39, 36, 37, 37,  39,  37, 39, 38, 39,  39,  40, 40,  47,  50,  42,  48,  50,  48,  34,  41, 30, 41,  47,  47, 41, ]
value2=[28, 33, 30, 28, 42, 31, 50, 24, 26, 22, 39, 26, 27, 38, 51, 26, 34, 30, 41, 28, 36, 29, 30, 39, 30, 45, 34, 44, 49, 23, 18, 18, 14, 21, 25, 20, 21, 16, 23, 21, 21, 23, 19, 22, 25, 19, 17, 18, 22, 25, 23, 22, 23, 23, 23, 20, 21, 22, 20, 20, 20, 21, 20, 24, 19, 24, 20, 25, 23, 22, 16, 23, 14, 20, 23, 22, 23, 23, 19, 23, 23, 27, 20,  33, 23, 32, 22,  22, 31, 23, 28, 24, 32, 28, 31,  37, 20, 23, 26, 30, 27, 27, 22, 24, 34, 30, 27, 23,  24,  24, 21, 28, 22, 26, 19, 28, 32, 27, 25, 28,  21,  46, 36,  36, 28,  40, 36, 35, 30,  37,  31,  43, 29, 21, 34, 30, 30, 38,  43, 28, 19, 37,  45, 29,  42, 32,  38,  32, 25, ]
value3=[15, 20, 12, 24, 19, 16, 25, 13, 16, 19, 16, 20, 18, 13, 22, 13, 19, 13, 21, 18, 13, 26, 15, 14, 15, 22, 25, 24, 19, 17, 20, 21, 19, 16, 20, 14, 11, 19, 16, 12, 13, 13, 17, 14, 12, 19, 17, 15, 16, 18, 17, 13, 16, 13, 14, 21, 16, 20, 17, 18, 17, 15, 15, 18, 21, 13, 19, 17, 8, 12, 14, 17, 17, 18, 19, 15, 13, 21, 17, 12, 17, 13, 16, 13, 18, 10, 17, 18, 16, 18, 10, 18, 20, 15, 15, 17, 14, 12, 18, 19, 12, 16, 14, 23, 16, 17, 19, 14, 12, 10, 11,  18, 15, 15, 13, 21, 18, 13, 15, 21, 18, 15,  14, 21, 19, 14, 14,  17,  19, 16, 16,  14, 13,  16, 12, 21, 15,  13, 19, 14, 14, 17,  17, 21,  15, 9, 28, 12,  27, 33,  21, 22, 11, 15, 25, 30, 21, 25, 36, 10, 17,  31, 23, 11, 21, 24, 26,  26, 12,  23, 12, 19,  25, 25, 26, 26,  32, 18, 21, 21, 29, 16,  26, 19,  33, ]
value4=[7, 10, 11, 11, 13, 11, 7, 6, 9, 13, 11, 10, 13, 7, 16, 14, 8, 10, 10, 12, 12, 8, 11, 13, 11, 10, 14, 8, 11, 10, 11, 11, 9, 11, 6, 14, 9, 8, 12, 10, 9, 7, 7, 8, 13, 16, 7, 16, 9, 17, 12, 11, 11, 6, 13, 14, 14, 8, 8, 9, 11, 14, 9, 8, 11, 10, 8, 14, 7, 11, 13, 12, 14, 10, 10, 9, 12, 14, 11, 7, 12, 14, 9, 15, 8, 10, 8, 10, 10, 9, 14, 8, 9, 9, 12, 15, 16, 8, 9, 15, 7, 7, 4, 6, 9, 11, 11,  11,  8, 9, 8, 12, 9, 7,  9,  7, 11,  14,  8, 4, 11, 12, 7, 12, 7, 5, 11, 8, 6,  11, 12, 9, 11, 6,  9,  9, 8, 10, 8,  11, 10, 5,  9, 7, 10, 10, 10, 11, 7, 15, 19,  10, 21, 10,  6, 22,  25, 16, 10,  6,  25, 21, 17, 12, 17, 9, 12, 11, 16, 13, 26, 13, 1, ]
value5=[2, 6, 1, 6, 5, 4, 6, 2, 5, 2, 2, 2, 4, 6, 4, 4, 3, 4, 5, 1, 6, 3, 5, 6, 4, 4, 3, 6, 4, 3, 5, 11, 8, 6, 7, 9, 5, 4, 5, 7, 11, 2, 5, 5, 6, 9, 4, 3, 2, 4, 8, 7, 4, 4, 7, 10, 6, 6, 5, 6, 6, 7, 5, 8, 5, 9, 3, 4, 10, 4, 10, 8, 9, 7, 6, 5, 8, 5, 7, 7, 6, 7, 12, 5, 9, 2, 6, 8, 9, 9, 3, 5, 8, 5, 4, 5, 6, 8, 8, 7, 5, 5, 5, 5, 13, 6, 7, 9, 7, 4, 2, 2, 4, 4, 4,  5, 3, 3, 5, 4, 2,  3, 3,  3, 5, 5, 3,  3, 4, 5, 6, 2, 1, 4,  2, 2,  3, 4, 4, 4, 2, 5, 2, 4, 6,  2, 3, 4,  4, 7, 6, 8, 8, 6,  3, 12, 1, 10, 4, 3, 6, 7,  3, 7,  6,  10, 5,  2, 5, ]
value6=[1, 1, 0, 0, 2, 0, 0, 2, 1, 1, 1, 0, 2, 0, 0, 1, 1, 0, 0, 0, 3, 0, 0, 2, 2, 1, 1, 2, 0, 1, 1, 2, 0, 0, 2, 0, 3, 5, 2, 5, 0, 0, 5, 2, 2, 1, 1, 0, 3, 2, 2, 0, 5, 0, 3, 5, 3, 2, 3, 3, 4, 5, 3, 2, 2, 1, 4, 7, 2, 1, 6, 1, 1, 2, 2, 3, 1, 0, 1, 3, 1, 1, 0, 1, 3, 1, 3, 3, 0, 3, 1, 6, 6, 0, 0, 1, 6, 2, 3, 0, 6, 1, 2, 0, 4, 0, 2, 0, 1,  0,  2, 1,  2, 0, 0, 0, 2, 2, 1, 0, 0, 1,  1, 3, 0, 0, 2, 2, 1, 0,  0, 1, 1, 0, 1, 0, 0, 1, 0, 3, 8, 1, 1,  3, 2,  2,  5, 0, ]
box_plot_data=[value1,value2,value3,value4, value5,value6]
plt.boxplot(box_plot_data,patch_artist=True,labels=['0',']0-20[','[20,40[','[40,60[','[60-80[', '[80-100]'])
plt.ylim(0, 100)# Add title and axis names
#plt.title('NoTrace Recall % versus N->T % of error seeded',fontsize=15)
plt.ylabel('NoTrace Recall %',fontsize=15, weight='bold')
plt.xlabel('N->T % of error seeded',fontsize=15, weight='bold')
plt.savefig('./BoxPlotsPaper2IncompletenessSeedingV2/NoTraceRecallVsNtoTError')
plt.show()
