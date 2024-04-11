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
sigma = input('Enter the standard deviation (sigma) for the Gaussian kernel: ');
[x, y] = meshgrid(-(kernel_size-1)/2:(kernel_size-1)/2, -(kernel_size-1)/2:(kernel_size-1)/2);
gaussian_kernel = exp(-(x.^2 + y.^2) / (2*sigma^2));
gaussian_kernel = gaussian_kernel / sum(gaussian_kernel(:));
laplacian_kernel = del2(gaussian_kernel); 
filtered_image = conv2(double(img_gray), laplacian_kernel, 'same');
filtered_image = uint8(filtered_image);
subplot(1, 2, 1);
imshow(img_gray);
title('Original Image');
subplot(1, 2, 2);
imshow(filtered_image);
title('Laplacian of Gaussian (LoG) Filtered Image');
