#!/bin/bash

CUR_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
pushd ${CUR_DIR}/..

echo -n "Check that we can run a single-user Jupyter server..."
jupyter nbconvert --to notebook --stdout --execute classify-demo.ipynb &> /dev/null
if [ $? -eq 0 ]; then
    echo "yes"
else
    echo "no"
fi

echo -n "Check we can run nbval..."
py.test --nbval-lax classify-demo.ipynb
if [ $? -eq 0 ]; then
    echo "yes"
else
    echo "no"
fi

popd
echo "Tests completed"
