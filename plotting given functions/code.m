% Khushkumar Jajoo
% 9/11/2021,
% ECE 202 Fall 2021
% MATLAB exercise M4
% plotting the given functions

clear
clf

%-----------part(a)--------------
t = linspace(0,6,401); % time array in s
f1 = 1 + t; % first expression to plot on the graph
f2 = 2 - (t.^2); % second expression to plot on the graph
f3 = 3; % third expression to plot on the graph
plot(t,f1 ,t,f2, t,f3, 'LineWidth', 3) % dashes and dots
                                      % thicker line 
xlabel('time t(s)') % labelling the x-axis
ylabel('functions, f1(x), f2x), f3(x)') % labelling the y-axis
title('ECE 202 M4 PART(a), Truncated power series')
figure 

%---------part(b)--------------------
x = linspace(-5,5,401); % array of x in m
g = 4*cos(3*(x-2)); % function for g(x)
plot(x, g, 'r', 'LineWidth', 2) % plotting the graph
axis([-inf inf -6 6]) % setting the vertical axis limits to -6,6
xlabel('x (m)') % labelling the x-axis
ylabel('g(x)') % labelling the y-axis
title('ECE 202 M4 PART(b), Shifted sinusoids')
figure

%----------------part(c)--------------
x = linspace(0,10,401); % array of x, in m
P = exp(-(x-5).^2) ./ 2*(3.14^(1/2)); % in m^-1
plot(x, P, ':', 'LineWidth', 2)% plotting the graph
title('ECE 202 M4 PART(c), Normalized Gaussian', 'FontSize', 24)
xlabel('x (m)', 'FontSize', 20) % labelling the x-axis
ylabel('P (m^-1)', 'FontSize', 20) % labelling the y axis
ax.FontSize = 16; % setting the axis values as per the instructions
figure

%--------------part(d)---------------------

tms = linspace(0,40,401); % array of time in ms
t = tms/1000; % converting array of time in ms to array of time in s
v1 = 16*exp(-800*t) - 4*exp(-200*t); % first expression to be plotted
v2 = 12*exp(-500*t) - 6000*t.*exp(-500*t); % second expression to be 
                                           % plotted
v3 = 12*exp(-120*t).*cos(450*t) - 5*exp(-120*t).*sin(450*t);% third 
                                                            % expression to 
                                                            % be plotted
plot(tms,v1,'r', tms,v2,'g', tms,v3,'b', 'LineWidth', 2)  % plotting the 
                                                          % graph
xlabel('time t(ms)') % labelling the x-axis
ylabel('voltage v(volts)') % labelling the y-axis
title('ECE 202 M4 PART(d), Three dampings for parallel RC')
legend('overdamped v1', 'critically damped v2', 'underdamped v3')






