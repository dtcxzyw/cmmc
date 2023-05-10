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

add_compile_options(-Wfatal-errors)
if(${CMAKE_BUILD_TYPE} MATCHES Debug)
  add_compile_options(-fsanitize=address -fsanitize-recover=address -fno-omit-frame-pointer -ggdb -g)
  add_link_options(-fsanitize=address -fsanitize-recover=address -fno-omit-frame-pointer -ggdb -g)
  set(CMAKE_INTERPROCEDURAL_OPTIMIZATION FALSE)
else()
  add_compile_options(-ggdb -march=native -funroll-loops -ffp-contract=on)
  add_link_options(-ggdb -march=native -funroll-loops -ffp-contract=on)
  set(CMAKE_INTERPROCEDURAL_OPTIMIZATION FALSE)
endif()
add_compile_options(-Wextra -Wall -Werror -Wno-format-security)

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

option(CMMC_LLVM_SUPPORT "Enable LLVM support" ON)
if(${CMAKE_BUILD_TYPE} MATCHES Debug)
  set(CMMC_LLVM_SUPPORT OFF)
endif()

if(${CMMC_LLVM_SUPPORT})
  find_package(LLVM CONFIG)
  if(${LLVM_FOUND})
    message(STATUS "With LLVM reference backend support")
    list(JOIN LLVM_TARGETS_TO_BUILD " " LLVM_TARGETS_TO_BUILD_LIST)
    message(STATUS "Supported targets: " ${LLVM_TARGETS_TO_BUILD_LIST})
    message(STATUS "Native target: " ${LLVM_NATIVE_ARCH})
    include_directories(${LLVM_INCLUDE_DIRS})
  endif()
endif()

file(GLOB CMMC_SRC cmmc/**/*.cpp cmmc/Transforms/**/*.cpp cmmc/Target/**/*.cpp)
list(FILTER CMMC_SRC EXCLUDE REGEX LLVM[.]cpp)
list(FILTER CMMC_SRC EXCLUDE REGEX LLVMOrcJIT[.]cpp)
if(${LLVM_FOUND})
  add_compile_definitions(CMMC_WITH_LLVM_SUPPORT)
  set(CMMC_SRC_LLVM cmmc/Conversion/LLVM.cpp cmmc/ExecutionEngine/LLVMOrcJIT.cpp)
  set_source_files_properties(${CMMC_SRC_LLVM} PROPERTIES COMPILE_FLAGS "-Wno-unused-parameter -Wno-redundant-move -Wno-maybe-uninitialized")
  set(LLVM_LIBRARIES 
    LLVMCore
    LLVMSupport
    LLVMBitWriter
    LLVMOrcJIT
    LLVMMC
    
    LLVM${LLVM_NATIVE_ARCH}AsmParser
    LLVM${LLVM_NATIVE_ARCH}Disassembler 
    # LLVM${LLVM_NATIVE_ARCH}TargetMCA
  )
  foreach(TARGET ${LLVM_TARGETS_TO_BUILD})
    list(APPEND LLVM_LIBRARIES 
    LLVM${TARGET}Info 
    LLVM${TARGET}CodeGen 
    LLVM${TARGET}Desc 
    )
  endforeach()
  
else()
  set(CMMC_SRC_LLVM "")
  set(LLVM_LIBRARIES "")
endif()
file(GLOB CMMC_SRC_FRONTEND cmmc/Frontend/Support/*.cpp)
add_executable(cmmc ${CMMC_SRC} ${CMMC_SRC_FRONTEND} ${CMMC_SRC_LLVM})
add_dependencies(cmmc Spl_generated SysY_generated)
set_source_files_properties(${CMMC_SRC} PROPERTIES COMPILE_FLAGS "-Wconversion -Wshadow -Wno-psabi")
target_include_directories(cmmc PRIVATE ${CMAKE_CURRENT_BINARY_DIR}/generated ${CMAKE_CURRENT_LIST_DIR})
target_link_libraries(cmmc PRIVATE ${LLVM_LIBRARIES})

set(CMMC_EDUCG_SUBMIT_DIR ${CMAKE_CURRENT_BINARY_DIR}/educg_submit)
find_package(Python3 REQUIRED)

add_custom_target(educg_submit ALL
COMMAND ${CMAKE_COMMAND} -E rm -rf ${CMMC_EDUCG_SUBMIT_DIR}
COMMAND ${CMAKE_COMMAND} -E make_directory ${CMMC_EDUCG_SUBMIT_DIR}
COMMAND ${CMAKE_COMMAND} -E copy ${CMAKE_CURRENT_LIST_DIR}/LICENSE ${CMMC_EDUCG_SUBMIT_DIR}/LICENSE
COMMAND ${CMAKE_COMMAND} -E copy ${CMAKE_CURRENT_LIST_DIR}/educg/Makefile ${CMMC_EDUCG_SUBMIT_DIR}/Makefile
COMMAND ${CMAKE_COMMAND} -E copy_directory ${CMAKE_CURRENT_LIST_DIR}/cmmc ${CMMC_EDUCG_SUBMIT_DIR}/cmmc
COMMAND ${CMAKE_COMMAND} -E copy_directory ${CMAKE_CURRENT_BINARY_DIR}/generated ${CMMC_EDUCG_SUBMIT_DIR}/
COMMAND ${CMAKE_COMMAND} -E copy ${CMAKE_CURRENT_LIST_DIR}/educg/CMMCDriver.cpp ${CMMC_EDUCG_SUBMIT_DIR}/cmmc/Driver/CMMCDriver.cpp
COMMAND ${CMAKE_COMMAND} -E rm -rf ${CMMC_EDUCG_SUBMIT_DIR}/cmmc/Conversion/ ${CMMC_EDUCG_SUBMIT_DIR}/cmmc/ExecutionEngine/LLVMOrcJIT.cpp
COMMAND ${CMAKE_COMMAND} -E rm -rf ${CMMC_EDUCG_SUBMIT_DIR}/cmmc/Target/LLVM ${CMMC_EDUCG_SUBMIT_DIR}/cmmc/Target/MIPS ${CMMC_EDUCG_SUBMIT_DIR}/cmmc/Target/Sim ${CMMC_EDUCG_SUBMIT_DIR}/cmmc/Target/TAC
COMMAND ${Python3_EXECUTABLE} ${CMAKE_CURRENT_LIST_DIR}/educg/cmmc_header_fix.py ${CMMC_EDUCG_SUBMIT_DIR}
COMMAND ${Python3_EXECUTABLE} ${CMAKE_CURRENT_LIST_DIR}/educg/cmmc_file_filter.py ${CMMC_EDUCG_SUBMIT_DIR}
COMMAND cd ${CMMC_EDUCG_SUBMIT_DIR}
COMMAND make -j
DEPENDS cmmc
)

add_test(NAME cmmc_test COMMAND ${Python3_EXECUTABLE} ${CMAKE_CURRENT_LIST_DIR}/tests/test_driver.py $<TARGET_FILE:cmmc> ${CMAKE_CURRENT_LIST_DIR}/tests)
