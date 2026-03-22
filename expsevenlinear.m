x = [1 2 2.5 3 4 5];
F = [0 5 7 6.5 2 0];


for i = 2:5

    L1 = (x(i)-x(i+1))/(x(i-1)-x(i+1));
    L2 = (x(i)-x(i-1))/(x(i+1)-x(i-1));

    Fr(i) = L1 * F(i-1) + L2 * F(i+1);

    fprintf('Value for Fx at %.2f is %.2f\n', x(i), Fr(i));
end
