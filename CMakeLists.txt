cmake_minimum_required(VERSION 3.28)
project(std_module_example CXX)

set(CMAKE_CXX_EXTENSIONS OFF)
set(CMAKE_CXX_STANDARD 23)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Add submodules
add_subdirectory(module_1)
add_subdirectory(module_2)
add_subdirectory(module_3)

add_library(foo)
target_sources(foo
  PUBLIC
    FILE_SET CXX_MODULES FILES
      foo.cxx
)

add_executable(hello main.cxx)
target_link_libraries(hello 
    PRIVATE
    foo_project::module_1
    foo_project::module_2
    foo_project::module_3
    foo
)
