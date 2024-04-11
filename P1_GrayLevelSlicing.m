clc;
clear all;
close all;
img = imread('flower2.jpg');

imgg = rgb2gray(img);
[row, col] = size(imgg);
L = 256;
r1 = input('Enter the 1st Contrast Point: ');
r2 = input('Enter the 2nd Contrast Point: ');
choice = input('Enter 1 for With Background, 0 for Without Background: ');
imgcon = zeros(row, col);
if choice == 1
    imgcon(imgg >= r1 & imgg <= r2) = imgg(imgg >= r1 & imgg <= r2);
else
    imgcon(imgg >= r1 & imgg <= r2) = L - 1;
end

subplot(1, 2, 1);
imshow(imgg);
title('Original Image');
subplot(1, 2, 2);
imshow(uint8(imgcon));
title('Output Image');
