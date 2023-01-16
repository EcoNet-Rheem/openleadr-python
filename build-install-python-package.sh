pip install -e .[testing,dev]
pip install -r dev_requirements.txt
python setup.py sdist
python setup.py install

# TODO create zip
# TODO upload to aws s3