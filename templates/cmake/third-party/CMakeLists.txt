add_library(thirdparty INTERFACE)

#======================================= Vulkan ======================================#
find_package(Vulkan REQUIRED)
list(APPEND THIRDPARTY_LIBS Vulkan::Vulkan)
list(APPEND THIRDPARTY_INCLUDE_DIRS ${Vulkan_INCLUDE_DIRS})

target_link_libraries(thirdparty INTERFACE ${THIRDPARTY_LIBS})
target_include_directories(thirdparty SYSTEM INTERFACE ${THIRDPARTY_INCLUDE_DIRS})

set(THIRDPARTY_LIBRARIES thirdparty PARENT_SCOPE)
