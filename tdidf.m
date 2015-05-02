function [tfidfFaculty,tfidfStudent] = tdidf(xTrain,yTrain,numTF,numTS)

 

  studentIndic = (yTrain == 2);
  facultyIndic = (yTrain == 1);
  studentData = xTrain(studentIndic,:);
  facultyData = xTrain(facultyIndic,:);
  maxStudVal = max(studentData,[],2);
  maxFacVal = max(facultyData,[],2);
  tfFaculty = .5 + ((.5.*facultyData)./(1+maxFacVal));
  tfStudent = .5 + ((.5.*studentData)./(1+maxStudVal));

  transformIndic = (xTrain > 0);
  xTrain(transformIndic) = 1;
  newStudentData = sum(xTrain(studentIndic,:),1);
  newFacultyData = sum(xTrain(facultyIndic,:),1);

  idfFaculty = log(numTF./(1+newStudentData));
  idfStudent = log(numTS./(1+newFacultyData));

  tfidfFaculty = tfFaculty .* idfFaculty;
  tfidfStudent = tfStudent .* idfStudent;

 
