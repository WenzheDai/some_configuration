## OpenCV Build Linux

---
[opencv-git](https://github.com/opencv/opencv)
[opencv_contrib-git](https://github.com/opencv/opencv_contrib)

1. 下载压缩包

    - 下载opencv 和 OpenCV_contrib压缩包
    - [opencv](https://github.com/opencv/opencv/releases)
    - [opencv_contrib](https://github.com/opencv/opencv_contrib/tags)
    - opencv 和 opencv_contrib版本一致

2. 解压
3. 新建文件夹 build
```bash
make build
touch cmake.sh

# 文件目录结构
.
├── build
├── cmake.sh
├── opencv-4.10.0
├── opencv_contrib-4.10.0
└── tar-package
```
4. 构建
```bash
# cmake.sh
cmake ../opencv-4.10.0/ -D CMAKE_BUILD_TYPE=Release -D BUILD_opencv_python_bindings_generator=FALSE \
    -D BUILD_JAVA=FALSE \
    -D BUILD_opencv_java_bindings_generator=FALSE \
    -D BUILD_opencv_js_bindings_generator=FALSE \
    -D BUILD_PERF_TESTS=FALSE \
    -D BUILD_TESTS=FALSE \
    -D OPENCV_TEST_DNN_TIMVX=FALSE \
    -D OPENCV_EXTRA_MODULES_PATH=../opencv_contrib-4.10.0/modules \
    -D BUILD_opencv_world=True
```
```bash
cd build && make -j4

# install 只是复制的过程
sudo make install

## install specified folder
sudo make install DESTDIR = [folder]
```