vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO litehtml/litehtml
    REF v0.5
    SHA512 01c7b4b9941979f57b55333829e6f1f13c5fce4363adbe9cdbc6343a08f1de92cc7f5d2214f58d0c17919df84d7ecfc301782acbd3a0efab7d10b18c411e402e
    HEAD_REF master
    PATCHES vcpkg-cmakelists.patch
)

vcpkg_configure_cmake(
    SOURCE_PATH ${SOURCE_PATH}
    PREFER_NINJA
)

vcpkg_install_cmake()
file(INSTALL ${SOURCE_PATH}/LICENSE DESTINATION ${CURRENT_PACKAGES_DIR}/share/litehtml RENAME copyright)