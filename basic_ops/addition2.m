a = imread('C:\Users\Guest\Desktop\input_img\cameraman.tif');
figure, imshow(a);
b = imread('C:\Users\Guest\Desktop\input_img\rice.png');
figure, imshow(b);
k1 = input('Enter k1');
k2 = input('Enter k2');
c = k1.*a + k2.*b;
figure, imshow(c);