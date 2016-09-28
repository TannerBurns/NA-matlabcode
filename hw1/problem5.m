%Tanner Burns -tjb102
%Problem5
%adapted from bisection algorithm given on tracs - removed graphing part
%since it was not asked for in question
tol = 1.e-5;
a=0;
b=1;

f1 = @(x) exp(x) - (x^2) + (3*x) - 2;

nmax = 100;

itcount = 0;
error = 1.0;

while(itcount <= nmax && error >= tol)
    itcount = itcount +1;
    
    x=a+(b-a)/2;
    
    fa = f1(a);
    fb = f1(b);
    fx = f1(x);
    
    error = abs(fx);
    
    if(error<tol)
        x_fin=x;
    else
        if(fa*fx < 0)
            b=x;
        else
            a=x;
        end
    end
    
end

if (itcount < nmax);
    val = f1(x);
    
    fprintf(1,'Converged solution after %5d iterations',itcount);

    fprintf(1,' is %15.7e, %e \n',x_fin, val);
else
    
    fprintf(1,'Not converged after %3d iterations',nmax);
    
end
    
    

