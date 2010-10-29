# Find GLTools - GLTools handling module for CMake
#
# This module defines:
#
# GLTOOLS_FOUND             - True if GLTools library is found
# GLTOOLS_LIBRARY           - GLTools static library
# GLTOOLS_INCLUDE_DIR       - Include dir
#

if(GLTOOLS_LIBRARY AND GLTOOLS_INCLUDE_DIR)

    set(GLTOOLS_FOUND TRUE)

else()

    # Static library
    find_library(GLTOOLS_LIBRARY gltools)

    # Include dir
    find_path(GLTOOLS_INCLUDE_DIR
        NAMES GLTools.h
    )

    include(FindPackageHandleStandardArgs)
    find_package_handle_standard_args("GLTools" DEFAULT_MSG
        GLTOOLS_LIBRARY
        GLTOOLS_INCLUDE_DIR
    )

endif()
