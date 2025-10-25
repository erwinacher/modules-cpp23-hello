add_library(foo_project_module_1)
add_library(foo_project::module_1 ALIAS foo_project_module_1)

target_sources(foo_project_module_1
  PUBLIC
    FILE_SET CXX_MODULES FILES
      module_1.cxx
)

