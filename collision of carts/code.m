% Khushkumar Jajoo
% 9/11/2021
% ECE 202 Fall 2021
% MATLAB exercise M3
% finding the number of colissions and checking their velocities after
% each collision between three carts.

clear

%---------given information-------------

m = [240 60 300] % array of masses of the three carts, in g
vi = [36 9 -45] % array of velocities of the three carts, in cm/s

%--------calculation---------------

pi = sum(m.*vi) % total initial momentum, in g*cm/s
KEi = sum(m.*(vi.^2)) % total initial kinetic enegry, in erg

% collision between cart#2 and cart#3 will happen first

M = m(2) + m(3); % total mass of cart#1 and cart #2, in g

vf = [36 0 0]

vf(2) = ((m(2)-m(3))*vi(2) + 2*m(3)*vi(3))/M % final velocity of cart#1, 
                                             % in cm/s
                                
vf(3) = (2*m(2)*vi(2) + (m(3) - m(2))*vi(3))/M % final velocity of cart#2, 
                                               % in cm/s

p1 = sum(m.*vf) % total momentum after first colission, in g*cm/s
KE1 = sum(m.*(vf.^2)) % total kinetic enegry after first colission, in erg

