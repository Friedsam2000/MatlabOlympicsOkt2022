function n = taylorseries(x)
    ex = 0;
    error = abs(exp(x) - ex);
    
    n = -1; 
    while error > 0.001
        n = n + 1;
        ex = ex + (x^n)/factorial(n);
        error = abs(exp(x) - ex);
    end

end