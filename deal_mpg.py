import pandas as pd
from pandas import Series,DataFrame
import matplotlib.pyplot as plt
mpgs = pd.read_csv('./mpg.csv')
print(mpgs)
print(mpgs.describe())
print(mpgs.info())
#mpgs.plot(kind = 'scatter',x = 'horsepower',y = 'acceleration')
#plt.show()

mpgs['displacement'] = mpgs['displacement']/(mpgs['displacement'] + mpgs['weight'])
mpgs['displacement'].hist()
mpgs.hist()
plt.show()