## OnnxRuntime Build

---

[OnnxRuntime build link](https://onnxruntime.ai/docs/build/inferencing.html)


```bash
 git clone --recursive https://github.com/Microsoft/onnxruntime.git
 cd onnxruntime

 # Windows
 .\build.bat --config RelWithDebInfo --build_shared_lib --parallel --compile_no_warning_as_error --skip_submodule_sync

# Linux
./build.sh --config RelWithDebInfo --build_shared_lib --parallel --compile_no_warning_as_error --skip_submodule_sync

cd build/Linux/RelWithDebInfo/
sudo make install
## install specified folder
sudo make install DESTDIR = [folder]
```
