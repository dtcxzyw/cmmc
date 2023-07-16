cmake_minimum_required(VERSION 3.13)
project(libmimalloc C CXX)

set(CMAKE_C_STANDARD 11)
set(CMAKE_CXX_STANDARD 17)

option(MI_PADDING           "Enable padding to detect heap block overflow (always on in DEBUG or SECURE mode, or with Valgrind/ASAN)" OFF)
option(MI_XMALLOC           "Enable abort() call on memory allocation failure by default" OFF)
option(MI_SHOW_ERRORS       "Show error and warning messages by default (only enabled by default in DEBUG mode)" OFF)
option(MI_USE_CXX           "Use the C++ compiler to compile the library (instead of the C compiler)" OFF)
option(MI_LOCAL_DYNAMIC_TLS "Use slightly slower, dlopen-compatible TLS mechanism (Unix)" OFF)
option(MI_BUILD_STATIC      "Build static library" ON)
option(MI_SKIP_COLLECT_ON_EXIT "Skip collecting memory on program exit" OFF)
option(MI_NO_PADDING        "Force no use of padding even in DEBUG mode etc." OFF)

include(CheckIncludeFiles)
include(GNUInstallDirs)

set(mi_sources
    src/alloc.c
    src/alloc-aligned.c
    src/alloc-posix.c
    src/arena.c
    src/bitmap.c
    src/heap.c
    src/init.c
    src/options.c
    src/os.c
    src/page.c
    src/random.c
    src/segment.c
    src/segment-map.c
    src/stats.c
    src/prim/prim.c)

set(mi_cflags "")
set(mi_libraries "")

# -----------------------------------------------------------------------------
# Convenience: set default build type depending on the build directory
# -----------------------------------------------------------------------------

message(STATUS "")
# -----------------------------------------------------------------------------
# Process options
# -----------------------------------------------------------------------------

if (MI_SKIP_COLLECT_ON_EXIT)
  message(STATUS "Skip collecting memory on program exit (MI_SKIP_COLLECT_ON_EXIT=ON)")
  list(APPEND mi_defines MI_SKIP_COLLECT_ON_EXIT=1)
endif()

if(MI_NO_PADDING)
  message(STATUS "Suppress any padding of heap blocks (MI_NO_PADDING=ON)")
  list(APPEND mi_defines MI_PADDING=0)
else()
  if(MI_PADDING)
    message(STATUS "Enable explicit padding of heap blocks (MI_PADDING=ON)")
    list(APPEND mi_defines MI_PADDING=1)
  endif()
endif()

if(MI_XMALLOC)
  message(STATUS "Enable abort() calls on memory allocation failure (MI_XMALLOC=ON)")
  list(APPEND mi_defines MI_XMALLOC=1)
endif()

if(MI_SHOW_ERRORS)
  message(STATUS "Enable printing of error and warning messages by default (MI_SHOW_ERRORS=ON)")
  list(APPEND mi_defines MI_SHOW_ERRORS=1)
endif()

if(MI_USE_CXX)
  message(STATUS "Use the C++ compiler to compile (MI_USE_CXX=ON)")
  set_source_files_properties(${mi_sources} PROPERTIES LANGUAGE CXX )
  set_source_files_properties(src/static.c test/test-api.c test/test-api-fill test/test-stress PROPERTIES LANGUAGE CXX )
  if(CMAKE_CXX_COMPILER_ID MATCHES "AppleClang|Clang")
    list(APPEND mi_cflags -Wno-deprecated)
  endif()
  if(CMAKE_CXX_COMPILER_ID MATCHES "Intel" AND NOT CMAKE_CXX_COMPILER_ID MATCHES "IntelLLVM")
    list(APPEND mi_cflags -Kc++)
  endif()
endif()

# Compiler flags
if(CMAKE_C_COMPILER_ID MATCHES "AppleClang|Clang|GNU")
  list(APPEND mi_cflags -Wall -Wextra -Wno-unknown-pragmas -fvisibility=hidden)
  if(NOT MI_USE_CXX)
    list(APPEND mi_cflags -Wstrict-prototypes)
  endif()
  if(CMAKE_C_COMPILER_ID MATCHES "AppleClang|Clang")
    list(APPEND mi_cflags -Wpedantic -Wno-static-in-inline)
  endif()
endif()

if(CMAKE_C_COMPILER_ID MATCHES "AppleClang|Clang|GNU|Intel" AND NOT CMAKE_SYSTEM_NAME MATCHES "Haiku")
  if(MI_LOCAL_DYNAMIC_TLS)
    list(APPEND mi_cflags -ftls-model=local-dynamic)
  else()
    list(APPEND mi_cflags -ftls-model=initial-exec)
  endif()
endif()

# extra needed libraries
set(pc_libraries "")
find_library(MI_LIBPTHREAD pthread)
if (MI_LIBPTHREAD)
  list(APPEND mi_libraries ${MI_LIBPTHREAD})
  set(pc_libraries "${pc_libraries} -pthread")
endif()
find_library(MI_LIBRT rt)
if(MI_LIBRT)
  list(APPEND mi_libraries ${MI_LIBRT})
  set(pc_libraries "${pc_libraries} -lrt")
endif()
find_library(MI_LIBATOMIC atomic)
if (MI_LIBATOMIC)
  list(APPEND mi_libraries ${MI_LIBATOMIC})
  set(pc_libraries "${pc_libraries} -latomic")
endif()

# -----------------------------------------------------------------------------
# Install and output names
# -----------------------------------------------------------------------------

set(mi_basename "mimalloc")
string(TOLOWER "${CMAKE_BUILD_TYPE}" CMAKE_BUILD_TYPE_LC)
if(NOT(CMAKE_BUILD_TYPE_LC MATCHES "^(release|relwithdebinfo|minsizerel|none)$"))
  set(mi_basename "${mi_basename}-${CMAKE_BUILD_TYPE_LC}") #append build type (e.g. -debug) if not a release version
endif()

if(MI_BUILD_STATIC)
  list(APPEND mi_build_targets "static")
endif()

message(STATUS "")
message(STATUS "Library base name: ${mi_basename}")
message(STATUS "Build type       : ${CMAKE_BUILD_TYPE_LC}")
if(MI_USE_CXX)
  message(STATUS "C++ Compiler     : ${CMAKE_CXX_COMPILER}")
else()
  message(STATUS "C Compiler       : ${CMAKE_C_COMPILER}")
endif()
message(STATUS "Compiler flags   : ${mi_cflags}")
message(STATUS "Compiler defines : ${mi_defines}")
message(STATUS "Link libraries   : ${mi_libraries}")
message(STATUS "Build targets    : ${mi_build_targets}")
message(STATUS "")

# -----------------------------------------------------------------------------
# Main targets
# -----------------------------------------------------------------------------

# static library
if (MI_BUILD_STATIC)
  add_library(mimalloc-static STATIC ${mi_sources})
  set_property(TARGET mimalloc-static PROPERTY POSITION_INDEPENDENT_CODE ON)
  target_compile_definitions(mimalloc-static PRIVATE ${mi_defines} MI_STATIC_LIB)
  target_compile_options(mimalloc-static PRIVATE ${mi_cflags})
  target_link_libraries(mimalloc-static PRIVATE ${mi_libraries})
  target_include_directories(mimalloc-static PUBLIC
      $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/include>
  )
  set_target_properties(mimalloc-static PROPERTIES OUTPUT_NAME ${mi_basename})
endif()
