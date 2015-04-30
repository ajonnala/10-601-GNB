function [tfFaculty,tfStudent] = tdidf(xTrain,yTrain)
  studentIndic = (yTrain == 2);
  facultyIndic = (yTrain == 1);
  studentData = sum(xTrain(studentIndic,:),1);
  facultyData = sum(xTrain(facultyIndic,:),1);
  maxStudVal = max(studentData);
  maxFacVal = max(facultyData);
  tfFaculty = .5 + ((.5*facultyData)/maxFacVal);
  tfStudent = .5 + ((.5*studentData)/maxStudVal);

  transformIndic = (xTrain > 0);
  newXTrain = xTrain(transformIndic) = 1;
  newStudentData = sum(newXTrain(studentIndic,:),1);
  newFacultyData = sum(newXTrain(facultyIndic,:),1);
  idfFaculty = log(1/newStudentData);
  idfStudent = log(1/newFacultyData);

  tfidfFaculty = tfFaculty .* idfFaculty;
  tfidfStudent = tfStudent .* idfStudent;

 
