a = imread('C:\Users\Guest\Desktop\input_img\cameraman.tif');
figure, imshow(a);
b = imread('C:\Users\Guest\Desktop\input_img\rice.png');
figure, imshow(b);
k1 = 0.5;
k2 = 0.5;
c = k1.*a + k2.*b;
figure, imshow(c);