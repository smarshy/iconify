a = imread('cameraman.tif');
figure, imshow(a);
b = imread('rice.png');
figure, imshow(b);
[r,c] = size(a);
d = zeros(r,c);
k1 = 1;
k2 = 0;
for j = 1:(c/4 - 1)
    d(:,j) = a(:,j);
end
for i = 1:r
    for j = c/4:3*c/4
        d(i,j) = k1*a(i,j) + k2*b(i,j);
        k1 = k1 - (2/c);
        k2 = k2 + (2/c);
    end
    k1 = 1; k2 = 0;
end
for j = (3*c/4 + 1):c
    d(:,j) = b(:,j);
end
figure, imshow(uint8(d))


