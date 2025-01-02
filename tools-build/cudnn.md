## cudnn 安装

#### 下载对应的cudnn
[cudnn](https://developer.nvidia.com/cudnn-downloads)

```bash
tar -xvf ...tar.xz
```

将解压后对应文件内 include 和 lib 文件夹内的所有文件复制到cuda目录下即可


## 安装cuda-toolkit
(CUDA Toolkit)[https://developer.nvidia.com/cuda-downloads?target_os=Linux]

```bash
# 验证
nvcc -V

# 输出
nvcc: NVIDIA (R) Cuda compiler driver
Copyright (c) 2005-2024 NVIDIA Corporation
Built on Thu_Sep_12_02:18:05_PDT_2024
Cuda compilation tools, release 12.6, V12.6.77
Build cuda_12.6.r12.6/compiler.34841621_0

```