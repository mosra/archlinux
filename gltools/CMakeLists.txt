cmake_minimum_required(VERSION 2.6)

include_directories(${CMAKE_CURRENT_SOURCE_DIR}/include
                    /usr/include/GL)

add_library(gltools STATIC
    src/GLBatch.cpp
    src/GLShaderManager.cpp
    src/GLTools.cpp
    src/GLTriangleBatch.cpp
    src/math3d.cpp
)

install(TARGETS gltools DESTINATION ${CMAKE_INSTALL_PREFIX}/lib)
install(FILES FindGLTools.cmake DESTINATION ${CMAKE_ROOT}/Modules)
install(DIRECTORY include/ DESTINATION ${CMAKE_INSTALL_PREFIX}/include
                 FILES_MATCHING PATTERN "*.h"
                 PATTERN "*/GL" EXCLUDE)
