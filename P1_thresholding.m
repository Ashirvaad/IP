clc;
clear all;
close all;
img = imread('flower.jpg');

if size(img, 3) == 3
    img_gray = rgb2gray(img);
else
    img_gray = img;
end
threshold_value = input('Enter the threshold value: ');
binary_image = img_gray > threshold_value;
subplot(1, 2, 1);
imshow(img_gray);
title('Original Image');
subplot(1, 2, 2);
imshow(binary_image);
title('Thresholded Image');
