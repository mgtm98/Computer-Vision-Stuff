pkg load image

img_path = "dol.jpeg";
kernel_size = 5;
kernel = ones(kernel_size) ./ (kernel_size)^2;
img = imread(img_path)

# To make a kernel convelutuion
img_f = imfilter(img, kernel); # clip filter (assumes img extend is black)
img_f = imfilter(img, kernel, 'circular'); # clip filter (assumes img extend wrap arround) 
img_f = imfilter(img, kernel, 'replicate'); # clip filter (assumes img extend is a copy) 
img_f = imfilter(img, kernel, 'symmetric'); # clip filter (assumes img extend is reflection) 

# Median Filter
img_f = medfilt2(img);      # Median Filter in 2D