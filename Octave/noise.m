pkg load image

noise_sigma = 3;
image_path = "dol.jpeg";

img = imread(image_path);
noise = randn(size(img)) .* noise_sigma;  # Gaussian Noise

img_noise = img + noise;

img_noise_salt_paper = imnoise(img, 'salt & pepper', 0.02); # Salt & Paper noise

figure();
imshow(img);

figure();
imshow(img_noise);