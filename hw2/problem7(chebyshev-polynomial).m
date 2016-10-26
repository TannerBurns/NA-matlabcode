function chebyshev

clear all;

% Exact Discretization z:

m = 100;  
for i = 1:m+1; 
    cr(i) = -1 + (i-1)*(2/m);
    z(i) = R(cr(i));
end

nc = 6; nf = 16;

% Low degree case:
n = nc; 
for i = 1:n+1;
    x(i) = cos((2*(i-1)+1)*pi/(2*n+2)); 
    y(i) = R(x(i)); 
end

pl = polyfit(x,y,n);
yl = polyval(pl,cr);

error_c = max(yl - z);

figure(1);
plot(cr,yl,'r',cr,z,'b')
grid on

pause(1) 

% high degree case:
n = nf;  
for i = 1:n+1; 
    x(i) = cos((2*(i-1)+1)*pi/(2*n+2)); 
    y(i) = R(x(i)); 
end

ph = polyfit(x,y,n);
yh = polyval(ph,cr);

error_f = max(yh - z);

figure(2);
plot(cr,yh,'r',cr,z,'b')
grid on

pause(2)

fprintf('\n Error at coarse and fine are '); 

fprintf('%12.18e %12.18e\n',error_c,error_f); 

fprintf('\n'); 

function rv = R(x)
rv = 1/(1+25*x^2);
%rv = exp(10*(x^2));


