function vierplots()
    figure

    subplot(2,2,1);
    x_a = [0 15 30];
    y_a = [0 3 0];
    plot(x_a,y_a,'b.-'), grid on, title('(a)')
    
    subplot(2,2,2);
    x_b(1:2:8) = 0;
    x_b(2:2:8) = 1;
    y_b = 1:8;
    plot(x_b,y_b,'b.-'), grid on, title('(b)')
    
    subplot(2,2,3);
    x_c = [0:10 10:-1:0]; 
    y1 = [repmat([1 0],1,5) 1]; 
    y2 = y1 + 3; 
    y_c = [y1 y2];  
    plot(x_c,y_c,'b.-'), grid on, title('(c)')

    subplot(2,2,4);
    x1 = 1:20; 
    x2 = x1 + 10; 
    x_d(1:2:40) = x1; 
    x_d(2:2:40) = x2;
    y_d = 1:40;
    plot(x_d,y_d,'b.-'), grid on, title('(d)')

end