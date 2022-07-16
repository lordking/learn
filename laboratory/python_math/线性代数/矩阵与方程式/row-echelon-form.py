# 2. 行阶梯形

#%% 2.1 增广矩阵与行阶梯矩阵
import numpy as np
from common import log

# 方程式一
#   x1 + 2*x2 - 2*x3 = 1
# 2*x1 + 5*x2 +   x3 = 9
#   x1 + 3*x2 + 4*x3 = 9
# 方程式二
#   x1 + 2*x2 - 2*x3 =  9
# 2*x1 + 5*x2 +   x3 =  9
#   x1 + 3*x2 + 4*x3 = -2

# 定义矩阵
A = np.array([[1,2,-2],[2,5,1],[1,3,4]])
log.label('方程式的系数矩阵')
log.process(A)

log.label('方程式的右端常数')
b = np.array([[1,9,9], [9,9,-2]])
log.process(b)

# 合并成增广矩阵
c = np.column_stack((A,b[0]))
c = np.column_stack((c,b[1]))
log.label('合并成增广矩阵')
log.process(c)

# 通过消元法获得最简行阶梯矩阵
log.label('消元最后行')
c[2] = c[2] - c[0]
log.process(c)

log.label('消元第2行')
c[1] = c[1] - 2*c[0]
log.process(c)

log.label('消元最后行')
c[2] = c[2] - c[1]
log.process(c)

log.label('消元第2行')
c[1] = c[1] - 5*c[2]
log.process(c)

log.label('消元第1行,获得最简行阶梯矩阵')
c[0] = c[0] - 2*c[1] + 2*c[2]
log.process(c)

# 取出最后两列
log.label('从最简行阶段矩阵即可获得唯一解')
log.process("方程式一解集：%s" % c[:,3])
log.process("方程式二解集：%s" % c[:,4])

#%% 2.1 增广矩阵与行阶梯矩阵

# 交通流量
# 380 + x1 = 430 + x2
# 540 + x2 = x3 + 420
# 470 + x3 = 400 + 420
# 420 + 450 = x1 + x4
# 转换后
# x1 - x2           = 430 - 380 = 50
#      x2 - x3      = 420 - 540 = -120
#           x3      = 400 + 420 - 470 = 350 
# x1           + x4 = 420 + 450 = 870

import numpy as np
from common import log

# 定义矩阵
A = np.array([[1,-1,0,0],[0,1,-1,0],[0,0,1,0], [1,0,0,1]])
log.label('方程式的系数矩阵')
log.process(A)

log.label('方程式的右端常数')
b = np.array([50, -120, 350, 870])
log.process(b)

# 合并成增广矩阵
c = np.column_stack((A,b))
log.label('合并成增广矩阵')
log.process(c)

# 通过消元法获得最简行阶梯矩阵
log.label('消元最后一行')
c[3] = c[3]-c[0]
log.process(c)

log.label('消元最后一行')
c[3] = c[3]-c[1]
log.process(c)

log.label('消元最后一行')
c[3] = c[3]-c[2]
log.process(c)

log.label('消元第2行')
c[1] = c[1]+c[2]
log.process(c)

log.label('消元第1行')
c[0] = c[0]+c[1]
log.process(c)

# 取出最后一列
log.label('从最简行阶段矩阵即可获得唯一解')
log.process("解集：%s" % c[:,4])

#%%
