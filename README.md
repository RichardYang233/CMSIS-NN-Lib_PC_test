# README

### 概述

本仓库用于在 **PC 平台** 上测试 [CMSIS-NN](https://github.com/ARM-software/CMSIS-NN) 库，内容包括：

- CMSIS-NN 源码及其 cmake 生成的 静态链接库

+ 在 PC 上运行的测试文件

### 文件结构

| 文件名          | 描述                             |
| --------------- | -------------------------------- |
| CMSIS-NN        | CMSIS-NN 源码及 CMake 配置       |
| build           | 生成的静态链接库 `libcmsis-nn.a` |
| makefile        |                                  |
| main.c & main.h | 一个简单的测试程序               |



---

### 使用方法

**1、生成静态链接库（仓库内已生成）**

依赖：

+ CMake
+ VSCode 插件
  + CMake
  + CMake Language Support
  + CMake Tools

生成流程：

1. 在 `CMSIS-NN\Source\CMakeLists.txt` 中管理宏定义

2. VSCode 中使用快捷键：`Ctrl + Shift + P`，执行选项 **CMake：Config**，选择 **`CMSIS-NN/CMakeLists.txt`**，等待生成 **.\build** 文件

3. 点击左下角 `生成` 按钮，生成的库文件将位于 `./build/libcmsis-nn.a`

> ⚠️**注意**：路径不要有中文

**2、运行测试程序**

```makefile
make
```
