clc;
clear all;
close all;
img = imread('flower2.jpg');
if size(img, 3) == 3
    img_gray = rgb2gray(img);
else
    img_gray = img;
end
filter_size = input('Enter the size of the filter kernel (e.g., 3 for 3x3 filter): ');
filter_kernel = ones(filter_size) / (filter_size^2);
filtered_image = conv2(double(img_gray), filter_kernel,'same');
filtered_image = uint8(filtered_image);
subplot(1, 2, 1);
imshow(img_gray);
title('Original Image');
subplot(1, 2, 2);
imshow(filtered_image);
title('Filtered Image');
