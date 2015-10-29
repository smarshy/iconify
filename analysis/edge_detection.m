%Averaging fliter
a=imread('cameraman.tif');
b=ones(3,3);
c=ones(3,3);
d=ones(3,3);
a=cast(a,'double');
b=cast(b,'double');
c=cast(c,'double');
d=cast(d,'double');
for i=1:256
    for j=1:256
        if(i==1||i==256||j==1||j==256)
            b(i,j)=a(i,j);
        else
           b(i,j)=(-1*(a(i-1,j-1))-2*(a(i-1,j))-1*(a(i-1,j+1))-0*(a(i,j-1))-0*(a(i,j))-0*(a(i,j+1))+1*(a(i+1,j-1))+2*(a(i+1,j))+a(i+1,j+1));
        end
    end
end
for j=1:256
    for i=1:256
        if(i==1||i==256||j==1||j==256)
            c(i,j)=a(i,j);
        else
           c(i,j)=(-1*(a(i-1,j-1))+0*(a(i-1,j))+1*(a(i-1,j+1))-2*(a(i,j-1))+0*(a(i,j))+2*(a(i,j+1))-1*(a(i+1,j-1))+0*(a(i+1,j))+a(i+1,j+1));
        end
    end
end
figure(1)
imshow(uint8(b));
figure(2)
imshow(uint8(c));
figure(3)
d=abs(b)+abs(c);
imshow(uint8(d));