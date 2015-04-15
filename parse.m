function [xVal,yVal] = parse(output,facFlag,studFlag)
typeLoc = 14;
typeCol = output(:,typeLoc);
trainFacultyIndic = typeCol == facFlag;
trainStudentIndic = typeCol == studFlag;
trainFacRows = output(trainFacultyIndic,:);
trainStudRows = output(trainStudentIndic,:);
xVal = cat(1,trainFacRows,trainStudRows);
xVal(:,typeLoc) = [];
numFaculty = size(trainFacRows,1);
numStudent = size(trainStudRows,1);
facY = ones(numFaculty,1);
studY = ones(numStudent,1) + ones(numStudent,1);
yVal = cat(1,facY,studY);

end
