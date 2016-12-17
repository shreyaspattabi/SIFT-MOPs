
b = imgaussfilt(A);
b = imgaussfilt(A);
b = imgaussfilt(A);
b = imgaussfilt(A);
%% constants %%
alpha = 0.04; %%constant for forstner harris metric
%%harris detector derivative kernels
hxKern = [-2,-1,0,1,2];
hyKern = [-2;-1;0;1;2];
%%3X3 sobel kernels
xKern = [-1,0,1;-2,0,2;-1,0,1]; 
yKern = [-1,-2,-1;0,0,0;1,2,1];
 
%% blur my image as a preprocessing tool to make the derivatives nicer %%
 


%% pad then take the x and y derivatives respectively %%
ix=zeros(size(b));
iy=zeros(size(b));
ix2=zeros(size(b));
ixiy=zeros(size(b));
iy2=zeros(size(b));
 
b=pad(b,'m');
for(i=3:1:size(b,1)-2)
    for(j=3:1:size(b,2)-2)
          ix(i-2,j-2)=sum(sum([double(b(i,j-2:j+2))].*hxKern));
    end
end
for(i=3:1:size(b,1)-2)
    for(j=3:1:size(b,2)-2)
          iy(i-2,j-2)=sum(sum([double(b(i-2:i+2,j))].*hyKern));
    end
end
 
figure();
imshow(ix);
title('x-derivative')
figure();
imshow(iy);
title('y-derivative')
ix2=ix.^2;
iy2=iy.^2;
ixiy=ix.*iy;
ix2=gauss(ix2);
iy2=gauss(iy2);
ixiy=gauss(ixiy);
fhmetric=zeros(size(ix));
 
for(i=1:1:size(ix,1))
    for(j=1:1:size(ix,2))
        AC=[ix2(i,j),ixiy(i,j);ixiy(i,j),iy2(i,j)];
%         AC=gauss(AC); %not going to apply a gaussian filter to a 4X4
        fhmetric(i,j)=det(AC)-alpha*trace(AC)^2;
    end
end
 
