add_library(foo_project_module_2)
add_library(foo_project::module_2 ALIAS foo_project_module_2)

target_sources(foo_project_module_2
    PUBLIC
        FILE_SET CXX_MODULES FILES
            module_2.cxx
)

