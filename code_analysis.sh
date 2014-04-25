#!/bin/bash
# to get rid of the pylint warning "'No config file found, ...":
# try running pylint --generate-rcfile > .pylintrc
#

echo "PYLINT"
pylint --reports=n --msg-template="{path}:{line}: [{msg_id}({symbol}), {obj}] {msg}" lorem

echo ""
echo "PEP8"
pep8 lorem
