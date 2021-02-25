function y = uw1(w0, w1, stepsize, data)
    errorxsum = 0;
    npts = size(data, 1);
    for i=1:npts
        pt = data(i,:);
        xi = pt(1);
       yi = pt(2);
       error = yi - (w0 + w1 * xi);
       errorx = error * xi;
       errorxsum = errorxsum + errorx;
       %disp(['xi:', num2str(xi), ' yi:', num2str(yi), ' errorx:', num2str(errorx), ' errorxsum:', num2str(errorxsum)]);
    end
    y = w1 + stepsize * errorxsum
end
