function vierplots()
    figure

    subplot(2,2,1);
    x_1 = [0 15 30];
    y_1 = [0 3 0];
    plot(x_1,y_1,'b.-'), grid on, title('(a)')
    
    subplot(2,2,2);
    x_2(1:2:8) = 0;
    x_2(2:2:8) = 1;
    y_2 = 1:8;
    plot(x_2,y_2,'b.-'), grid on, title('(b)')
    
    subplot(2,2,3);
    x_3 = [0:10 10:-1:0]; % bottom x_s followed by top x3s (reverse)
    y1 = [repmat([1 0],1,5) 1]; % bottom y_s
    y2 = y1 + 3; % top y_s (no need to be reversed)
    y_3 = [y1 y2]; % put the y_s together    
    plot(x_3,y_3,'b.-'), grid on, title('(c)')

    subplot(2,2,4);
    x1 = 1:20; % left
    x2 = x1 + 10; % right
    x_4(1:2:40) = x1; % insert the left x_s (odd)
    x_4(2:2:40) = x2; % insert the right x_s (even)
    y_4 = 1:40;
    plot(x_4,y_4,'b.-'), grid on, title('(d)')

end