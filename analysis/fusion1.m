clear all;
a = imread('cameraman.tif');
figure, imshow(a);
b = imread('rice.png');
figure, imshow(b);
[r,c] = size(a);
d = zeros(r,c);
k1 = 1;
k2 = 0;
d(:,1) = a(:,1);
for i = 1:r
    for j = 2:c-1
        d(i,j) = k1*a(i,j) + k2*b(i,j);
        k1 = k1 - (1/c);
        k2 = k2 + (1/c);
    end
    k1 = 1; k2 = 0;
end
d(:,c) = b(:,c);
figure(3), imshow(uint8(d))
