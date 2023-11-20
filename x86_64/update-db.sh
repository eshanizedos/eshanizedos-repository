#!/bin/bash

rm eshanizedos-repository*

echo "repo-add"
repo-add -s -n -R eshanizedos-repository.db.tar.gz *.pkg.tar.zst

sleep 1

rm eshanizedos-repository.db
rm eshanizedos-repository.db.sig

rm eshanizedos-repository.files
rm eshanizedos-repository.files.sig

mv eshanizedos-repository.db.tar.gz eshanizedos-repository.db
mv eshanizedos-repository.db.tar.gz.sig eshanizedos-repository.db.sig

mv eshanizedos-repository.files.tar.gz eshanizedos-repository.files
mv eshanizedos-repository.files.tar.gz.sig eshanizedos-repository.files.sig

echo "####################################"
echo "Repo Updated!!"
echo "####################################"
