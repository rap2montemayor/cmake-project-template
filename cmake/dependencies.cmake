include(FetchContent)

# Catch2::Catch2WithMain
FetchContent_Declare(
  Catch2
  GIT_REPOSITORY "https://github.com/catchorg/Catch2.git"
  GIT_TAG b5373dadca40b7edc8570cf9470b9b1cb1934d40  # v3.5.4
)
FetchContent_MakeAvailable(Catch2)
list(APPEND CMAKE_MODULE_PATH ${Catch2_SOURCE_DIR}/extras)
include(CTest)
include(Catch)


# Boost
set (BOOST_LIBS config container_hash describe mp11)
foreach(BOOST_LIB IN LISTS BOOST_LIBS)
  FetchContent_Declare(
    boost_${BOOST_LIB}
    GIT_REPOSITORY "https://github.com/boostorg/${BOOST_LIB}.git"
    GIT_TAG boost-1.84.0
  )
  FetchContent_MakeAvailable(boost_${BOOST_LIB})
endforeach()


# spdlog
FetchContent_Declare(
  spdlog
  GIT_REPOSITORY "https://github.com/gabime/spdlog.git"
  GIT_TAG v1.13.0
)
FetchContent_MakeAvailable(spdlog)
