

uint8 a;
uint8 w;
w=zeros(260,260);
a=imread('cameraman.tif');

a=cast(a,'double');
w=cast(w,'double');
k1=[1 1 1 1 1; 2 2 2 2 2 ; 0 0 0 0 0; -2 -2 -2 -2 -2; -1 -1 -1 -1 -1];
k2=[2 1 1 1 1; 0 2 2 2 1; -2 0 0 0 2; -1 -2 -2 -2 0; -1 -1 -1 -1 -2];
k3=[0 2 1 1 1 ;-2 0 2 2 1;-1 -2 0 2 1 ;-1 -2 -2 0 2 ;-1 -1 -1 -2 0];
k4=[-2 0 2 1 1 ;-1 -2 0 2 1 ;-1 -2 0 2 1 ;-1 -2 0 2 1 ;-1 -1 -2 0 2 ];
k5=[-1 -2 0 2 1 ;-1 -2 0 2 1  ;-1 -2 0 2 1 ;-1 -2 0 2 1 ;-1 -2 0 2 1 ];
k6=[-1 -1 -2 0 2; -1 -2 0 2 1;-1 -2 0 2 1;-1 -2 0 2 1; -2 0 2 1 1];
k7=[1 1 1 2 0 ; 1 2 2 0 -2 ;1 2 0 -2 -1 ; 2 0 -2 -2 -1; 0 -2 -1 -1 -1];
k8=[1 1 1 1 2; 1 2 2 2 0; 2 0 0 0 -2 ; 0 -2 -2 -2 -1;-2 -1 -1 -1 -1];
for i=1: 256
    for j=1:256
        w(i+2,j+2)=a(i,j);
    end
end

w1=zeros(256,256);
w2=zeros(256,256);
w3=zeros(256,256);
w4=zeros(256,256);
w5=zeros(256,256);
w6=zeros(256,256);
w7=zeros(256,256);
w8=zeros(256,256);

w1=cast(w1,'double');
w2=cast(w2,'double');
w3=cast(w3,'double');
w4=cast(w4,'double');
w5=cast(w5,'double');
w6=cast(w6,'double');
w7=cast(w7,'double');
w8=cast(w8,'double');


for i=1:256
    for j=1:256
        w1(i,j)=k1(1,1)* w(i+2-2,j+2-2) + k1(1,2)* w(i+2-2,j+2-1) + k1(1,3)* w(i+2-2,j+2) + k1(1,4)* w(i+2-2,j+2+1) + k1(1,5)* w(i+2-2,j+2+2) + ...
                   k1(2,1)* w(i+2-1,j+2-2) + k1(2,2)* w(i+2-2,j+2-1)+ k1(2,3) * w(i+2-2,j+2)+ k1(2,4)* w(i+2-2,j+2+1) + k1(2,5)* w(i+2-2,j+2+2) + ...
                   k1(3,1)* w(i+2,j+2-2) + k1(3,2)* w(i+2,j+2-1) + w(i+2,j+2)*k1(3,3) + k1(3,4)* w(i+2,j+2+1) + k1(3,5)* w(i+2,j+2+2) + ...
                   k1(4,1)* w(i+2+1,j+2-2) + k1(4,2)* w(i+2+1,j+2-1) + k1(4,3)* w(i+2+1,j+2) + k1(4,4)* w(i+2+1,j+2+1) + k1(4,5)* w(i+2+1,j+2+2) + ...
                   k1(5,1)* w(i+2+2,j+2-2) + k1(5,2)* w(i+2+2,j+2-1) + k1(5,3)* w(i+2+2,j+2) + k1(5,4)* w(i+2+2,j+2+1) + k1(5,5)* w(i+2+2,j+2+2);            
    end
end


