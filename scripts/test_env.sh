jupyter notebook &> /dev/null &
ps aux | grep -ie jupyter | awk '{print $2}' | xargs kill -9
clear

echo "Notebooks working properly"

py.test --nbval-lax classify-demo.ipynb
