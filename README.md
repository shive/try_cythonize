# try_cythonize
Cythonを使ってPythonコードをC/C++最適化する実験

## 依存
- Python==3.4.1
- Cython==0.21.2

## 差分
```
$ diff -uw fib_noopt.py fib.pyx
  #===============================================================
  
- def calc(n):
+ cpdef int calc(int n):
      if 0 == n:
          return 0
```

## 結果
```
$ make

$ time make run_noopt
C:/Python34/python.exe run_noopt.py 40
102334155

real    1m3.291s
user    0m0.046s
sys     0m0.030s

$ time make run
C:/Python34/python.exe run.py 40
102334155

real    0m1.170s
user    0m0.046s
sys     0m0.015s
```
こんだけで10倍以上高速になった。
