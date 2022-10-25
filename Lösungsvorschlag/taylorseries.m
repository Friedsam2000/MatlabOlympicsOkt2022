function requiredTerms = taylorseries(x)
    ex = 0;
    error = abs(exp(x) - ex);
    
    requiredTerms = 0; 
    while error > 0.001
        ex = ex + (x^requiredTerms)/factorial(requiredTerms);
        error = abs(exp(x) - ex);
        requiredTerms = requiredTerms + 1;
    end

end