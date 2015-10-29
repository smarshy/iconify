clc;
clear all;
for i=1:512
    for j=1:64
        c(i,j,1)=255;
        c(i,j,2)=0;
        c(i,j,3)=0;
    end 
end
for i=1:512
    for j=64:128
        c(i,j,1)=0;
        c(i,j,2)=255;
        c(i,j,3)=0;
    end 
end 
for i=1:512
    for j=128:192
        c(i,j,1)=0;
        c(i,j,2)=0;
        c(i,j,3)=255;
    end 
end 
for i=1:512
    for j=192:256
        c(i,j,1)=255;
        c(i,j,2)=255;
        c(i,j,3)=0;
    end 
end 
for i=1:512
    for j=256:320
        c(i,j,1)=0;
        c(i,j,2)=255;
        c(i,j,3)=255;
    end 
end 
for i=1:512
    for j=320:384
        c(i,j,1)=255;
        c(i,j,2)=0;
        c(i,j,3)=255;
    end 
end 
for i=1:512
    for j=384:448
        c(i,j,1)=255;
        c(i,j,2)=255;
        c(i,j,3)=255;
    end 
end 
for i=1:512
    for j=448:512
        c(i,j,1)=0;
        c(i,j,2)=0;
        c(i,j,3)=0;
    end 
end 
imshow(c);