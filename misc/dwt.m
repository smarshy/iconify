%8 level
clc;
clear all;
a=[ 73 61 66 64 61 64 52 55
    72 55 90 69 85 69 63 59
    108 83 135 104 128 104 95 89
    87 69 35 56 22 56 23 55
    174 138 70 112 44 112 46 110 
    225 69 78 189 85 189 25 88
    245 168 32 100 69 100 125 253 
    10 251 22 111 29 111 222 25];
b=zeros(8,8);
c=zeros(8,8);
d=zeros(4,4);
e=zeros(4,4);
f=zeros(2,2);
g=zeros(2,2);

i=1;
j=1;
%level 1
for i=1:8
    n=1;
    k=5;
    j=1;
while j<8
    b(i,n) = (a(i,j)+a(i,j+1))/2;
    b(i,k) = (a(i,j)-a(i,j+1))/2;
    j=j+2;
    n=n+1;
    k=k+1;
end
end
for j=1:8
    n=1;
    k=5;
    i=1;
while i<8
    c(n,j) = (b(i,j)+b(i+1,j))/2;
    c(k,j) = (b(i,j)-b(i+1,j))/2;
    i=i+2;
    n=n+1;
    k=k+1;
end
end
%level 2
for i=1:4
    n=1;
    k=3;
    j=1;
while j<4
    d(i,n) = (c(i,j)+c(i,j+1))/2;
    d(i,k) = (c(i,j)-c(i,j+1))/2;
    j=j+2;
    n=n+1;
    k=k+1;
end
end
for j=1:4
    n=1;
    k=3;
    i=1;
while i<4
    e(n,j) = (d(i,j)+d(i+1,j))/2;
    e(k,j) = (d(i,j)-d(i+1,j))/2;
    i=i+2;
    n=n+1;
    k=k+1;
end
end
%level 3
for i=1:2
    n=1;
    k=2;
    j=1;
while j<2
    f(i,n) = (e(i,j)+e(i,j+1))/2;
    f(i,k) = (e(i,j)-e(i,j+1))/2;
    j=j+2;
    n=n+1;
    k=k+1;
end
end
for j=1:2
    n=1;
    k=2;
    i=1;
while i<2
    g(n,j) = (f(i,j)+f(i+1,j))/2;
    g(k,j) = (f(i,j)-f(i+1,j))/2;
    i=i+2;
    n=n+1;
    k=k+1;
end
end
for i=1:4
    for j=1:4
        c(i,j)=e(i,j);
    end
end
for i=1:2
    for j=1:2
        c(i,j)=g(i,j);
    end
end
%dwt matrix in c
%ezw code
c=round(c);
m=zeros(8,8);
max=max(max(c));
n=floor(log(max)/log(2));
th=power(2,n);
for i=1:8
    for j=1:8
       if(abs(c(i,j))>th)
           m(i,j)=c(i,j);
       else
           m(i,j)=0;
       end
    end
end
al=zeros(255);
n=1;
%traversing level3
for i=1:2
    for j=1:2
        if(m(i,j)>0)
            al(n)=01;
        elseif m(i,j)<0
            al(n)=10;
        elseif m(i,j)=0
            if( abs(m(2*i-1,2*j-1))+ abs(m(2*i-1,2*j))+ abs(m(2*i,2*j-1))+ abs(m(2*i,2*j))=0
            al(n)=00;
            n=n+1;
        end
    end
end


        


           
           
            
      





    
    

    