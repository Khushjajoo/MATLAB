% Khushkumar Jajoo
% 9/11/2021,
% ECE 202 Fall 2021
% MATLAB exercise M5
% To expand a sinusoid product as a sum of two sinusoids and plotting
% all three functions on one graph.
% source: http://hyperphysics.phy-astr.gsu.edu/hbase/trid.html
% cos(a)*cos(b) = 1/2*(cos(a + b) + cos(a - b))

clear
clf

%----------------- given ------------------

tms = linspace(-100,100,401); % time array, in ms
t = tms/1000; % converting the time array from ms to s
k = 15; % factor which is to be used
a = 80*t + 1.2;  % the first angle in the product sinusoid
b = 120*t - 1.8; % the second angle in the product sinusoid

f = k*cos(a).*cos(b);

%----------------- calculation ---------------------

 s1 = (k/2)*cos(a+b); % the first term in the sum of sinusoids
 s2 = (k/2)*cos(a-b); % the second term in the sum of sinusoids

 %----------------- plotting and creating array for check ------------

 checking_array = (s1 + s2) - f; % array which checks the differnece of the
                                 % two functions. All elements should be
                                 % approximately zero.
 
 % plotting the function and plotting the first and  second sinusoid
 % and the checking array which is zero.
 plot(tms, f, tms, s1, tms, s2, tms, checking_array, 'LineWidth', 2)
 ax = gca;
 ax.FontSize = 16;
 ylim([-20 30]);
 xlabel('time t (ms)',  'FontSize', 20) % labelling the x-axis
 ylabel('f(t)',  'FontSize', 20) % labelling the y-axis
 title({'ECE 202 M5: Showing that product of sinusoid as sum of ', ...
       'two sinusoids.'}, 'FontSize', 24)
 legend('product f(t)', 's1 First term in the sum of sinusoids', ...
        's2 Second term in the sum of sinusoids',...
        'Checking array = (s1 + s2) - f, should be zero',...
        'FontSize', 20)
 grid on
 ax.GridAlpha = 0.3;
 
 %---------------- check for each element in the check array -----------
 
 checkingSum = sum(abs(checking_array)) % should be a very small
                                        % value close to zero.

 % We are using the absolute function so that all the elements be with
 % the same sign and hence, do not cancel each other out and still their
 % sum be very close to zero, hence verifying that all the elements are
 % very close to zero.