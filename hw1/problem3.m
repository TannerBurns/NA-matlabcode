%Tanner Burns -tjb102
%Problem3
%initialize values
xzero=4;
pi=3.1416;

%compute xvalues
xone = xzero - (sin(xzero)/cos(xzero));
xtwo = xone - (sin(xone)/cos(xone));
xthree = xtwo - (sin(xtwo)/cos(xtwo));

%print xvalues
fprintf(1,'x1 = %f\n',xone);
fprintf(1,'x2 = %f\n',xtwo);
fprintf(1,'x3 = %f\n',xthree);

%compute absolute errors
ezero = abs(xzero - pi);
eone = abs(xone - pi);
etwo = abs(xtwo - pi);
ethree = abs(xthree - pi);

%print absolute errors
fprintf(1,'\n');
fprintf(1, 'Abosulte error x0: %f\n',ezero);
fprintf(1, 'Abosulte error x1: %f\n',eone);
fprintf(1, 'Abosulte error x2: %f\n',etwo);
fprintf(1, 'Abosulte error x3: %f\n',ethree);

%compute order of convergence
cone = log(etwo/eone)/log(eone/ezero);
ctwo = log(ethree/etwo)/log(etwo/eone);

%print order of convergence
fprintf(1, '\n');
fprintf(1, 'Order of convergence : %f\n',cone);
fprintf(1, 'Order of convergence : %f\n',ctwo);
