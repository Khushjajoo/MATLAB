% Khushkumar Jajoo
% 12/1/2021
% ECE 202 Fall 2021
% using matrices to compute partial fractions and checking it
clear 
clf

%-------------Calculation---------------

A = [1 1 1 ; -5 -4 -3 ; 6 3 2];
B = [4; 5; 6];
C = inv(A)*B

%-----------------Check------------------
N = input('Enter number of points: ');  %number of points on the graph
l = linspace(-4,4,N);

D1 = l-1;
D2 = l-2;
D3= l-3;

R = (B(1)*x.^2 + B(2)*x + B(3))./ (D1.*D2.*D3);
R1 = C(1)./D1;
R2 = C(2)./D2;
R3 = C(3)./D3;

check = sum(abs(R-(R1+R2+R3)))
