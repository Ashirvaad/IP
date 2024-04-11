clc;
clear all;
close all;
img = imread('flower2.jpg');
if size(img, 3) == 3
    img_gray = rgb2gray(img);
else
    img_gray = img;
end
kernel_size = input('Enter the size of the filter kernel (odd number, e.g., 3, 5, 7, ...): ');
laplacian_kernel = -ones(kernel_size); 
laplacian_kernel(floor(kernel_size/2) + 1, floor(kernel_size/2) + 1) = kernel_size^2 - 1; % Center element
highpass_filtered_image = conv2(double(img_gray), laplacian_kernel, 'same');
highpass_filtered_image = uint8(highpass_filtered_image);
subplot(1, 2, 1);
imshow(img_gray);
title('Original Image');
subplot(1, 2, 2);
imshow(highpass_filtered_image);
title('High-Pass Filtered Image');
