#!/usr/bin/env bash

MIRROR="http://free.nchc.org.tw/manjaro/stable"
ARCH="x86_64"
REPO_LIST=('core' 'extra' 'community' 'multilib')

##
## ## Sample
##
## result:  http://free.nchc.org.tw/manjaro/stable/core/x86_64/core.db.tar.gz
## pattern: $mirror/$repo/$arch/$repo.$type$ext
##
## mirror="http://free.nchc.org.tw/manjaro/stable"
## repo="core"
## arch="x86_64"
## type="db"
## ext=".tar.gz"
##

url_create_one () {
	local mirror="$1"
	local repo="$2"
	local arch="$3"
	local type="$4"
	local ext="$5"

	echo "$mirror/$repo/$arch/$repo.$type$ext"
}

#url_create_one "$MIRROR" "$REPO" "$ARCH"

for REPO in "${REPO_LIST[@]}"; do
	url_create_one "$MIRROR" "$REPO" "$ARCH" "db"
	url_create_one "$MIRROR" "$REPO" "$ARCH" "db" ".tar.gz"
	url_create_one "$MIRROR" "$REPO" "$ARCH" "files"
	url_create_one "$MIRROR" "$REPO" "$ARCH" "files" ".tar.gz"
done
