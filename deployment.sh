#!/bin/bash
#set -e

echo "==> Installing All the dependencies"
pip install -e .[testing,dev]
pip install -r dev_requirements.txt

echo "==> Build Packages"
python3 setup.py sdist

echo "==> Remove existing package"
rm -r build

echo "==> Go to Dash loacation"
cd ../build/lib

echo "==> Remove tar.gz if exists"
rm -r openleadr.tar.gz

echo "==> make tar.gz file"
tar -czvf openleadr.tar.gz openleadr 

VERSION=`cat VERSION`
echo "==> copy to AWS S3 bucket ${VERSION}"
aws s3 cp openleadr.tar.gz s3://rheemconnect-infra/submodule_builds/${VERSION}/openleadr.tar.gz

echo "==> Cleanup"
rm -r openleadr.tar.gz