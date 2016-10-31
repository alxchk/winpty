MINGW_LDFLAGS := -static -static-libgcc -static-libstdc++ -s
MINGW_ENABLE_CXX11_FLAG := -std=gnu++11
VERSION_SUFFIX := -dev
COMMIT_HASH := $(shell git rev-parse HEAD)
BUILD_INFO_DEP := config.mk .git/HEAD
