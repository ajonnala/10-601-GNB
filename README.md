# 10-601-GNB
To import output.csv into octave:
```
data = dlmread("output.csv",",");
data(1,:) =[]; //deletes first row
```
To get xTrain,yTrain,xTest,yTest:
```
[x,y] = parse(data);
frac = fraction of data you want to be training data;
[xTest,xTrain,yTrain,yTest] = splitData(x,y,frac);
D = NB_XGivenY(xTrain, yTrain);
p = NB_YPrior(yTrain);
yHatTest = NB_Classify(D, p, xTest);
trainError = ClassificationError(yHatTest, yTest)
```
