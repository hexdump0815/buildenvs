# buildenvs

docker based buildenvs to build for debian, ubuntu, raspbian, archlinux and alpine, independent of the host system

how to use them:
- the host systems has to be of the same architecture as the taget system (i.e. aarch64 for aarch64 etc.)
- a working docker installation is required on the host system
- first run docker-buildenv-targetsystem.sh to build a docker container with the buildenv
- then run buildenv-targetsystem.sh to start and enter the buildenv in the docker container
- it is assumed, that /compile is the dire where all compilations will happen, so this dir is available inside of the buildend as /compile as well
- install extra packages and tools as required and start building
