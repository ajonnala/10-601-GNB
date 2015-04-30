function [xTest,xTrain,yTrain,yTest] = splitData(x,y,frac)
  facultyidic = y == 1;
  studentidic = y == 2;
  facrows = x(facultyidic,:);
  studrows = x(studentidic,:);

  numF = size(facrows,1);
  numS = size(studrows,1);
  trainF = floor(numF*frac);
  testF = numF - trainF;
  trainS = floor(numS*frac);
  testS = numS - trainS;

  trainFacRows  = facrows(1:trainF,:);
  testFacRows = facrows(trainF+1:end,:);
  trainStudRows  = studrows(1:trainS,:);
  testStudRows = studrows(trainS+1:end,:);

  xTrain = cat(1,trainFacRows,trainStudRows);
  xTest = cat(1,testFacRows,testStudRows);


  yTrainS = ones(trainS,1);
  yTestS = ones(testS,1);
  yTrainF = zeros(trainF,1);
  yTestF = zeros(testF,1);
  yTrain = cat(1,yTrainF,yTrainS); 
  yTest  = cat(1,yTestF,yTestS); 

