cmake_minimum_required(VERSION 3.27)

project(template
        VERSION 0.1.0
        DESCRIPTION "template"
        LANGUAGES CXX
)

set(CMAKE_MODULE_PATH ${CMAKE_SOURCE_DIR}/modules)

include(PathsAndOptions)
if (BUILD_DOC)
    include(MakeDoc)
    return()
endif()
include(ClangTidy)
include(ClangFormat)
clangformat_setup()

## add_subdirectory(third-party)

file(GLOB_RECURSE SOURCES ${SRC_DIR}/*.cpp)

add_executable(${PROJECT_NAME} ${SOURCES})

## add_dependencies(${PROJECT_NAME} thirdparty)

target_include_directories(${PROJECT_NAME} PRIVATE ${INCLUDE_DIR})

## target_link_libraries(${PROJECT_NAME} PRIVATE ${THIRDPARTY_LIBRARIES})

target_compile_features(${PROJECT_NAME} PRIVATE cxx_std_20)
target_compile_options(${PROJECT_NAME} PRIVATE ${WARNING_FLAGS})
