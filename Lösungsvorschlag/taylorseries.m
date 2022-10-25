function requiredTerms = taylorseries(x)
    ex = 0;
    error = abs(exp(x) - ex);
    
    requiredTerms = -1; 
    while error > 0.001
        requiredTerms = requiredTerms + 1;
        ex = ex + (x^requiredTerms)/factorial(requiredTerms);
        error = abs(exp(x) - ex);
    end

end