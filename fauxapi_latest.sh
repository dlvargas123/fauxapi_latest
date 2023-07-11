set fauxapi_base_package_url='https://raw.githubusercontent.com/ndejong/pfsense_fauxapi_packages/master'
set fauxapi_latest=`fetch -qo - ${fauxapi_base_package_url}/LATEST`
fetch ${fauxapi_base_package_url}/${fauxapi_latest}
pkg-static install ${fauxapi_latest}
