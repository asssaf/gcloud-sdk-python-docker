#!/usr/bin/env bash

: ${GCLOUD_SRC_PATH=${PWD}}

docker run --rm -it --net=host --workdir=/home/user/src \
	-v ~/.config/gcloud:/home/user/.config/gcloud \
	-v $GCLOUD_SRC_PATH:/home/user/src:ro \
	asssaf/gcloud-sdk-python dev_appserver.py \
	--storage_path=/tmp/appserver \
	--require_indexes=true \
	$*
