pkg load image

img_path = "dol.jpeg";
img = imread(img_path);
img_gray = rgb2gray(img);
img_part = img_gray(10:50,50:100);

c = normxcorr2(img_gray, img_part);
surf(c);