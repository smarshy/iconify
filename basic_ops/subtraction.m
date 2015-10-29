a = imread('cameraman.tif');
figure,imshow(a);
b = imread('rice.png');
figure, imshow(b);
c = a - b;
figure, imshow(c);
d = b - a;
figure, imshow(d);