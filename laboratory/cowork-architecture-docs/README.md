## Cowork Architecture Documents

协作平台架构设计文档。本架构设计文档采用[Structurizer Lite](https://structurizr.com/help/lite)驱动。

## 安装说明

1. **安装前先安装`docker`**

2. **下载本文档**

```bash
$ git clone git@gitlab.gz.cvte.cn:cowork/cowork-architecture-docs.git 
```

3. 安装 `Structurizr Lite`

​	注意替换`PATH`的完整路径是`cowork-architecture-docs/dsl`的路径

```bash
$ docker pull structurizr/lite
$ docker docker run -d --name structurizer --rm -p 0.0.0.0:8003:8080 -v PATH:/usr/local/structurizr structurizr/lite
```



## 使用说明

通过浏览器访问http://localhost:8003 打开文档。

### 修改DSL文件

如果您对 DSL 文件进行更改并保存它，您应该会在刷新 Web 浏览器时看到该更改立即反映。

### 添加文档

在`docs`子目录下添加Markdown文档。使用`![](embed:DiagramName)`引用图形。

```markdown
## Context

Here is a description of my software system...

![](embed:DiagramName)
```

`DiagramName`和`docs`的定义参考如下内容

```DSL
workspace {

    model {
        user = person "User"
        softwareSystem = softwareSystem "Software System" {
            !docs ../docs
        }

        user -> softwareSystem "Uses"
    }

    views {
        systemContext softwareSystem "DiagramName" {
            include *
            autoLayout
        }

        theme default
    }

}
```

## 参考文档

- [DSL语言参考说明](https://github.com/structurizr/dsl/blob/master/docs/language-reference.md)
- [Structurizer DSL Cookbook](https://github.com/structurizr/dsl/tree/master/docs/cookbook)
- [Structurizr DSL 样例](https://github.com/structurizr/examples/tree/main/dsl)