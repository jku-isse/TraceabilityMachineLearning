import numpy as np
import matplotlib.pyplot as plt

# data to plot
n_groups = 5
means_frank = (68.26, 62.50, 61.54, 56.25, 77.42)
means_guido = (75.81, 64.96, 87.50, 67.80, 54.55)

# create plot
fig, ax = plt.subplots()
index = np.arange(n_groups)
bar_width = 0.35
opacity = 0.8

rects1 = plt.bar(index, means_frank, bar_width,
alpha=opacity,
color='b',
label='Executed')

rects2 = plt.bar(index + bar_width, means_guido, bar_width,
alpha=opacity,
color='g',
label='Parsed')

plt.xlabel('Method Call Type')
plt.ylabel('T Precision Mixed')
plt.title('T precision versus method call type')
plt.xticks(index + bar_width, ('chess', 'gantt', 'itrust', 'jhotdraw', 'vod'))
plt.legend()

plt.tight_layout()
plt.show()






###########################################################
means_frank = (87.03, 99.78, 100, 99.03, 97.40)
means_guido = (94.73, 99.85, 100, 99.65, 95.40)




# create plot
fig, ax = plt.subplots()
index = np.arange(n_groups)
bar_width = 0.35
opacity = 0.8

rects1 = plt.bar(index, means_frank, bar_width,
alpha=opacity,
color='b',
label='Executed')

rects2 = plt.bar(index + bar_width, means_guido, bar_width,
alpha=opacity,
color='g',
label='Parsed')

plt.xlabel('Method Call Type')
plt.ylabel('N Precision Mixed')
plt.title('N precision versus method call type')
plt.xticks(index + bar_width, ('chess', 'gantt', 'itrust', 'jhotdraw', 'vod'))
plt.legend()

plt.tight_layout()
plt.show()
###########################################################
means_frank = (80.51, 87.72, 100, 75, 92.31)
means_guido = (87.85, 92.71, 100, 95.86, 60)




# create plot
fig, ax = plt.subplots()
index = np.arange(n_groups)
bar_width = 0.35
opacity = 0.8

rects1 = plt.bar(index, means_frank, bar_width,
alpha=opacity,
color='b',
label='Executed')

rects2 = plt.bar(index + bar_width, means_guido, bar_width,
alpha=opacity,
color='g',
label='Parsed')

plt.xlabel('Method Call Type')
plt.ylabel('T Recall Mixed')
plt.title('T Recall versus method call type')
plt.xticks(index + bar_width, ('chess', 'gantt', 'itrust', 'jhotdraw', 'vod'))
plt.legend()

plt.tight_layout()
plt.show()

###########################################################
means_frank = (77.74, 99.06, 95.41, 97.77, 91.46)
means_guido = (88.62, 99.01, 98.31, 96.28, 94.32)




# create plot
fig, ax = plt.subplots()
index = np.arange(n_groups)
bar_width = 0.35
opacity = 0.8

rects1 = plt.bar(index, means_frank, bar_width,
alpha=opacity,
color='b',
label='Executed')

rects2 = plt.bar(index + bar_width, means_guido, bar_width,
alpha=opacity,
color='g',
label='Parsed')

plt.xlabel('Method Call Type')
plt.ylabel('N Recall Mixed')
plt.title('N Recall versus method call type')
plt.xticks(index + bar_width, ('chess', 'gantt', 'itrust', 'jhotdraw', 'vod'))
plt.legend()

plt.tight_layout()
plt.show()