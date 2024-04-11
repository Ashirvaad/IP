clc;
clear all;
close all;
img = imread('flower2.jpg');
if size(img, 3) == 3
    img_gray = rgb2gray(img);
else
    img_gray = img;
end
[counts, bins] = imhist(img_gray);
bar(bins, counts);
title('Histogram of Grayscale Image');
xlabel('Intensity Value');
ylabel('Frequency');
xlim([0 255]); % Limit x-axis to intensity range [0, 255]
grid on;
