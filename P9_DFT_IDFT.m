clc;
clear;
close all;
img = imread("pic1.jpg");
if size(img, 3) == 3
    img = rgb2gray(img);
end
img = double(img);
dft_img = fft2(img);
reconstructed_img = ifft2(dft_img);
subplot(3, 1, 1);
imshow(uint8(img));
title('Input image');
subplot(3, 1, 2);
imshow(log(abs(fftshift(dft_img)) + 1), []);
title('Magnitude of DFT');
subplot(3, 1, 3);
imshow(uint8(abs(reconstructed_img)));
title('Reconstructed image after IDFT');