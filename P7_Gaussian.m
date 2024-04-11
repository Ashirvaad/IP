clc;
clear all;
close all;
img = imread('flower2.jpg');
if size(img, 3) == 3
    img_gray = rgb2gray(img);
else
    img_gray = img;
end
filter_size = 5; % Filter size (odd number)
sigma = 1; % Standard deviation
filter_kernel = fspecial('gaussian', [filter_size filter_size], sigma);
filtered_image = imfilter(img_gray, filter_kernel);
subplot(1, 2, 1);
imshow(img_gray);
title('Original Image');
subplot(1, 2, 2);
imshow(filtered_image);
title('Gaussian Filtered Image');
