cmake_minimum_required(VERSION 3.12)

# Pull in SDK (must be before project)
# include(pico_sdk_import.cmake)

project(pcemouse C CXX ASM)
set(CMAKE_C_STANDARD 11)
set(CMAKE_CXX_STANDARD 17)

if ( CMAKE_COMPILER_IS_GNUCC )
    set(CMAKE_CXX_FLAGS  "${CMAKE_CXX_FLAGS} -Wall -Wextra")
endif()

#set(PICO_EXAMPLES_PATH ${PROJECT_SOURCE_DIR})

# Initialize the SDK
pico_sdk_init()

# set(FAMILY rp2040)
# set(BOARD pico_sdk)

add_executable(pcemouse)

pico_add_extra_outputs(pcemouse)

# Example source
target_sources(pcemouse PUBLIC
        ${CMAKE_CURRENT_SOURCE_DIR}/hid_app.c
        ${CMAKE_CURRENT_SOURCE_DIR}/main.c
        ${CMAKE_CURRENT_SOURCE_DIR}/msc_app.c
        )

# Example include
target_include_directories(pcemouse PUBLIC
        ${CMAKE_CURRENT_SOURCE_DIR}
        )

target_link_libraries(pcemouse PRIVATE
    pico_stdlib
    tinyusb_host
    tinyusb_board
    )
