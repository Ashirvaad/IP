clc;
clear all;
close all;
ogImage = imread('flower.jpg');

imgg = rgb2gray(ogImage);
row = size(imgg, 1);
col = size(imgg, 2);
constant = input('Enter The Logarithmic Factor: ');
 imglog = constant * log(1+ double(imgg));

 subplot(1,2,1);
 imshow(imgg);
 title('Original Image');
 subplot(1,2,2);
 imshow(imglog);
 title('OutPut Image');