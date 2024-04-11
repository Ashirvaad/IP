clc;
clear all;
close all;
img = imread('flower.jpg');

if size(img, 3) == 3
    img_gray = rgb2gray(img);
else
    img_gray = img;
end
contrast_factor = input('Enter the contrast adjustment factor (e.g., 1.5 for increase, 0.5 for decrease): ');
adjusted_image = imadjust(img_gray, [], [], contrast_factor);
figure;

subplot(1, 2, 1);
imshow(img_gray);
title('Original Image');
subplot(1, 2, 2);
imshow(adjusted_image);
title('Adjusted Image');
