# 通过代码学习数学

## 1. 环境安装

安装python 3
```
https://www.python.org/downloads/release/python-372/
```

安装PIP
```shell
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py

python3 get-pip.py
```

安装数学库
```
pip install numpy
pip install scipy
pip install Matplotlib
pip install sympy
```
在Visual Code中安装Python插件

1. 打开`Extensions`->输入`Python`->选择Python插件->安装。
2. `Shift`+`Command`+`p` 打开`Command Palette`
3. `Python:selector Interpretor` 选择python3

## 2. 开发

目前使用`Jupyter notebook`开发，VS Code和Python都默认已经安装。

在源代码中直接加入如下符号，就可以自动调用`Juper notebook`

```python
#%%
```

具体使用，可以访问如下地址：

<https://code.visualstudio.com/docs/python/jupyter-support>

使用`Jupyter notebook`注意事项

- 修改了common下的文件，必须要重启IPython内核。在VS Code里面的`Python Interactive`,点击重启按钮(`Restart IPython kernel`)！！！

## 4. 数学内容

- 数学基础 `basic`
  - 一元一次方程式
  - 一元二次方程式
  - 二元一次方程式
- 线性代数 `linear-algebra`
  - 矩阵与方程组 `1_matrix_equations`
- 微积分
- 概率论
- 博弈论
- 其他数学

  - 逻辑斯蒂算法(Logistics Map)
- 机器学习