for i=1:256
    for j=1:256
        w2(i,j)=k2(1,1)* w(i+2-2,j+2-2) + k2(1,2)* w(i+2-2,j+2-1) + k2(1,3)* w(i+2-2,j+2) + k2(1,4)* w(i+2-2,j+2+1) + k2(1,5)* w(i+2-2,j+2+2) + ...
                   k2(2,1)* w(i+2-1,j+2-2) + k2(2,2)* w(i+2-2,j+2-1)+ k2(2,3) * w(i+2-2,j+2)+ k2(2,4)* w(i+2-2,j+2+1) + k2(2,5)* w(i+2-2,j+2+2) + ...
                   k2(3,1)* w(i+2,j+2-2) + k2(3,2)* w(i+2,j+2-1) + w(i+2,j+2)*k2(3,3) + k2(3,4)* w(i+2,j+2+1) + k2(3,5)* w(i+2,j+2+2) + ...
                   k2(4,1)* w(i+2+1,j+2-2) + k2(4,2)* w(i+2+1,j+2-1) + k2(4,3)* w(i+2+1,j+2) + k2(4,4)* w(i+2+1,j+2+1) + k2(4,5)* w(i+2+1,j+2+2) + ...
                   k2(5,1)* w(i+2+2,j+2-2) + k2(5,2)* w(i+2+2,j+2-1) + k2(5,3)* w(i+2+2,j+2) + k2(5,4)* w(i+2+2,j+2+1) + k2(5,5)* w(i+2+2,j+2+2);            
    end
end

for i=1:256
    for j=1:256
        w3(i,j)=k3(1,1)* w(i+2-2,j+2-2) + k3(1,2)* w(i+2-2,j+2-1) + k3(1,3)* w(i+2-2,j+2) + k3(1,4)* w(i+2-2,j+2+1) + k3(1,5)* w(i+2-2,j+2+2) + ...
                   k3(2,1)* w(i+2-1,j+2-2) + k3(2,2)* w(i+2-2,j+2-1)+ k3(2,3) * w(i+2-2,j+2)+ k3(2,4)* w(i+2-2,j+2+1) + k3(2,5)* w(i+2-2,j+2+2) + ...
                   k3(3,1)* w(i+2,j+2-2) + k3(3,2)* w(i+2,j+2-1) + w(i+2,j+2)*k3(3,3) + k3(3,4)* w(i+2,j+2+1) + k3(3,5)* w(i+2,j+2+2) + ...
                   k3(4,1)* w(i+2+1,j+2-2) + k3(4,2)* w(i+2+1,j+2-1) + k3(4,3)* w(i+2+1,j+2) + k3(4,4)* w(i+2+1,j+2+1) + k3(4,5)* w(i+2+1,j+2+2) + ...
                   k3(5,1)* w(i+2+2,j+2-2) + k3(5,2)* w(i+2+2,j+2-1) + k3(5,3)* w(i+2+2,j+2) + k3(5,4)* w(i+2+2,j+2+1) + k3(5,5)* w(i+2+2,j+2+2);            
    end
end

for i=1:256
    for j=1:256
        w4(i,j)=k4(1,1)* w(i+2-2,j+2-2) + k4(1,2)* w(i+2-2,j+2-1) + k4(1,3)* w(i+2-2,j+2) + k4(1,4)* w(i+2-2,j+2+1) + k4(1,5)* w(i+2-2,j+2+2) + ...
                   k4(2,1)* w(i+2-1,j+2-2) + k4(2,2)* w(i+2-2,j+2-1)+ k4(2,3) * w(i+2-2,j+2)+ k4(2,4)* w(i+2-2,j+2+1) + k4(2,5)* w(i+2-2,j+2+2) + ...
                   k4(3,1)* w(i+2,j+2-2) + k4(3,2)* w(i+2,j+2-1) + w(i+2,j+2)*k4(3,3) + k4(3,4)* w(i+2,j+2+1) + k4(3,5)* w(i+2,j+2+2) + ...
                   k4(4,1)* w(i+2+1,j+2-2) + k4(4,2)* w(i+2+1,j+2-1) + k4(4,3)* w(i+2+1,j+2) + k4(4,4)* w(i+2+1,j+2+1) + k4(4,5)* w(i+2+1,j+2+2) + ...
                   k4(5,1)* w(i+2+2,j+2-2) + k4(5,2)* w(i+2+2,j+2-1) + k4(5,3)* w(i+2+2,j+2) + k4(5,4)* w(i+2+2,j+2+1) + k4(5,5)* w(i+2+2,j+2+2);            
    end
