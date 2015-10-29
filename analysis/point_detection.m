%Averaging fliter
a=imread('cameraman.tif');
b=ones(3,3);
a=cast(a,'double');
b=cast(b,'double');
for i=1:256
    for j=1:256
        if(i==1||i==256||j==1||j==256)
            b(i,j)=a(i,j);
        else
           b(i,j)=(-1*(a(i-1,j-1))-1*(a(i-1,j))-1*(a(i-1,j+1))-1*(a(i,j-1))+8*(a(i,j))-1*(a(i,j+1))-1*(a(i+1,j-1))-1*(a(i+1,j))-1*(a(i+1,j+1)));
        end
    end
end
imshow(uint8(b));
