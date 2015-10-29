clear all;
clc;
obj=VideoReader('viptraffic.avi');
var=read(obj);
[m,n,o,p]=size(var);
for i=1:p-1
    b(:,:,:,i)=var(:,:,:,i)-var(:,:,:,i+1);
end
implay(b); 