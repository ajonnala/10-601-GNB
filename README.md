# 10-601-GNB
To import output.csv into octave:
```
data = dlmread("output.csv",",");
err = test(data,frac,x);
```
