REM For multibuildpack scenarios v3 (experimental) commands must be used.
REM v3 version of cf push does not support manifest files.
REM See documentation here: https://docs.pivotal.io/pivotalcf/2-0/buildpacks/use-multiple-buildpacks.html

cf v3-push linuxPackageDotnetCore -b https://github.com/cloudfoundry/apt-buildpack -b https://github.com/cloudfoundry/dotnet-core-buildpack

cf v3-push linuxPackageDotnetCore -b https://github.com/cloudfoundry/apt-buildpack -b https://github.com/cloudfoundry/binary-buildpack 
    -c cd ${DEPS_DIR}/1/dotnet_publish && ./multibuildpack --server.urls http://0.0.0.0:${PORT} -p .\publish