clc;
clear all;
close all;
img = imread('flower2.jpg');
if size(img, 3) == 3
    img_gray = rgb2gray(img);
else
    img_gray = img;
end
img_eq = histeq(img_gray);
[hist_orig, bins_orig] = imhist(img_gray);
[hist_eq, bins_eq] = imhist(img_eq);
subplot(2, 1, 1);
bar(bins_orig, hist_orig, 'b');
title('Original Image Histogram');
xlabel('Intensity Value');
ylabel('Frequency');
xlim([0 255]);
grid on;
subplot(2, 1, 2);
bar(bins_eq, hist_eq, 'r');
title('Equalized Image Histogram');
xlabel('Intensity Value');
ylabel('Frequency');
xlim([0 255]);
grid on;
