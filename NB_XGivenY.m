function [D] = NB_XGivenY(XTrain, yTrain)
  FacultyRows = yTrain == 1;
  StudentRows = yTrain == 2;

  D = [(sum(XTrain(FacultyRows,:), 1) .+ 1) / (sum(FacultyRows) + 1) ;
       (sum(XTrain(StudentRows,:), 1) .+ 1) / (sum(StudentRows) + 1)];    
end

