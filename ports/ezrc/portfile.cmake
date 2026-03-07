vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO rioki/ezrc
  REF  v0.5.0
  SHA512 f260a9945b266341421c2d9be638f31c974874d8651bf1e233b4be8f8e0a05d369c0867ba93f061265e777b42a792b9e3ee3bafd12d9b32d41e849481e79d5a1
)

set(VCPKG_BUILD_TYPE release)
set(VCPKG_POLICY_EMPTY_INCLUDE_FOLDER enabled)

vcpkg_cmake_configure(SOURCE_PATH "${SOURCE_PATH}")

vcpkg_cmake_install()

vcpkg_copy_tools(TOOL_NAMES ezrc AUTO_CLEAN)

vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/LICENSE.txt")

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug")
