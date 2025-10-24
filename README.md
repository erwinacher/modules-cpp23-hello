# 🧠 C++23 Modules — Hello World

A minimal working example of **C++23 modules** built with **GCC 15.2**, **CMake 3.28**, and **Ninja 1.13**.
No headers. No includes. Just `import foo;` and run.

---

## 🔧 Build

```bash
# Configure and build
CXX=/usr/local/gcc-15.2/bin/g++  \
CC=/usr/local/gcc-15.2/bin/gcc   \
cmake -GNinja ..
ninja -v
```

## Run
```
# C++23 Modules — Hello World

A minimal working example of **C++23 modules** built with **GCC 15.2**, **CMake 3.28**, and **Ninja 1.13**.
No headers. No includes. Just `import foo;` and run.

---

## Build

```
./hello
```

## Tollchain used
|CMake|3.28.3|
|Ninja|1.13.1|
|GCC|15.2.0|