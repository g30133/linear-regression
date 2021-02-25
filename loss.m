function y = loss(w0, w1, data)
    errorsquaredsum = 0;
    npts = size(data, 1);
    for i=1:npts
       pt = data(i,:);
       xi = pt(1);
       yi = pt(2);
       error = yi - (w0 + w1 * xi);
       errorsquaredsum = errorsquaredsum + (error^2);
       %disp(['xi:', num2str(xi), ' yi:', num2str(yi), ' error:', num2str(error), ' errorsquaredsum:', num2str(errorsquaredsum)]);
    end
    y = errorsquaredsum;
    %disp(['errorsquaredsum:', num2str(errorsquaredsum), ' lossy:', num2str(y)]);
end