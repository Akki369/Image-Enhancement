clc;
clear all;
close all;

load trees  %  Loading the image
I = ind2gray(X,map);  % Converting the image to grey scale image

figure
subplot(2,1,1);
imshow(I);  % Display the Image
title('image');
subplot(2,1,2);
imhist(I);  % Display the Histogram of the image
title('image histogram');

figure
n = 16; % Levels of Histogram
J = histeq(I,n);  % Histogram eqilization 
subplot(2,1,1);
imshow(J);  % Display the equalized gray scale image
title('image, 16 levels of gray');
subplot(2,1,2);
imhist(mat2gray(J));  % Display the equalised histogram
title('image histogram, 16 levels of gray');

figure
hgram = 1:-0.1:0;  % Levels of equalization
K = histeq(I,hgram);  % Histogram equlization of the image
subplot(2,1,1);
imshow(mat2gray(K));  % Display the equalized image
title('image, desired levels of gray');
subplot(2,1,2);
m = length(hgram);  % Equalization length of the histogram
imhist(J,m);  % Display the equalized histogram
title('image histogram, desired levels of gray');