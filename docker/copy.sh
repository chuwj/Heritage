#!/bin/sh

# 复制项目的文件到对应docker路径，便于一键生成镜像。
usage() {
	echo "Usage: sh copy.sh"
	exit 1
}


# copy sql
echo "begin copy sql "
cp ../sql/heritage_20240629.sql ./mysql/db
cp ../sql/heritage_config_20240902.sql ./mysql/db

# copy html
echo "begin copy html "
cp -r ../heritage-ui/dist/** ./nginx/html/dist


# copy jar
echo "begin copy heritage-gateway "
cp ../heritage-gateway/target/heritage-gateway.jar ./heritage/gateway/jar

echo "begin copy heritage-auth "
cp ../heritage-auth/target/heritage-auth.jar ./heritage/auth/jar

echo "begin copy heritage-visual "
cp ../heritage-visual/heritage-monitor/target/heritage-visual-monitor.jar  ./heritage/visual/monitor/jar

echo "begin copy heritage-modules-system "
cp ../heritage-modules/heritage-system/target/heritage-modules-system.jar ./heritage/modules/system/jar

echo "begin copy heritage-modules-file "
cp ../heritage-modules/heritage-file/target/heritage-modules-file.jar ./heritage/modules/file/jar

echo "begin copy heritage-modules-job "
cp ../heritage-modules/heritage-job/target/heritage-modules-job.jar ./heritage/modules/job/jar

echo "begin copy heritage-modules-gen "
cp ../heritage-modules/heritage-gen/target/heritage-modules-gen.jar ./heritage/modules/gen/jar

