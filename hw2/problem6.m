clear all;

%functions
f1= @(x) 1/(1+25*(x^2));
f2= @(x) exp(10*(x^2));

%interval [-1,1]
a=-1;
b=1;

m = 100;  
for i = 1:m+1; 
    cr(i) = -1 + (i-1)*(2/m);
    z(i) = f1(cr(i));
end

nl=6;nh=16;
%lower order
n=nl;
for i = 1:n+1;
    x(i) = -1 + (i-1)*(2/n);
    y(i) = f1(x(i));
end


pl = polyfit(x,y,n);
yl = polyval(pl,cr);

error_c = max(abs(yl - z));

figure(1);
plot(cr,yl,'r',cr,z,'b')
grid on


%high order
n=nh;
for i = 1:n+1;
    x(i) = -1 + (i-1)*(2/n);
    y(i) = f1(x(i));
end

ph = polyfit(x,y,n);
yh = polyval(ph,cr);

error_f = max(abs(yh - z));

figure(2);
plot(cr,yh,'r',cr,z,'b')
grid on

fprintf('\n Error at coarse and fine are '); 

fprintf('%12.18e %12.18e\n',error_c,error_f); 

fprintf('\n'); 