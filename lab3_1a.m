clc;
clear all;
close all;

% Median filtering 20*20 matrix

A = zeros(20);

A(6:15,6:15) = ones(10);  % Generating a 20*20 matrix

M1 = medfilt2(A,[3 3]);  % Median filtering the image by 3*3 median filter

figure
imshow(M1);  % Display the image
title('Median filtering the image with filter size of 3*3');

figure
M2 = medfilt2(A,[5 5]);  % Median filtering the image by 5*5 median filter
imshow(M2);  % Display the image
title('Median filtering the image with filter size of 5*5');

% Median filtering 200*200 matrix

A = zeros(200);

A(51:150,51:150) = ones(100);  % Generating a 20*20 matrix

M3 = medfilt2(A,[3 3]);  % Median filtering the image by 3*3 median filter

figure
imshow(M3);  % Display the image
title('Median filtering the image with filter size of 3*3');

figure
M4 = medfilt2(A,[5 5]);  % Median filtering the image by 5*5 median filter
imshow(M4);  % Display the image
title('Median filtering the image with filter size of 5*5');

