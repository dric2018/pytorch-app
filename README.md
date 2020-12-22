# pytorch-app
A minimal example of machine learning with pytorch using its C++ API [(original page)](https://pytorch.org/cppdocs/installing.html).

# Installation 

## 1- Dowload the version of the C++ API you want:
> CPU : https://download.pytorch.org/libtorch/cpu/libtorch-cxx11-abi-shared-with-deps-1.7.1%2Bcpu.zip


> GPU (cuda 11.0) : https://download.pytorch.org/libtorch/cu110/libtorch-cxx11-abi-shared-with-deps-1.7.1%2Bcu110.zip

```
# Example for GPU support
$ wget https://download.pytorch.org/libtorch/cu110/libtorch-cxx11-abi-shared-with-deps-1.7.1%2Bcu110.zip
```
## 2- Then unzip the compressed file
```
# Example for GPU support
$ unzip libtorch-cxx11-abi-shared-with-deps-1.7.1%2Bcu110.zip
```
## 3- Create a folder test test installation
```
# here we called our folder app-1 and it is organized like following:

app-1/               # root directory
|- build/    
|- app-1.cpp
|- CMakeLists.txt

# If you do not already have Cmake installed: you should install it before doig next steps.
You could run the above command lines to install it :

$ sudo apt update
$ sudo apt-get install cmake
```

* Your CMakeLists.txt file should look like following:

```
cmake_minimum_required(VERSION 3.0 FATAL_ERROR)
project(app-1)

find_package(Torch REQUIRED)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} ${TORCH_CXX_FLAGS}")

add_executable(app-1 app-1.cpp)
target_link_libraries(app-1 "${TORCH_LIBRARIES}")
set_property(TARGET app-1 PROPERTY CXX_STANDARD 14)

# The following code block is suggested to be used on Windows.
# According to https://github.com/pytorch/pytorch/issues/25457,
# the DLLs need to be copied to avoid memory errors.
if (MSVC)
  file(GLOB TORCH_DLLS "${TORCH_INSTALL_PREFIX}/lib/*.dll")
  add_custom_command(TARGET app-1
                     POST_BUILD
                     COMMAND ${CMAKE_COMMAND} -E copy_if_different
                     ${TORCH_DLLS}
                     $<TARGET_FILE_DIR:app-1>)
endif (MSVC)


```

* And your app-1.cpp file like following:

```cpp
#include <torch/torch.h>
#include <iostream>
using namespace std;

int main() {
  torch::Tensor tensor = torch::rand({2, 3});
  cout << tensor << endl;
}
```

## 4- Move to app-1/build/ and rund:
```
$ cmake -DCMAKE_PREFIX_PATH=< /absolute/path/to/libtorch > ..


# Do not forget the two (02) dots !!!
```

**NB** : `/absolute/path/to/libtorch` is the absolute path to your extracted download (libtorch)
e.g : `/home/workstation/dev/libtorch`

## 5- Run:
```
$ cmake --build . --config Release



# You should obtain outputs like these:
# -- The C compiler identification is GNU 9.3.0
# -- The CXX compiler identification is GNU 9.3.0
# -- Check for working C compiler: /usr/bin/cc
# -- Check for working C compiler: /usr/bin/cc -- works
# -- Detecting C compiler ABI info
# -- Detecting C compiler ABI info - done
# -- Detecting C compile features
# -- Detecting C compile features - done
# -- Check for working CXX compiler: /usr/bin/c++
# -- Check for working CXX compiler: /usr/bin/c++ -- works
# -- Detecting CXX compiler ABI info
# -- Detecting CXX compiler ABI info - done
# -- Detecting CXX compile features
# -- Detecting CXX compile features - done
# -- Looking for pthread.h
# -- Looking for pthread.h - found
# -- Performing Test CMAKE_HAVE_LIBC_PTHREAD
# -- Performing Test CMAKE_HAVE_LIBC_PTHREAD - Failed
# -- Looking for pthread_create in pthreads
# -- Looking for pthread_create in pthreads - not found
# -- Looking for pthread_create in pthread
# -- Looking for pthread_create in pthread - found
# -- Found Threads: TRUE  
# -- Found CUDA: /usr (found version "10.1") 
# -- Caffe2: CUDA detected: 10.1
# -- Caffe2: CUDA nvcc is: /usr/bin/nvcc
# -- Caffe2: CUDA toolkit directory: /usr
# -- Caffe2: Header version is: 10.1
# -- Found CUDNN: /usr/lib/x86_64-linux-gnu/libcudnn.so  
# -- Found cuDNN: v7.6.5  (include: /usr/include, library: /usr/lib/x86_64-linux-gnu/libcudnn.so)
# -- Autodetected CUDA architecture(s):  6.1
# -- Added CUDA NVCC flags for: -gencode;arch=compute_61,code=sm_61
# -- Found Torch: /home/zeusdric/Dric/libtorch/lib/libtorch.so  
# -- Configuring done
# -- Generating done
# -- Build files have been written to: /home/zeusdric/Dric/devs/ml-dl/cpp/app-1/build
```

_If PyTorch was installed via conda or pip, CMAKE_PREFIX_PATH can be queried using torch.utils.cmake_prefix_path variable. In that case CMake configuration step would look something like follows:_


```
$ cmake -DCMAKE_PREFIX_PATH=`python -c 'import torch;print(torch.utils.cmake_prefix_path)'`

```

## 6- Last thing is to run the C++ built code in app-1/build:
```
$ ./app-1
``` 
