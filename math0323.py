import numpy as np
import pandas as pd
import matplotlib.pyplot as plt

data = {
    'name':['张三','李四','王五','赵六'],
    'math':['40','80','99','78']
}

df = pd.DataFrame(data)
print(df)
#plt.plot(df['name'],df['math'])
#plt.show()
plt.rcParams['font.sans-serif']=['simhei']
#plt.plot(df.index,df['name'])
plt.plot(df.index,df['name'],color='red',linestyle='--',marker='D')
#plt.plot(df.index,df['name'],color='red',linestyle='--',marker='D')
plt.grid(color = 'red',alpha = 1)
plt.show()

