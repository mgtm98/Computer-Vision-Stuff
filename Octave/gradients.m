pkg load image;

img_path = "dog.jpg";
img = double(imread(img_path)) / 255.0;
img = rgb2gray(img);

[grad_x grad_y] = imgradientxy(img, "sobel");
[grad_mag grad_dir] = imgradient(grad_x, grad_y);

figure();
imshow(grad_x);

figure();
imshow(grad_y);

figure();
imshow(grad_mag);

figure();
imshow((grad_dir + 180)/360.0);

figure();
img_edge = edge(img, "canny");
imshow(img_edge);