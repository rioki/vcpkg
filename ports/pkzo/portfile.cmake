vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO rioki/pkzo
  REF  v0.1.2
  SHA512 87e698d2924d70d2077e6be6687a84e05a439094942565a3d9641c1fed339f3957a5a4c16de10d9b8e75a874920485519a275390e06c3f53f2c607ce3b98eec2
)

vcpkg_cmake_configure(SOURCE_PATH "${SOURCE_PATH}")

vcpkg_cmake_install()

vcpkg_cmake_config_fixup(CONFIG_PATH "share/pkzo")
file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")

vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/LICENSE.txt")
