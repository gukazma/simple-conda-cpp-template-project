cmake_minimum_required(VERSION 4.0)
project(CondaSimpleCPPProject CXX)
include(cmake/copy_dll.cmake)
include(cmake/get_cpm.cmake)
find_package(Eigen3 REQUIRED)
find_package(Boost COMPONENTS filesystem system thread locale REQUIRED)
CPMAddPackage(
    NAME Catch2
    GITHUB_REPOSITORY catchorg/Catch2
    GIT_TAG v3.4.0
)
add_executable(${PROJECT_NAME} main.cpp)
target_link_libraries(${PROJECT_NAME} 
Eigen3::Eigen
Boost::system
Boost::filesystem
Boost::dynamic_linking
Boost::thread
Boost::locale
Catch2::Catch2
)

copy_dll(${PROJECT_NAME})