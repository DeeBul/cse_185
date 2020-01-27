img = imread('01.jpg');
img2 = imread('02.jpg');
img3 = imread('03.jpg');
img4 = imread('04.jpg');
%figure, imshow(img);

img_green = img;
img_green(:,:,1) = 0;
max(img_green(:,2,:))
%figure, imshow(img_green);

img_gray = img;
green  = img(:,:,1);
red = img(:,:,2);
blue = img(:,:,3);
img_gray = 0.299*red + 0.587*green + 0.114*blue; 
%figure, imshow(img_gray);

img_rotate = imrotate(img, 90);
%figure, imshow(img_rotate);

img_crop = img(1:200, 300:400,:);
%figure, imshow(img_crop);

img_flip = flip(img, 2);
%figure, imshow(img_flip);

img_grid = (zeros(300 * 2 + 10, 400 * 2 + 10, 3, 'uint8'));
img_grid(1:300, 1:400, :) = img;
img_grid(301:600, 1:400, :) = img2;
img_grid(1:300, 401:800, :) = img3;
img_grid(301:600, 401:800, :) = img4;

figure, imshow(img_grid);

% img5 = img(:);
% size(img5);
% img5_reshape = reshape(img5, 300, 400, 3);
% size(img5_reshape);
% mean(img5_reshape)
% 
% img6 = img(:);
% size(img6);
% img6_reshape = reshape(img6, 300, 400, 3);
% size(img6_reshape);
% average6 = mean(img6_reshape)

% plot(average6, '-')



