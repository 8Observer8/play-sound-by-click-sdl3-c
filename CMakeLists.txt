cmake_minimum_required(VERSION 3.20)
project(play-sound-by-click-sdl3-c LANGUAGES C)
add_executable(app)

# Specify where the application source files are stored
target_sources(app
PRIVATE
    src/main.c
)

find_package(SDL3)
find_package(SDL3_mixer)
target_link_libraries(app PRIVATE SDL3_mixer::SDL3_mixer SDL3::SDL3)

target_link_options("app" PRIVATE "SHELL:--embed-file ${CMAKE_CURRENT_SOURCE_DIR}/assets/audio/picked-coin-echo-2.wav@/assets/audio/picked-coin-echo-2.wav")
set_property(TARGET "app" APPEND PROPERTY LINK_DEPENDS "${CMAKE_CURRENT_SOURCE_DIR}/assets/audio/picked-coin-echo-2.wav")
