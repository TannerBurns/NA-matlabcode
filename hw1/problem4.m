%Tanner Burns -tjb102
%Problem4 
%did not use a loop since it was a small amount of iterations
%conclusion at the bottom
%initialize
x0=0;

%functions f1 = given, f2 = derivative of f1
f1 = @(x) x^3 - x - 3;
f2 = @(x) 3*(x^2) - 1;

%calculate iterations
x1 = x0 - (f1(x0)/f2(x0));
x2 = x1 - (f1(x1)/f2(x1));
x3 = x2 - (f1(x2)/f2(x2));
x4 = x3 - (f1(x3)/f2(x3));
x5 = x4 - (f1(x4)/f2(x4));
x6 = x5 - (f1(x5)/f2(x5));
x7 = x6 - (f1(x6)/f2(x6));

%print iterations
fprintf(1, 'Iteration 1: %f\n',x1);
fprintf(1, 'Iteration 2: %f\n',x2);
fprintf(1, 'Iteration 3: %f\n',x3);
fprintf(1, 'Iteration 4: %f\n',x4);
fprintf(1, 'Iteration 5: %f\n',x5);
fprintf(1, 'Iteration 6: %f\n',x6);
fprintf(1, 'Iteration 7: %f\n',x7);

%Conclusion: It can be seen that x^3-x-3 produces a cyclic sequence, where
%it is repeating every 4th iteration. This means it does not converge with
%an initial value of 0.



    