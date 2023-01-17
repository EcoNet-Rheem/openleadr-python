#!/bin/bash
#set -e

echo "==> Installing All the dependencies"
pip3 install -r dev_requirements.txt

echo "==> Build Packages"
python3 setup.py sdist


VERSION=`cat VERSION`
echo "==> copy to AWS S3 bucket ${VERSION}"
aws s3 cp dist/openleadr-${VERSION}.tar.gz s3://rheemconnect-infra/python-libs/${VERSION}/openleadr.tar.gz