end

for i=1:256
    for j=1:256
        w5(i,j)=k5(1,1)* w(i+2-2,j+2-2) + k5(1,2)* w(i+2-2,j+2-1) + k5(1,3)* w(i+2-2,j+2) + k5(1,4)* w(i+2-2,j+2+1) + k5(1,5)* w(i+2-2,j+2+2) + ...
                   k5(2,1)* w(i+2-1,j+2-2) + k5(2,2)* w(i+2-2,j+2-1)+ k5(2,3) * w(i+2-2,j+2)+ k5(2,4)* w(i+2-2,j+2+1) + k5(2,5)* w(i+2-2,j+2+2) + ...
                   k5(3,1)* w(i+2,j+2-2) + k5(3,2)* w(i+2,j+2-1) + w(i+2,j+2)*k5(3,3) + k5(3,4)* w(i+2,j+2+1) + k5(3,5)* w(i+2,j+2+2) + ...
                   k5(4,1)* w(i+2+1,j+2-2) + k5(4,2)* w(i+2+1,j+2-1) + k5(4,3)* w(i+2+1,j+2) + k5(4,4)* w(i+2+1,j+2+1) + k5(4,5)* w(i+2+1,j+2+2) + ...
                   k5(5,1)* w(i+2+2,j+2-2) + k5(5,2)* w(i+2+2,j+2-1) + k5(5,3)* w(i+2+2,j+2) + k5(5,4)* w(i+2+2,j+2+1) + k5(5,5)* w(i+2+2,j+2+2);            
    end
end

for i=1:256
    for j=1:256
        w6(i,j)=k6(1,1)* w(i+2-2,j+2-2) + k6(1,2)* w(i+2-2,j+2-1) + k6(1,3)* w(i+2-2,j+2) + k6(1,4)* w(i+2-2,j+2+1) + k6(1,5)* w(i+2-2,j+2+2) + ...
                   k6(2,1)* w(i+2-1,j+2-2) + k6(2,2)* w(i+2-2,j+2-1)+ k6(2,3) * w(i+2-2,j+2)+ k6(2,4)* w(i+2-2,j+2+1) + k6(2,5)* w(i+2-2,j+2+2) + ...
                   k6(3,1)* w(i+2,j+2-2) + k6(3,2)* w(i+2,j+2-1) + w(i+2,j+2)*k6(3,3) + k6(3,4)* w(i+2,j+2+1) + k6(3,5)* w(i+2,j+2+2) + ...
                   k6(4,1)* w(i+2+1,j+2-2) + k6(4,2)* w(i+2+1,j+2-1) + k6(4,3)* w(i+2+1,j+2) + k6(4,4)* w(i+2+1,j+2+1) + k6(4,5)* w(i+2+1,j+2+2) + ...
                   k6(5,1)* w(i+2+2,j+2-2) + k6(5,2)* w(i+2+2,j+2-1) + k6(5,3)* w(i+2+2,j+2) + k6(5,4)* w(i+2+2,j+2+1) + k6(5,5)* w(i+2+2,j+2+2);            
    end
end

for i=1:256
    for j=1:256
        w7(i,j)=k7(1,1)* w(i+2-2,j+2-2) + k7(1,2)* w(i+2-2,j+2-1) + k7(1,3)* w(i+2-2,j+2) + k7(1,4)* w(i+2-2,j+2+1) + k7(1,5)* w(i+2-2,j+2+2) + ...
                   k7(2,1)* w(i+2-1,j+2-2) + k7(2,2)* w(i+2-2,j+2-1)+ k7(2,3) * w(i+2-2,j+2)+ k7(2,4)* w(i+2-2,j+2+1) + k7(2,5)* w(i+2-2,j+2+2) + ...
                   k7(3,1)* w(i+2,j+2-2) + k7(3,2)* w(i+2,j+2-1) + w(i+2,j+2)*k7(3,3) + k7(3,4)* w(i+2,j+2+1) + k7(3,5)* w(i+2,j+2+2) + ...
                   k7(4,1)* w(i+2+1,j+2-2) + k7(4,2)* w(i+2+1,j+2-1) + k7(4,3)* w(i+2+1,j+2) + k7(4,4)* w(i+2+1,j+2+1) + k7(4,5)* w(i+2+1,j+2+2) + ...
                   k7(5,1)* w(i+2+2,j+2-2) + k7(5,2)* w(i+2+2,j+2-1) + k7(5,3)* w(i+2+2,j+2) + k7(5,4)* w(i+2+2,j+2+1) + k7(5,5)* w(i+2+2,j+2+2);            
    end
