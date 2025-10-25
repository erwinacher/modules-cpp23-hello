add_library(foo_project_module_3)
add_library(foo_project::module_3 ALIAS foo_project_module_3)

target_sources(foo_project_module_3
    PUBLIC
        FILE_SET CXX_MODULES FILES
            module_3.cxx
)

