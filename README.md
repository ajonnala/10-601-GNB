# 10-601-GNB
To import output.csv into octave:
```
data = dlmread("output.csv",",");
data(1,:) =[]; //deletes first row
```
To get xTrain,yTrain,xTest,yTest:
```
[xTrain,yTrain] = parse(data,2,3);
[xTest,yTest] = parse(data,0,1);
D = NB_XGivenY(xTrain, yTrain);
p = NB_YPrior(yTrain);
yHatTrain = NB_Classify(D, p, xTrain);
yHatTest = NB_Classify(D, p, xTest);
trainError = ClassificationError(yHatTrain, yTrain)
```
