clc;
clear all;
close all;

load trees  %  Loading the image
I = ind2gray(X,map);  % Converting the image to grey scale image
figure
imshow(I);  % Display the image
h = fspecial('unsharp');
J = mat2gray(filter2(h,I),[0 1]);  % Intensity Transformation

figure
imshow(J);

K = mat2gray(filter2(h,I)); % Filtering the Image through unsharp High pass filter
figure
imshow(K);  % Display the filtered image
title('picture after "unsharp" HP filter');

h1 = [0 -1 0; -1 5 -1; 0 -1 0];  % High Pass Filter_1
L = mat2gray(filter2(h1,I));  % Filtering the Image through High pass filter_1
figure
imshow(L);  % Display the filtered image
title('HP-1 Filtered image');

h2 = [1 -2 1; -2 5 -2; 1 -2 1];  % High Pass Filter_2
M = mat2gray(filter2(h2,I));  % Filtering the Image through High pass filter_2
figure
imshow(M);  % Display the filtered image
title('HP-2 Filtered image');

h3 = (1/7)*[-1 -2 -1; -2 19 -2; -1 -2 -1];    % High Pass Filter_3
N = mat2gray(filter2(h3,I));  % Filtering the Image through High pass filter_3
figure
imshow(N);  % Display the filtered image
title('HP-3 Filtered image');

%Frequency response of high pass filters
F = freqz2(h);  %Frequency response of Unwrap High pass filters
F1 = freqz2(h1);  %Frequency response of High pass filter_1
F2 = freqz2(h2);  %Frequency response of High pass filter_2
F3 = freqz2(h3);  %Frequency response of High pass filter_3

figure
subplot(2,2,1);  % Plot the frequency response function of Unsharp High pass filter
surf(F);
title('Unsharp filter frequency response');
subplot(2,2,2);  % Plot the frequency response function of High pass filter_1
surf(F1);
title('first HP filter frequency response');
subplot(2,2,3);
surf(F2);  % Plot the frequency response function of High pass filter_2
title('second HP filter frequency response');
subplot(2,2,4);
surf(F3);  % Plot the frequency response function of High pass filter_3
title('third HP filter frequency response');