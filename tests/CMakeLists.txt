add_executable(tests fac_test.cpp)
target_include_directories(tests PUBLIC ${PROJECT_SOURCE_DIR})
target_link_libraries(tests PRIVATE Catch2::Catch2WithMain)
