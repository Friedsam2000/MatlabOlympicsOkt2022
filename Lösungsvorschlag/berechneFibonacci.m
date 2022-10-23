function fib = berechneFibonacci(n)

if n == 1 || n == 2
    fib = 1;
elseif n >= 3
    fib = berechneFibonacci(n-1) + berechneFibonacci(n-2);
else
    error('n muss größer als 0 sein!');
end


end

