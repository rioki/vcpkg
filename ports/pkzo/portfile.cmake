vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO rioki/pkzo
  REF  v0.1.1
  SHA512 556171f04ba4ec85c83589a033b11dee0e509cc252bdd99e8d12150a83b45f8cf54f524ffdd9b44e2f427aeeb80727e8f33b9b991b1e22be7b0bbbfc2efb1278
)

vcpkg_cmake_configure(SOURCE_PATH "${SOURCE_PATH}")

vcpkg_cmake_install()

vcpkg_cmake_config_fixup(CONFIG_PATH "share/pkzo")
file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")

vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/LICENSE.txt")
