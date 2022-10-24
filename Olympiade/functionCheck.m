function functionCheck()
% !!!! p-code this file before distributing !!!!



%% Problem 1
try
    if gruppenalter([23, 33, 43]) == mean([23, 33, 43])
        fprintf('\t1) gruppenalter :\t\tcorrect\n');
    else
        fprintf('\t1) gruppenalter:\t\twrong\n');
    end
catch
    fprintf('\t1) gruppenalter:\t\twrong\n');
end

%% Problem 2
try
    sum1 = rollTheDice(4,10);
    sum2 = rollTheDice(4,10);
    sum3 = rollTheDice(4,10);
    if (sum1 ~= sum2 || sum2 ~= sum3) && min([sum1,sum2,sum3]) >= 4 && max([sum1,sum2,sum3]) <= 4*10
        fprintf('\t2) rollTheDice:\t\t\tcorrect\n');
    else
        fprintf('\t2) rollTheDice:\t\t\twrong\n');
    end
catch
    fprintf('\t2) rollTheDice:\t\t\twrong\n');
end

%% Problem 3

force = [1,2,3];
distance = [1,4,1];

try
    if all(reshape(momentenberechnung(force, distance), 1, []) == cross(distance, force))
        fprintf('\t3) momentenberechnung:\t\tcorrect\n');
    else
        fprintf('\t3) momentenberechnung:\t\twrong\n');
    end
catch
    fprintf('\t3) momentenberechnung:\t\twrong\n');
end

%% Problem 4
try
    if PrimzahlCheck(13) && ~PrimzahlCheck(4)
        fprintf('\t4) PrimzahlCheck:\t\tcorrect\n');
    else
        fprintf('\t4) PrimzahlCheck:\t\twrong\n');
    end
catch
    fprintf('\t4) PrimzahlCheck:\t\twrong\n');
end

%% Problem 5
try
    ergebnis = taylorseries(13);
    
    if ergebnis == 39
        fprintf('\t5) taylorseries:\t\tcorrect\n');
    else
        fprintf('\t5) taylorseries:\t\twrong\n');
    end
catch
    fprintf('\t5) taylorseries:\t\twrong\n');
end

%% Problem 6
try
    [weltmeister,semifinals] = weltmeisterschaft;
    
    size_of_semifinals = size(semifinals);
    
   if ischar(weltmeister{1}) && ischar(semifinals{4}) && size_of_semifinals(1) == 4 && size_of_semifinals(2) == 1
       fprintf('\t6) Weltmeisterschaft:\t\tcorrect\n');
   else
      fprintf('\t6) Weltmeisterschaft:\t\twrong\n');
   end
  
catch
      fprintf('\t6) Weltmeisterschaft:\t\twrong\n');
end



%% Problem 7
try
    mean_given = 10;
    standarddev_given = 2;
    rng(10);
    [mean_approx,standarddev_approx] = MonteCarlo(mean_given,standarddev_given);
    
    if abs(mean_given-mean_approx) < 0.1 && abs(standarddev_given-standarddev_approx) < 0.1 && mean_given ~= mean_approx && standarddev_given ~= standarddev_approx
        fprintf('\t7) MonteCarlo:\t\t\tcorrect\n');
    else
        fprintf('\t7) MonteCarlo:\t\\ttwrong\n');
    end
catch
    fprintf('\t7) MonteCarlo:\t\t\twrong\n');
end

%% Problem 8 (vierplots)


fprintf('\t8) Vier Plots: \t\t\trichtig NUR WENN plots identisch aussehen \n');



%% Problem 9

try
    keyword = evalin('base', 'keyword');
    
    if strcmp(keyword, 'MerryLockd0wn')
        fprintf('\t9) ObjectDetection:\t\tcorrect\n');
    else
        fprintf('\t9) tObjectDetection:\t\twrong\n');
    end
catch
    fprintf('\t9) ObjectDetection:\t\twrong\n');
end
