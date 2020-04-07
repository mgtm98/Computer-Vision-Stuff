pkg load image;

img_path = "dog.jpg";
img = imread(img_path);
img_gray = rgb2gray(img);

figure, imshow(img), title("Dog");

k_size = 5;
sigma = 4;
image_path = "dol.jpeg";

kernel = fspecial("gaussian", k_size, sigma);
img_blured = imfilter(img_gray, kernel);
figure, imshow(img_blured), title("Dog Blured");

% Using Canny
img_edge = edge(img_blured, "canny");
figure, imshow(img_edge), title("Dog Edges Canny");

% Using LoG Laplacian of Gassiuan
img_edge = edge(img_gray, "log");
figure, imshow(img_edge), title("Dog Edges LoG");
