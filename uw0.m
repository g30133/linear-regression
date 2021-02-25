function y = uw0(w0, w1, stepsize, data)
    errorsum = 0;
    npts = size(data, 1);
    for i=1:npts
       pt = data(i,:);
       xi = pt(1);
       yi = pt(2);
       error = yi - (w0 + w1 * xi);
       errorsum = errorsum + error;
       %disp(['xi:', num2str(xi), ' yi:', num2str(yi), ' error:', num2str(error), ' errorsum:', num2str(errorsum)]);
    end
    y = w0 + stepsize * errorsum;
end