% Sept/2016
%
% Solve f(x)=0 using false_position method.
%
% The function is defined in func(x)
%
% Input

tol = 1.e-3;

a = 1.0;
b = 2.0;
nmax = 100;

%Initialization

itcount = 0;
error = 1.0;

%Graphing function

xval = linspace(a,b,100);
for i=1:100
	fval(i) = func(xval(i));
end

plot(xval,fval);
grid on;
hold on;

%Iteration begins

while (itcount <= nmax && error >= tol)
	
	itcount = itcount + 1;
	
	%Generate and save iteraters / false_position algorithm
	x = a - ((b-a)/(func(b)-func(a))) * func(a);
	z(itcount) = x;

	fa = func(a); 
	fb = func(b);
   	fx = func(x); 

   	error = abs(fx);
	%error = abs(x - xold);
   
   	if (error < tol)
      	x_final = x;
   	% Intermediate Value Theorem Here   
   	else
      	if (fa*fx < 0)
      	% root is between a and x
         	b = x;
      	else
      	% root is between x and b
         	a = x;
      	end
   end
   
   plot(z(1:itcount),zeros(itcount,1),'r+');

   %pause(2)   
end


if (itcount < nmax);

  val = func(x);
  
  fprintf(1,'Converged solution after %5d iterations',itcount);

  fprintf(1,' is %15.7e, %e \n',x_final, val);

else

  fprintf(1,'Not converged after %3d iterations',nmax);

end	