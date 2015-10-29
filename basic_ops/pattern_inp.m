clear all;

n=input('enter size');
a=zeros(n,n);
d=n/256;
for i=1:n
    for j=1:n
        if (i+j)<n
            a(i,j)=floor((i+j)/d);
        end
        if (i+j)>=n    
            a(i,j)=floor(n-((i+j)/d));
        end
    end    
end

figure,imshow(uint8(a));