function plotall(n, s, w0, w1)
    %3d plot
    data = [0 0; 1 8; 3 8; 4 20];
    f1 = @(w0, w1) loss(w0, w1, data);
    subplot(1, 2, 1);
    fsurf(f1, [-10 10 -10 10]);
    xlabel('w0: y intecept');
    ylabel('w1: slope');
    zlabel('sum of squares of errors');
    hold on;

    %2d plot
    subplot(1, 2, 2);
    plot(data(:,1), data(:,2), 'd');
    ylim([-50 50]);
    xlim([0 10]);
    xlabel('y = w0 + w1 * x');
    x = 0:0.01:10;

    hold on;

    pause(20);
    for i = 1:n
        %3d plot
        w0 = uw0(w0, w1, s, data);
        w1 = uw1(w0, w1, s, data);
        ls = loss(w0, w1, data);
        subplot(1, 2, 1);
        plot3(w0, w1, ls, '*r');
        
    
        view(75, 25);
        
        %2d plot
        y = w0 + w1 * x;
        subplot(1, 2, 2);
        plot(x, y);
        
%        disp(['n:', num2str(i), ' w0:', num2str(w0), ' w1:', num2str(w1), ' loss:', num2str(ls)]);        
        pause(0.1);
    end
    
    hold off;
end