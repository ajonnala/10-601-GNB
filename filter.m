function [xTrain,yTrain,xTest,yTest] = filter(tdF,tdS,xTr,yTr,xTe,yTe,x)

  %get max x values for faculty and student
  
  maxFacInd = zeros(1,x);
  for i=1:x
    [w,iw] = max(tdF);
    maxFacInd(i) = iw;
    tdF(iw) = -1;
  endfor

  maxStudInd = zeros(1,x);
  for i=1:x
    [w,iw] = max(tdS);
    maxStudInd(i) = iw;
    tdS(iw) = -1;
  endfor

  allInd = cat(2,maxFacInd,maxStudInd);
  xTrain = xTr(:,allInd);
  xTest = xTe(:,allInd);
  
  yTrain = yTr;
  yTest = yTe;
