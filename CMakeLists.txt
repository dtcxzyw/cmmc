cmake_minimum_required(VERSION 3.12)
enable_testing()

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

SET(CMAKE_FIND_PACKAGE_SORT_ORDER NATURAL)
SET(CMAKE_FIND_PACKAGE_SORT_DIRECTION DEC)

project(cmmc)

if(NOT CMAKE_BUILD_TYPE)
  set(CMAKE_BUILD_TYPE Release CACHE STRING "Supported build types: Debug Release" FORCE)
endif()

if(${CMAKE_BUILD_TYPE} MATCHES Debug)
  add_compile_options(-fsanitize=address,undefined -fsanitize-recover=address -fno-omit-frame-pointer -ggdb -g)
  set(CMAKE_INTERPROCEDURAL_OPTIMIZATION FALSE)
else()
  add_compile_options(-s -march=native -funroll-loops -ffp-contract=on)
  set(CMAKE_INTERPROCEDURAL_OPTIMIZATION TRUE)
endif()
add_compile_options(-Wextra -Wall -Werror)

set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib/)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib/)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin/)

find_package(BISON REQUIRED)
find_package(FLEX REQUIRED)

function(add_frontend frontend)
    message(STATUS "Add frontend: ${frontend}")
    set(GENERATED_DIR ${CMAKE_CURRENT_BINARY_DIR}/generated/${frontend})
    FLEX_TARGET(${frontend}Scanner cmmc/Frontend/Scanner${frontend}.ll ${GENERATED_DIR}/ScannerImpl.hpp
    COMPILE_FLAGS "-P ${frontend}"
    DEFINES_FILE ${GENERATED_DIR}/ScannerDecl.hpp
    )
    BISON_TARGET(${frontend}Parser cmmc/Frontend/Parser${frontend}.yy ${GENERATED_DIR}/ParserImpl.hpp
    COMPILE_FLAGS --language=c++
    DEFINES_FILE ${GENERATED_DIR}/ParserDecl.hpp
    )
    ADD_FLEX_BISON_DEPENDENCY(${frontend}Scanner ${frontend}Parser)
    add_custom_target(${frontend}_generated DEPENDS ${BISON_${frontend}Parser_OUTPUTS} ${FLEX_${frontend}Scanner_OUTPUTS})
endfunction()

add_frontend(Spl)
add_frontend(SysY)
find_package(LLVM CONFIG)
if(${LLVM_FOUND})
  message(STATUS "With LLVM reference backend support")
  include_directories(${LLVM_INCLUDE_DIRS})
  find_program(LLVM_CONFIG_EXEC NAMES llvm-config)
  execute_process(COMMAND ${LLVM_CONFIG_EXEC} --libfiles
  OUTPUT_VARIABLE LLVM_LIBRARIES
  OUTPUT_STRIP_TRAILING_WHITESPACE)
  string (REPLACE " " ";" LLVM_LIBRARIES "${LLVM_LIBRARIES}")
endif()

file(GLOB CMMC_SRC cmmc/**/*.cpp cmmc/Transforms/**/*.cpp cmmc/Target/**/*.cpp)
list(FILTER CMMC_SRC EXCLUDE REGEX LLVM[.]cpp)
if(${LLVM_FOUND})
  add_compile_definitions(CMMC_WITH_LLVM_SUPPORT)
  set(CMMC_SRC_LLVM cmmc/Conversion/LLVM.cpp)
  set_source_files_properties(${CMMC_SRC_LLVM} PROPERTIES COMPILE_FLAGS "-Wno-unused-parameter")
else()
  set(CMMC_SRC_LLVM "")
  set(LLVM_LIBRARIES "")
endif()
file(GLOB CMMC_SRC_FRONTEND cmmc/Frontend/Support/*.cpp)
add_executable(cmmc ${CMMC_SRC} ${CMMC_SRC_FRONTEND} ${CMMC_SRC_LLVM})
add_dependencies(cmmc Spl_generated SysY_generated)
set_source_files_properties(${CMMC_SRC} PROPERTIES COMPILE_FLAGS "-Wconversion -Wshadow -Wno-format-security -Wno-psabi")
target_include_directories(cmmc PRIVATE ${CMAKE_CURRENT_BINARY_DIR}/generated ${CMAKE_CURRENT_LIST_DIR})
target_link_libraries(cmmc PRIVATE ${LLVM_LIBRARIES})

find_package(Python3 REQUIRED)

add_test(NAME cmmc_test COMMAND ${Python3_EXECUTABLE} ${CMAKE_CURRENT_LIST_DIR}/tests/test_driver.py $<TARGET_FILE:cmmc> ${CMAKE_CURRENT_LIST_DIR}/tests)
