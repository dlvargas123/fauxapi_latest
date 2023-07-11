fauxapi_base_package_url='https://raw.githubusercontent.com/ndejong/pfsense_fauxapi_packages/master'
fauxapi_latest=$(fetch -qo - "${fauxapi_base_package_url}/LATEST")
fetch "${fauxapi_base_package_url}/${fauxapi_latest}"
pkg install -y "${fauxapi_latest}"
