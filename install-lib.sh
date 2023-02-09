#!/bin/bash
#set -e

echo "==> Installing library"
VERSION=`cat VERSION`
echo "==> copy to AWS S3 bucket ${VERSION}"
aws s3 cp s3://rheemconnect-infra/submodule_builds/${VERSION}/openleadr.tar.gz openleadr.tar.gz

echo "==> Install library"
pip install file:///openleadr.tar.gz

echo "==> Cleanup"
rm -r openleadr.tar.gz