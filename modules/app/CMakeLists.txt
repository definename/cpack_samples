project(app)

set(VERSION_FILE_DESC "${PROJECT_NAME} application")
set(VERSION_PRODUCT_NAME "${PROJECT_NAME}")

include(PCHSupport)
include(CRTLinkage)

configure_file(src/res/Version.h.cmake Version.h @ONLY)
configure_file(src/res/Version.rc.cmake Version.rc @ONLY)

set(PROJECT_HEADERS
	${CMAKE_CURRENT_BINARY_DIR}/Version.h
	)
set(PROJECT_RESOURCES
	src/res/app.ico
	${CMAKE_CURRENT_BINARY_DIR}/Version.rc
	)
set(PROJECT_SOURCES
	src/main.cpp
	)
set(MISC
	src/pch.h
	src/pch.cpp
	)

set_source_files_properties(
	${CMAKE_CURRENT_BINARY_DIR}/Version.h PROPERTIES GENERATED 1)
set_source_files_properties(
	${CMAKE_CURRENT_BINARY_DIR}/Version.rc PROPERTIES GENERATED 1)

add_executable(${PROJECT_NAME}
	${PROJECT_SOURCES}
	${PROJECT_RESOURCES}
	${PROJECT_HEADERS}
	${MISC}
	)

source_group("Source Files" FILES ${PROJECT_SOURCES})
source_group("Resource Files" FILES ${PROJECT_RESOURCES})
source_group("Header Files" FILES ${PROJECT_HEADERS})
source_group("" FILES ${MISC})

add_precompiled_headers(${PROJECT_NAME} "src/")

include_directories(
	include
	)
#target_link_libraries(${PROJECT_NAME}
#	)

add_definitions(
	-DUNICODE
	-D_UNICODE
	)

#set_property(TARGET ${PROJECT_NAME} PROPERTY FOLDER "_thread")
#set_target_properties(${PROJECT_NAME} PROPERTIES EXCLUDE_FROM_DEFAULT_BUILD 1)