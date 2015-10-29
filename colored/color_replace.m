clear all;
clc;
a=imread('peppers.png');
[m,n,o]=size(a);

r=a(:,:,1);
g=a(:,:,2);
b=a(:,:,3);
figure(1);
imshow(a)
% imtool(a);
for i=1:m
    for j=1:n
       
if ((r(i,j)>=200) && (r(i,j)<=255) && (g(i,j)>=45) && (g(i,j)<255))
    r(i,j)=255;
    g(i,j)=255;
    b(i,j)=255;
end
        end
end
a(:,:,1)=r;
a(:,:,2)=g;
a(:,:,3)=b;
figure(2);
imshow(a);
    
