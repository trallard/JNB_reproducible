#!/bin/bash

CUR_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
pushd ${CUR_DIR}/..

echo "Check that we can run a single-user Jupyter server..."
jupyter nbconvert --to notebook --output-dir=/tmp --execute classify-demo.ipynb
if [ $? -eq 0 ]; then
    echo "...yes"
else
    echo "...no"
fi

echo -e "\nCheck we can run nbval..."
py.test --nbval-lax classify-demo.ipynb
if [ $? -eq 0 ]; then
    echo "...yes"
else
    echo "...no"
fi

popd
echo "\nTests completed"
