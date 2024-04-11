clc;
clear all;
close all;
img = imread('flower2.jpg');

if size(img, 3) == 3
    img_gray = rgb2gray(img);
else
    img_gray = img;
end
gamma = input('Enter the gamma value for power law transformation: ');
transformed_image = double(img_gray).^gamma;
transformed_image = uint8(255 * (transformed_image / max(transformed_image(:))));

subplot(1, 2, 1);
imshow(img_gray);
title('Original Image');
subplot(1, 2, 2);
imshow(transformed_image);
title('Transformed Image');