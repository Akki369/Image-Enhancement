clc;
clear all;
close all;
load trees;  %  Loading the image
I = ind2gray(X,map);  % Converting the image to grey scale image
J = imnoise(I,'salt & pepper');  % Adding the salt and pepper noise to the grey scale image

% Filtering with Median filter

M = medfilt2(J);  %  Passing the image through a median filter

figure(1)
imshowpair(J,M,'montage');  % Display the image and filtered image side by side
title('Filtered image using Median filter');

% Filtering USING windowing method (Low pass filter)

N=21;
h=fir1(N-1,0.4,hamming(N)); % Hamming window                                            
h1=ftrans2(h);                                                                
freqz2(h1);  % Frequency response
title('Low pass filter');
L = filter2(h1,J);  % Filtering the image through low pass filter

figure(2)
imshowpair(J,L,'montage');  % Display the image and filtered image side by side
title('Filtered image using Low pass filter');