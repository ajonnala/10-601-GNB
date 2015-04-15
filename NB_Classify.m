function [yHat] = NB_Classify(D, p, XTest)
  m = size(XTest, 1);
  yHat = zeros(m, 1);

  for i = 1:m
    fac_probs = D(1,:) .* XTest(i,:) + (1 - D(1,:)) .* (1 - XTest(i,:));
    student_probs = D(2,:) .* XTest(i,:) + (1 - D(2,:)) .* (1 - XTest(i,:));

    fac_score = logProd([log(fac_probs), log(p)]);
    student_score = logProd([log(student_probs), log(1-p)]);
    
    if fac_score > student_score
      yHat(i) = 1;
    else
      yHat(i) = 2;
    end
  end
end

