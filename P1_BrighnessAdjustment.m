clc;
close all;
clear all;
img = imread('flower.jpg');

brightness_factor = input('Enter the brightness adjustment factor (e.g., 50 for increase, -50 for decrease): ');
adjusted_image = img + brightness_factor;
adjusted_image = max(adjusted_image, 0);
adjusted_image = min(adjusted_image, 255);
figure;

subplot(1, 2, 1);
imshow(img);
title('Original Image');
subplot(1, 2, 2);
imshow(adjusted_image);
title('Adjusted Image');
