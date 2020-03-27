pkg load image

k_size = 5;
sigma = 3;
image_path = "dol.jpeg";

kernel = fspecial("gaussian", k_size, sigma);
box_kernel = ones(5)./(5^2);

figure();
surf(kernel);

img = imread(image_path);
img_blur = imfilter(img, kernel);

figure();
imshow(img_blur);

figure();
imshow(img);

img_blur_box = imfilter(img, box_kernel);
figure();
imshow(img_blur_box);