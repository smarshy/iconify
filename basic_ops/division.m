a = imread('C:\Users\Guest\Desktop\input_img\cameraman.tif');
figure, imshow(a);
b = imread('C:\Users\Guest\Desktop\input_img\peppers.png');
figure, imshow(b);

%% pixelwise Division
[r,c] = size(b);
d = zeros(r,c);
for i = 1:r
    for j = 1:c
        d(i,j) = a(i,j)/b(i,j);
    end
end
figure, imshow(d);
