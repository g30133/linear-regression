function plots3d(n, s, w0, w1)
    data = [0 0; 1 8; 3 4; 4 20];
    
    %plot(data(:,1), data(:,2), 'd');
    %ylim([-50 50]);
    %xlim([0 10]);
    %x = 0:0.01:10;
    
    f1 = @(w0, w1) loss(w0, w1, data);
    fsurf(f1, [-10 10 -10 10]);
    hold on;
    
    for i = 1:n
        %y = w0 + w1 * x;
        %plot(x, y);
        %ylim([-50 50]);
        %xlim([0 10]);
        w0 = uw0(w0, w1, s, data);
        w1 = uw1(w0, w1, s, data);
        ls = loss(w0, w1, data);
        plot3(w0, w1, ls, '*r');
        
        disp(['n:', num2str(i), ' w0:', num2str(w0), ' w1:', num2str(w1), ' loss:', num2str(ls)]);
        pause(0.5);
    end
    
    hold off;
    
end

