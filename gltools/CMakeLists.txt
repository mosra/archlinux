cmake_minimum_required(VERSION 2.6)

set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} ${CMAKE_CURRENT_SOURCE_DIR})
find_package(OpenGL)
find_package(GLEW)

include_directories(${CMAKE_CURRENT_SOURCE_DIR}/include
                    ${GLEW_INCLUDE_DIR})

add_library(gltools SHARED
    src/GLBatch.cpp
    src/GLShaderManager.cpp
    src/GLTools.cpp
    src/GLTriangleBatch.cpp
    src/math3d.cpp
)
target_link_libraries(gltools ${GLEW_LIBRARY} ${OPENGL_gl_LIBRARY})

install(TARGETS gltools DESTINATION ${CMAKE_INSTALL_PREFIX}/lib)
install(FILES FindGLEW.cmake FindGLTools.cmake DESTINATION ${CMAKE_ROOT}/Modules)
install(DIRECTORY include/ DESTINATION ${CMAKE_INSTALL_PREFIX}/include
                 FILES_MATCHING PATTERN "*.h"
                 PATTERN "*/GL" EXCLUDE)
