clc;
clear all;
close all;
load trees;       %  Loading the image
I = ind2gray(X,map);  % Converting the image to grey scale image
J = imnoise(I,'salt & pepper');  % Adding the salt and pepper noise to the grey scale image
J_fil = medfilt2(J);  %  Passing the image through a median filter
imshowpair(J,J_fil,'montage');  % Display the image and filtered image side by side
