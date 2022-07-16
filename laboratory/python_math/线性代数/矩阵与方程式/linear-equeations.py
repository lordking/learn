#!/usr/bin/env /usr/local/bin/python3

# 1. 矩阵和方程组

#%% 1.1 利用回代法求解方程组
from sympy import symbols, simplify, solve
from common import log

## 定义方程组
# x1 - 3*x2 = 2
# 2*x2 = 6

x1, x2 = symbols('x1 x2')

expr1 = x1 - 3 * x2 - 2
expr2 = 2 * x2 - 6

equations = [expr1, expr2]

log.label('方程式:')
for k, v in enumerate(equations):
    log.process('%s = 0' % v)

## 回代法求解
# 从最后一行往上求解
log.label('回代法求解:')

fx = equations[1]
x = solve(fx, [x2])[0]
log.process('row2: x2 = %s' % x)

fx = equations[0]
fx = fx.subs({x2: x})
log.process('row1: %s = 0' % fx)

x1 = solve(fx, [x1])[0]
log.process('row1: x1 = %s' % x1)

#%% 1.2 通过几何关系观看是否有解
import matplotlib.pyplot as plt
import matplotlib
import numpy as np

## 定义方程组
# x1 + x2 = 4
# x1 - x2 = 2

## 绘制图形

# 设置字体
zhfont1 = matplotlib.font_manager.FontProperties(fname="./assets/fonts/SimHei.ttf") 

# 开始画图
plt.figure()

# 设置标题
plt.title("相交，有唯一解", fontproperties=zhfont1) 

# 画方程式1
x1 = np.linspace(-5, 5, 6)
x2 = 4 - x1
plt.plot(x1, x2, label='x1 + x2 = 4')

# 画方程式2
x1 = np.linspace(-5, 5, 6)
x2 = 2 + x1
plt.plot(x1, x2, label='x1 - x2 = 2')

# 设置绘制范围
plt.legend()
plt.xlim(-5, 5)
plt.ylim(-5, 5)

# 设置坐标轴的名称
plt.xlabel('x1')
plt.ylabel('x2')

# 画X轴的刻度,范围是(0,5),个数是6
plt.xticks(np.linspace(-5, 5, 6))
plt.yticks(np.linspace(-5, 5, 6))

# 绘制坐标轴
ax = plt.gca()
ax.spines['top'].set_color('none')
ax.spines['right'].set_color('none')
ax.spines['left'].set_position(('data',0))
ax.spines['bottom'].set_position(('data',0))

# 展现画图结果
plt.show()

#%% 1.3 通过几何关系观看是否有解
import matplotlib.pyplot as plt
import matplotlib
import numpy as np

## 定义方程组
#    x1 + 2*x2 = 4
# -2*x1 - 4*x2 = 2

## 绘制图形

# 设置字体
zhfont1 = matplotlib.font_manager.FontProperties(fname="./assets/fonts/SimHei.ttf") 

# 开始画图
plt.figure()

# 设置标题
plt.title("平行，无解", fontproperties=zhfont1) 

# 画方程式1
x1 = np.linspace(-5, 5, 6)
x2 = 2 - x1/2
plt.plot(x1, x2, label='x1 + 2*x2 = 4')

# 画方程式2
x1 = np.linspace(-5, 5, 6)
x2 = -1/2 - x1/2
plt.plot(x1, x2, label='-2*x1 - 4*x2 = 2')

# 设置绘制范围
plt.legend()
plt.xlim(-5, 5)
plt.ylim(-5, 5)

# 设置坐标轴的名称
plt.xlabel('x1')
plt.ylabel('x2')

# 画X轴的刻度,范围是(0,5),个数是6
plt.xticks(np.linspace(-5, 5, 6))
plt.yticks(np.linspace(-5, 5, 6))

# 绘制坐标轴
ax = plt.gca()
ax.spines['top'].set_color('none')
ax.spines['right'].set_color('none')
ax.spines['left'].set_position(('data',0))
ax.spines['bottom'].set_position(('data',0))

# 展现画图结果
plt.show()

#%% 1.4 通过几何关系观看是否有解
import matplotlib.pyplot as plt
import matplotlib
import numpy as np

## 定义方程组
#  2*x1 -   x2 =  3
# -4*x1 + 2*x2 = -6

## 绘制图形

# 设置字体
zhfont1 = matplotlib.font_manager.FontProperties(fname="./assets/fonts/SimHei.ttf") 

# 开始画图
plt.figure()

# 设置标题
plt.title("重合，无穷解", fontproperties=zhfont1) 

# 画方程式1
x1 = np.linspace(-5, 5, 6)
x2 = -3 + 2*x1
plt.plot(x1, x2, label='2*x1 - x2 = 3')

# 画方程式2
x1 = np.linspace(-5, 5, 6)
x2 = -3 + 2*x1
plt.plot(x1, x2, label='-4*x1 + 2*x2 = -6') 

# 设置绘制范围
plt.legend()
plt.xlim(-5, 5)
plt.ylim(-5, 5)

# 设置坐标轴的名称
plt.xlabel('x1')
plt.ylabel('x2')

# 画X轴的刻度,范围是(0,5),个数是6
plt.xticks(np.linspace(-5, 5, 6))
plt.yticks(np.linspace(-5, 5, 6))

# 绘制坐标轴
ax = plt.gca()
ax.spines['top'].set_color('none')
ax.spines['right'].set_color('none')
ax.spines['left'].set_position(('data',0))
ax.spines['bottom'].set_position(('data',0))

# 展现画图结果
plt.show()
