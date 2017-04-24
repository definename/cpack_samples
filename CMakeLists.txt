cmake_minimum_required(VERSION 3.7.0)

project(cpack_samples)

list(APPEND CMAKE_MODULE_PATH "${CMAKE_SOURCE_DIR}/cmake")
option(BUILD_WITH_STATIC_CRT "Use static run-time libraries (/MT or /MTd linker flags)" OFF)
option(BUILD_SHARED_LIBS "Build shared libraries (.dll) instead of static ones (.lib)" OFF)

# Sets executable output folder
set(EXECUTABLE_OUTPUT_PATH ${CMAKE_BINARY_DIR}/bin)

#
# Version. 
#
set(VERSION_MAJOR "1")
set(VERSION_MINOR "0")
set(VERSION_BUILD "0")
set(REVISION_COUNT "0")

find_package(Git)
if(GIT_FOUND)
	execute_process(
		COMMAND ${GIT_EXECUTABLE} rev-list HEAD --count
		OUTPUT_VARIABLE DESCRIBE_BUILD
		WORKING_DIRECTORY ${CMAKE_SOURCE_DIR}
		OUTPUT_STRIP_TRAILING_WHITESPACE)
		string(REGEX MATCH "[0-9]+" REVISION_COUNT ${DESCRIBE_BUILD})
endif()

set(VERSION_REVISION "${REVISION_COUNT}")
set(VERSION_FILE_REVISION "${REVISION_COUNT}")
set(VERSION_COMPANY_NAME "Rabbit Inc.")
set(VERSION_COPYRIGHT "Copyright (C) 2017 ${VERSION_COMPANY_NAME}")

add_subdirectory(modules/cpack_test)
add_subdirectory(modules/installer)