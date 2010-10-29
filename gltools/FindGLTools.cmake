# Find GLTools - GLTools handling module for CMake
#
# This module defines:
#
# GLTOOLS_FOUND             - True if GLTools library is found
# GLTOOLS_LIBRARY           - GLTools static library
# GLTOOLS_INCLUDE_DIR       - Include dir
#

find_package(GLEW REQUIRED)

# Static library
find_library(GLTOOLS_LIBRARY gltools)

# Include dir
find_path(GLTOOLS_INCLUDE_DIR
    NAMES GLTools.h
)

# Add GLEW include dir to GLTools include dir too
set(GLTOOLS_INCLUDE_DIR ${GLTOOLS_INCLUDE_DIR} ${GLEW_INCLUDE_DIR})

include(FindPackageHandleStandardArgs)
find_package_handle_standard_args("GLTools" DEFAULT_MSG
    GLTOOLS_LIBRARY
    GLTOOLS_INCLUDE_DIR
)