end


for i=1:256
    for j=1:256
        w8(i,j)=k8(1,1)* w(i+2-2,j+2-2) + k8(1,2)* w(i+2-2,j+2-1) + k8(1,3)* w(i+2-2,j+2) + k8(1,4)* w(i+2-2,j+2+1) + k8(1,5)* w(i+2-2,j+2+2) + ...
                   k8(2,1)* w(i+2-1,j+2-2) + k8(2,2)* w(i+2-2,j+2-1)+ k8(2,3) * w(i+2-2,j+2)+ k8(2,4)* w(i+2-2,j+2+1) + k8(2,5)* w(i+2-2,j+2+2) + ...
                   k8(3,1)* w(i+2,j+2-2) + k8(3,2)* w(i+2,j+2-1) + w(i+2,j+2)*k8(3,3) + k8(3,4)* w(i+2,j+2+1) + k8(3,5)* w(i+2,j+2+2) + ...
                   k8(4,1)* w(i+2+1,j+2-2) + k8(4,2)* w(i+2+1,j+2-1) + k8(4,3)* w(i+2+1,j+2) + k8(4,4)* w(i+2+1,j+2+1) + k8(4,5)* w(i+2+1,j+2+2) + ...
                   k8(5,1)* w(i+2+2,j+2-2) + k8(5,2)* w(i+2+2,j+2-1) + k8(5,3)* w(i+2+2,j+2) + k8(5,4)* w(i+2+2,j+2+1) + k8(5,5)* w(i+2+2,j+2+2);            
    end
end





st=zeros(256,256);
st=cast(st,'double');
for i=1:256
    for j=1:256
        x=[w1(i,j),w2(i,j),w3(i,j),w4(i,j), w5(i,j),w6(i,j),w7(i,j),w8(i,j)];      
        st(i,j)=std(x);
    end
   
end

max1=max(st);
min1=min(st);
thresh=(min1+max1)/2;
% disp(min1);
% disp(max1);
% disp(thresh);

fin=zeros(256,256);
fin=cast(fin,'double');
for i=1:256
    for j=1:256
        if (st(i,j) > thresh)
            fin(i,j)=255;
        end
        
    end
   
end

fin= cast(fin,'uint8');
figure(2);
imshow(fin);

% st= cast(st,'uint8');

% w1=conv1(a,k1);
% [w2]=conv1(a,k2);
% [w3]=conv1(a,k3);
% [w4]=conv1(a,k4);
% [w5]=conv1(a,k5);
% [w6]=conv1(a,k6);
% [w7]=conv1(a,k7);
% [w8]=conv1(a,k8);


% w1= cast(w1,'uint8');
% w2= cast(w2,'uint8');
% w3= cast(w3,'uint8');
% w4= cast(w4,'uint8');
% w5= cast(w5,'uint8');
% w6= cast(w6,'uint8');
% w7= cast(w7,'uint8');
% w8= cast(w8,'uint8');
% 
% 
% figure(1);
% imshow(w1);
% figure(2);
% imshow(w2);
% figure(3);
% imshow(w3);
% figure(4);
% imshow(w4);
% figure(5);
% imshow(w5);
% figure(6);
% imshow(w6);
% figure(7);
% imshow(w7);
% figure(8);
% imshow(w8);
% imshow(st);
