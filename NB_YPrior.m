function [p] = NB_YPrior(yTrain)
  p = sum(yTrain == 2) / length(yTrain);
end


