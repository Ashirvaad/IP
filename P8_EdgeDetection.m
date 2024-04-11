clc;
clear all;
close all;
img = imread('png.png');
imgg = rgb2gray(img);
se1 = strel('disk', 6); % se1 [111; 111; 111]
imgEro = imerode(imgg, se1);
imgo = imgg - imgEro;
subplot(1, 2, 1); imshow(imgg); title('Original Image');
subplot(1, 2, 2); imshow(imgo); title('Output Boundary Detection');