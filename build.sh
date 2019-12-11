docker build \
    --build-arg=RESTY_J=16 \
    -f alpine/Dockerfile \
    -t ustclug/openresty .
docker build \
    --build-arg=RESTY_IMAGE_BASE=ustclug/openresty \
    --build-arg=RESTY_IMAGE_TAG=light \
    -f alpine/Dockerfile.fat \
    -t ustclug/openresty:fat .
