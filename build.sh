docker build \
    --build-arg=RESTY_J=16 \
    -f alpine/Dockerfile \
    -t ustclug/openresty:light .
docker build \
    --build-arg=RESTY_FAT_IMAGE_BASE=ustclug/openresty \
    --build-arg=RESTY_FAT_IMAGE_TAG=light \
    -f alpine/Dockerfile.fat \
    -t ustclug/openresty:light-fat .
