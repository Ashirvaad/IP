clc;
clear all;

img = imread('car4.jpg');

row = size(img,1);
col = size(img,2);

imgo = zeros(1, 256);

for i = 1:row
    for j = 1:col
        pixel_value = img(i, j) + 1; % Adjust for MATLAB indexing
        imgo(pixel_value) = imgo(pixel_value) + 1;
    end
end

% Image plotting histogram

subplot(1, 2, 1);
imshow(img), title('Original Image');

subplot(1, 2, 2);
bar(imgo), title('Histogram');
xlabel('Gray Level');
ylabel('Number of image pixels');
