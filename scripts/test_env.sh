jupyter notebook &> /dev/null &
ps aux | grep -ie jupyter | awk '{print $2}' | xargs kill -9
clear

echo "Notebooks working properly"

git clone https://github.trallard/JNB_reproducible
cd JNB_reproducible

py.test --nbval-lax classify-demo.ipynb

cd..

rm -rm JNB_reproducible

echo "Test completed"
