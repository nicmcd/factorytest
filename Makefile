#--------------------- Basic Settings -----------------------------------------#
PROGRAM_NAME   := factorytest
BINARY_BASE    := bin
BUILD_BASE     := bld
SOURCE_BASE    := src
MAIN_FILE      := src/main.cc

#--------------------- External Libraries -------------------------------------#
HEADER_DIRS    := \
	../libfactory/inc

STATIC_LIBS    := \
	../libfactory/bld/libfactory.a

#--------------------- Cpp Lint -----------------------------------------------#
LINT           := $(HOME)/.makeccpp/cpplint/cpplint.py
LINT_FLAGS     :=

#--------------------- Unit Tests ---------------------------------------------#
TEST_SUFFIX    := _TEST
GTEST_BASE     := $(HOME)/.makeccpp/gtest
GTEST_PARALLEL := $(HOME)/.makeccpp/gtest-parallel

#--------------------- Compilation and Linking --------------------------------#
CXX            := g++
SRC_EXTS       := .cc
HDR_EXTS       := .h .tcc
CXX_FLAGS      := -std=c++11 -Wall -Wextra -pedantic -Wfatal-errors
CXX_FLAGS      += -march=native -g -O3 -flto
LINK_FLAGS     :=

#--------------------- Auto Makefile ------------------------------------------#
include $(HOME)/.makeccpp/auto_bin.mk
