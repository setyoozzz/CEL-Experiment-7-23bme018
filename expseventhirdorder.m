x = [1 2 2.5 3 4 5];
f = [0 5 7 6.5 2 0];

for i = 2:5
    if i == 2 
        idx = [1 3 4 5];
    elseif i == 3  
        idx = [1 2 4 5];
    else 
        idx = [1 i-1 i-2 5];
        
    end

    x0 = x(idx(1)); f0v = f(idx(1));
    x1 = x(idx(2)); f1v = f(idx(2));
    x2 = x(idx(3)); f2v = f(idx(3));
    x3 = x(idx(4)); f3v = f(idx(4));

    L0 = (x(i)-x1)*(x(i)-x2)*(x(i)-x3)/((x0-x1)*(x0-x2)*(x0-x3));
    L1 = (x(i)-x0)*(x(i)-x2)*(x(i)-x3)/((x1-x0)*(x1-x2)*(x1-x3));
    L2 = (x(i)-x0)*(x(i)-x1)*(x(i)-x3)/((x2-x0)*(x2-x1)*(x2-x3));
    L3 = (x(i)-x0)*(x(i)-x1)*(x(i)-x2)/((x3-x0)*(x3-x1)*(x3-x2));
    F = f0v*L0 + f1v*L1 + f2v*L2 + f3v*L3;
    fprintf('value for fx at %.2f is %.4f\n', x(i), F);
end