#----------------------------------------------------------------
# Generated CMake target import file.
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "ApproxMVBB::Core" for configuration ""
set_property(TARGET ApproxMVBB::Core APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
set_target_properties(ApproxMVBB::Core PROPERTIES
  IMPORTED_LOCATION_NOCONFIG "${_IMPORT_PREFIX}/lib/libApproxMVBB.so.2.1.1"
  IMPORTED_SONAME_NOCONFIG "libApproxMVBB.so.2.1.1"
  )

list(APPEND _IMPORT_CHECK_TARGETS ApproxMVBB::Core )
list(APPEND _IMPORT_CHECK_FILES_FOR_ApproxMVBB::Core "${_IMPORT_PREFIX}/lib/libApproxMVBB.so.2.1.1" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
