cmake_minimum_required(VERSION 3.20)
project(factorytest)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED True)

include(FindPkgConfig)

# libfactory
pkg_check_modules(libfactory REQUIRED IMPORTED_TARGET libfactory)
  get_target_property(
  LIBFACTORY_INC
  PkgConfig::libfactory
  INTERFACE_INCLUDE_DIRECTORIES
)

add_executable(
  factorytest
  ${PROJECT_SOURCE_DIR}/src/main.cc
  ${PROJECT_SOURCE_DIR}/src/objs/Object.cc
  ${PROJECT_SOURCE_DIR}/src/objs/Car.cc
  ${PROJECT_SOURCE_DIR}/src/objs/Truck.cc
  ${PROJECT_SOURCE_DIR}/src/objs/Car.h
  ${PROJECT_SOURCE_DIR}/src/objs/Object.h
  ${PROJECT_SOURCE_DIR}/src/objs/Truck.h
  )

target_include_directories(
  factorytest
  PUBLIC
  ${PROJECT_SOURCE_DIR}/src
  ${LIBFACTORY_INC}
  )

target_link_libraries(
  factorytest
  PkgConfig::libfactory
  )

include(GNUInstallDirs)

install(
  TARGETS
  factorytest
  )

