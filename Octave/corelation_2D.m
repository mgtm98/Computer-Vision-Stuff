1;
pkg load image;

function [y_cor x_cor] = find_template_2D(template, image)
    c = normxcorr2(template, image);
    [y_cor x_cor] = find(c == max(c(:)));
    y_cor = y_cor - size(template,1) + 1;
    x_cor = x_cor - size(template,2) + 1;
endfunction

figure();
img = imread('dol.jpeg');
img = rgb2gray(img);
imshow(img);

figure();
img_part = img(75:100, 150:185);
imshow(img_part);

[y x] = find_template_2D(img_part, img);
disp([y x]); % should be the top-left corner of template in tablet

figure();
imshow(img);
hold on;
plot(x,y,'r+');
rectangle("POSITION",[x,y,35,25]);
hold off;