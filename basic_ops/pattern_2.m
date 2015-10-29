clear all;
a=zeros(512,512);
for i=1:512
    for j=1:512
        if (i+j)<512
            a(i,j)=floor((i+j)/2);
        end
        if (i+j)>=512    
            a(i,j)=floor(512-((i+j)/2));
        end
    end    
end

figure,imshow(uint8(a));