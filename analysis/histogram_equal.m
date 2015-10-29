clear all;
a=imread('cameraman.tif');
b=zeros(256,256);
x=zeros(1,256);
sum=zeros(1,256);
y=zeros(1,256);
%int maxvalue
maxvalue=max(a(:));
maxvalue_no=ceil((log2(cast(maxvalue,'double'))));
max_final=power(2,maxvalue_no);
for h=1:256
    y(h)=h;
end
k=0;
for i=1:256
    for j=1:256
        k=a(i,j);
        x(k)=x(k)+1;
    end 
end
sum(1)=x(1);
for i=2:256 
    sum(i)=sum(i-1)+x(i);
end 

for i=1:256
    sum(i)=round((sum(i)/(255*255))*max_final);
end
for i=1:256
    for j=1:256
        t=a(i,j);
        b(i,j)=sum(t);
    end
end
figure(1);
plot(y,sum);
figure(2);
imshow(uint8(b));
figure(3);
imshow(a);
figure(4)
imshow(histeq(a));

