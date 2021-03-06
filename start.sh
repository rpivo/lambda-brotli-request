source ./sh/env.sh
rm -rf package && mkdir package
rm lambda.zip
docker start brotli || docker run -dt --name brotli -v $LOCAL_PATH:/bind-mount amazonlinux
docker exec -i brotli bash <sh/build.sh
docker stop brotli
