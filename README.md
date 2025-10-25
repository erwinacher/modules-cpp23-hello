# C++23 Modules — Hello World

A minimal working example of **C++23 modules** built with **GCC 15.2**, **CMake 3.28**, and **Ninja 1.13**.
No headers. No includes. Just `import foo;` and run.

Source article: https://www.kitware.com/import-cmake-the-experiment-is-over/

## Build

```bash
# Configure and build
CXX=/usr/local/gcc-15.2/bin/g++  \
CC=/usr/local/gcc-15.2/bin/gcc   \
cmake -GNinja ..
ninja -v
```

## Run

```
./hello
```

## Toolchain used
- CMake: 3.28.3
- Ninja: 1.13.1
- GCC: 15.2.0

## Expected output
<img width="1550" height="741" alt="image" src="https://github.com/user-attachments/assets/a1e50a13-65e4-4d3b-99e2-27929ccc34e6" />

