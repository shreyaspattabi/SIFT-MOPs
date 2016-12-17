%imageDB{1}=imread('Image.bmp');
I=imread('checkerboard.jpg');
n=0;
for i= 0:5:60
    n=n+1;
    imageDB{n}= imrotate(I,i);
    I=double(I);
end 
for j= 0:10:30
    I = I - min(I(:));
    I = I / max(I(:));
    %// Add noise to image
    v = var(I(:))/(10^(j/10));
    imageDB{n} = imnoise(I,'gaussian',0,v);
    % %%// Show images
    % figure
    % subplot(1, 2, 1), imshow(I), title ('Original image');
    % subplot(1, 2, 2), imshow(imageDB{n}));
end 
for i=1:13
    for j=0:10:30
        n=n+1;
        I = I - min(I(:));
    I = I / max(I(:));
    %// Add noise to image
    v = var(I(:))/(10^(j/10));
    imageDB{n} = imnoise(imageDB{i},'gaussian',0,v);
    % %%// Show images
    % figure
    % subplot(1, 2, 1), imshow(I), title ('Original image');
    % subplot(1, 2, 2), imshow(imageDB{n}));
    end 
end 
        

%SNR of image SNR=10dB
I = double(imageDB{1});
%Adjust intensities in image I to range from 0 to 1
I = I - min(I(:));
I = I / max(I(:));
%// Add noise to image
v = var(I(:)) / 10;
imageDB{15} = imnoise(I,'gaussian',0,v);
%// Show images
figure
subplot(1, 2, 1), imshow(I), title ('Original image');
subplot(1, 2, 2), imshow(imageDB{15}), title('SNR=10dB');

%SNR of image SNR=20dB
I = double(imageDB{1});
%Adjust intensities in image I to range from 0 to 1
I = I - min(I(:));
I = I / max(I(:));
%// Add noise to image
v = var(I(:)) / 100;
imageDB{16} = imnoise(I,'gaussian',0,v);
%// Show images
figure
subplot(1, 2, 1), imshow(I), title ('Original image');
subplot(1, 2, 2), imshow(imageDB{16}), title('SNR=20dB');

%SNR of image SNR=30dB
I = double(imageDB{1});
%Adjust intensities in image I to range from 0 to 1
I = I - min(I(:));
I = I / max(I(:));
%// Add noise to image
v = var(I(:)) / 1000;
imageDB{17} = imnoise(I,'gaussian',0,v);
%// Show images
figure
subplot(1, 2, 1), imshow(I), title ('Original image');
subplot(1, 2, 2), imshow(imageDB{17}), title('SNR=30dB');

% For 5 degree rotated image 

%SNR of image SNR=0dB
I = double(imageDB{2});
%Adjust intensities in image I to range from 0 to 1
I = I - min(I(:));
I = I / max(I(:));
%// Add noise to image
v = var(I(:));
imageDB{18} = imnoise(I,'gaussian',0,v);
%// Show images
figure
subplot(1, 2, 1), imshow(I), title ('Original image');
subplot(1, 2, 2), imshow(imageDB{18}), title('SNR=0dB - 5 degree rotated');

%SNR of image SNR=10dB
I = double(imageDB{2});
%Adjust intensities in image I to range from 0 to 1
I = I - min(I(:));
I = I / max(I(:));
%// Add noise to image
v = var(I(:)) / 10;
imageDB{19} = imnoise(I,'gaussian',0,v);
%// Show images
figure
subplot(1, 2, 1), imshow(I), title ('Original image');
subplot(1, 2, 2), imshow(imageDB{19}), title('SNR=10dB - 5 degree rotated');

%SNR of image SNR=20dB
I = double(imageDB{2});
%Adjust intensities in image I to range from 0 to 1
I = I - min(I(:));
I = I / max(I(:));
%// Add noise to image
v = var(I(:)) / 100;
imageDB{20} = imnoise(I,'gaussian',0,v);
%// Show images
figure
subplot(1, 2, 1), imshow(I), title ('Original image');
subplot(1, 2, 2), imshow(imageDB{20}), title('SNR=20dB - 5 degree rotated')

%SNR of image SNR=30dB
I = double(imageDB{2});
%Adjust intensities in image I to range from 0 to 1
I = I - min(I(:));
I = I / max(I(:));
%// Add noise to image
v = var(I(:)) / 1000;
imageDB{21} = imnoise(I,'gaussian',0,v);
%// Show images
figure
subplot(1, 2, 1), imshow(I), title ('Original image')
subplot(1, 2, 2), imshow(imageDB{21}), title('SNR=30dB - 5 degree rotated')

% For 10 degree rotated image 

%SNR of image SNR=0dB
I = double(imageDB{3});
%Adjust intensities in image I to range from 0 to 1
I = I - min(I(:));
I = I / max(I(:));
%// Add noise to image
v = var(I(:));
imageDB{22} = imnoise(I,'gaussian',0,v);
%// Show images
figure
subplot(1, 2, 1), imshow(I), title ('Original image')
subplot(1, 2, 2), imshow(imageDB{22}), title('SNR=0dB - 10 degree rotated')

%SNR of image SNR=10dB
I = double(imageDB{3});
%Adjust intensities in image I to range from 0 to 1
I = I - min(I(:));
I = I / max(I(:));
%// Add noise to image
v = var(I(:)) / 10;
imageDB{23} = imnoise(I,'gaussian',0,v);
%// Show images
figure
subplot(1, 2, 1), imshow(I), title ('Original image')
subplot(1, 2, 2), imshow(imageDB{23}), title('SNR=10dB - 10 degree rotated')

%SNR of image SNR=20dB
I = double(imageDB{3});
%Adjust intensities in image I to range from 0 to 1
I = I - min(I(:));
I = I / max(I(:));
%// Add noise to image
v = var(I(:)) / 100;
imageDB{24} = imnoise(I,'gaussian',0,v);
%// Show images
figure
subplot(1, 2, 1), imshow(I), title ('Original image')
subplot(1, 2, 2), imshow(imageDB{24}), title('SNR=20dB - 10 degree rotated')

%SNR of image SNR=30dB
I = double(imageDB{3});
%Adjust intensities in image I to range from 0 to 1
I = I - min(I(:));
I = I / max(I(:));
%// Add noise to image
v = var(I(:)) / 1000;
imageDB{25} = imnoise(I,'gaussian',0,v);
%// Show images
figure
subplot(1, 2, 1), imshow(I), title ('Original image')
subplot(1, 2, 2), imshow(imageDB{25}), title('SNR=30dB - 10 degree rotated')

% For 15 degree rotated image 

%SNR of image SNR=0dB
I = double(imageDB{4});
%Adjust intensities in image I to range from 0 to 1
I = I - min(I(:));
I = I / max(I(:));
%// Add noise to image
v = var(I(:));
imageDB{26} = imnoise(I,'gaussian',0,v);
%// Show images
figure
subplot(1, 2, 1), imshow(I), title ('Original image')
subplot(1, 2, 2), imshow(imageDB{26}), title('SNR=0dB - 15 degree rotated')

%SNR of image SNR=10dB
I = double(imageDB{4});
%Adjust intensities in image I to range from 0 to 1
I = I - min(I(:));
I = I / max(I(:));
%// Add noise to image
v = var(I(:)) / 10;
imageDB{27} = imnoise(I,'gaussian',0,v);
%// Show images
figure
subplot(1, 2, 1), imshow(I), title ('Original image')
subplot(1, 2, 2), imshow(imageDB{27}), title('SNR=10dB - 15 degree rotated')

%SNR of image SNR=20dB
I = double(imageDB{4});
%Adjust intensities in image I to range from 0 to 1
I = I - min(I(:));
I = I / max(I(:));
%// Add noise to image
v = var(I(:)) / 100;
imageDB{28} = imnoise(I,'gaussian',0,v);
%// Show images
figure
subplot(1, 2, 1), imshow(I), title ('Original image');
subplot(1, 2, 2), imshow(imageDB{28}), title('SNR=20dB - 15 degree rotated');

%SNR of image SNR=30dB
I = double(imageDB{4});
%Adjust intensities in image I to range from 0 to 1
I = I - min(I(:));
I = I / max(I(:));
%// Add noise to image
v = var(I(:)) / 1000;
imageDB{29} = imnoise(I,'gaussian',0,v);
%// Show images
figure
subplot(1, 2, 1), imshow(I), title ('Original image');
subplot(1, 2, 2), imshow(imageDB{29}), title('SNR=30dB - 15 degree rotated');

% For 20 degree rotated image 

%SNR of image SNR=0dB
I = double(imageDB{5});
%Adjust intensities in image I to range from 0 to 1
I = I - min(I(:));
I = I / max(I(:));
%// Add noise to image
v = var(I(:));
imageDB{30} = imnoise(I,'gaussian',0,v);
%// Show images
figure
subplot(1, 2, 1), imshow(I), title ('Original image');
subplot(1, 2, 2), imshow(imageDB{30}), title('SNR=0dB - 20 degree rotated');

%SNR of image SNR=10dB
I = double(imageDB{5});
%Adjust intensities in image I to range from 0 to 1
I = I - min(I(:));
I = I / max(I(:));
%// Add noise to image
v = var(I(:)) / 10;
imageDB{31} = imnoise(I,'gaussian',0,v);
%// Show images
figure
subplot(1, 2, 1), imshow(I), title ('Original image');
subplot(1, 2, 2), imshow(imageDB{31}), title('SNR=10dB - 20 degree rotated');

%SNR of image SNR=20dB
I = double(imageDB{5});
%Adjust intensities in image I to range from 0 to 1
I = I - min(I(:));
I = I / max(I(:));
%// Add noise to image
v = var(I(:)) / 100;
imageDB{32} = imnoise(I,'gaussian',0,v);
%// Show images
figure
subplot(1, 2, 1), imshow(I), title ('Original image');
subplot(1, 2, 2), imshow(imageDB{32}), title('SNR=20dB - 20 degree rotated');

%SNR of image SNR=30dB
I = double(imageDB{5});
%Adjust intensities in image I to range from 0 to 1
I = I - min(I(:));
I = I / max(I(:));
%// Add noise to image
v = var(I(:)) / 1000;
imageDB{33} = imnoise(I,'gaussian',0,v);
%// Show images
figure
subplot(1, 2, 1), imshow(I), title ('Original image');
subplot(1, 2, 2), imshow(imageDB{33}), title('SNR=30dB - 20 degree rotated');

% For 25 degree rotated image 

%SNR of image SNR=0dB
I = double(imageDB{6});
%Adjust intensities in image I to range from 0 to 1
I = I - min(I(:));
I = I / max(I(:));
%// Add noise to image
v = var(I(:));
imageDB{34} = imnoise(I,'gaussian',0,v);
%// Show images
figure
subplot(1, 2, 1), imshow(I), title ('Original image');
subplot(1, 2, 2), imshow(imageDB{34}), title('SNR=0dB - 25 degree rotated');

%SNR of image SNR=10dB
I = double(imageDB{6});
%Adjust intensities in image I to range from 0 to 1
I = I - min(I(:));
I = I / max(I(:));
%// Add noise to image
v = var(I(:)) / 10;
imageDB{35} = imnoise(I,'gaussian',0,v);
%// Show images
figure
subplot(1, 2, 1), imshow(I), title ('Original image');
subplot(1, 2, 2), imshow(imageDB{35}), title('SNR=10dB - 25 degree rotated');

%SNR of image SNR=20dB
I = double(imageDB{6});
%Adjust intensities in image I to range from 0 to 1
I = I - min(I(:));
I = I / max(I(:));
%// Add noise to image
v = var(I(:)) / 100;
imageDB{36} = imnoise(I,'gaussian',0,v);
%// Show images
figure
subplot(1, 2, 1), imshow(I), title ('Original image');
subplot(1, 2, 2), imshow(imageDB{36}), title('SNR=20dB - 25 degree rotated');

%SNR of image SNR=30dB
I = double(imageDB{6});
%Adjust intensities in image I to range from 0 to 1
I = I - min(I(:));
I = I / max(I(:));
%// Add noise to image
v = var(I(:)) / 1000;
imageDB{37} = imnoise(I,'gaussian',0,v);
%// Show images
figure
subplot(1, 2, 1), imshow(I), title ('Original image');
subplot(1, 2, 2), imshow(imageDB{37}), title('SNR=30dB - 25 degree rotated');

% For 30 degree rotated image 

%SNR of image SNR=0dB
I = double(imageDB{7});
%Adjust intensities in image I to range from 0 to 1
I = I - min(I(:));
I = I / max(I(:));
%// Add noise to image
v = var(I(:));
imageDB{38} = imnoise(I,'gaussian',0,v);
%// Show images
figure
subplot(1, 2, 1), imshow(I), title ('Original image');
subplot(1, 2, 2), imshow(imageDB{38}), title('SNR=0dB - 30 degree rotated');

%SNR of image SNR=10dB
I = double(imageDB{7});
%Adjust intensities in image I to range from 0 to 1
I = I - min(I(:));
I = I / max(I(:));
%// Add noise to image
v = var(I(:)) / 10;
imageDB{39} = imnoise(I,'gaussian',0,v);
%// Show images
figure
subplot(1, 2, 1), imshow(I), title ('Original image');
subplot(1, 2, 2), imshow(imageDB{39}), title('SNR=10dB - 30 degree rotated');

%SNR of image SNR=20dB
I = double(imageDB{7});
%Adjust intensities in image I to range from 0 to 1
I = I - min(I(:));
I = I / max(I(:));
%// Add noise to image
v = var(I(:)) / 100;
imageDB{40} = imnoise(I,'gaussian',0,v);
%// Show images
figure
subplot(1, 2, 1), imshow(I), title ('Original image');
subplot(1, 2, 2), imshow(imageDB{40}), title('SNR=20dB - 30 degree rotated');

%SNR of image SNR=30dB
I = double(imageDB{7});
%Adjust intensities in image I to range from 0 to 1
I = I - min(I(:));
I = I / max(I(:));
%// Add noise to image
v = var(I(:)) / 1000;
imageDB{41} = imnoise(I,'gaussian',0,v);
%// Show images
figure
subplot(1, 2, 1), imshow(I), title ('Original image');
subplot(1, 2, 2), imshow(imageDB{41}), title('SNR=30dB - 30 degree rotated');
% For 35 degree rotated image 

%SNR of image SNR=0dB
I = double(imageDB{7});
%Adjust intensities in image I to range from 0 to 1
I = I - min(I(:));
I = I / max(I(:));
%// Add noise to image
v = var(I(:));
imageDB{42} = imnoise(I,'gaussian',0,v);
%// Show images
figure
subplot(1, 2, 1), imshow(I), title ('Original image');
subplot(1, 2, 2), imshow(imageDB{42}), title('SNR=0dB - 35 degree rotated');

%SNR of image SNR=10dB
I = double(imageDB{8});
%Adjust intensities in image I to range from 0 to 1
I = I - min(I(:));
I = I / max(I(:));
%// Add noise to image
v = var(I(:)) / 10;
imageDB{43} = imnoise(I,'gaussian',0,v);
%// Show images
figure
subplot(1, 2, 1), imshow(I), title ('Original image');
subplot(1, 2, 2), imshow(imageDB{43}), title('SNR=10dB - 35 degree rotated');

%SNR of image SNR=20dB
I = double(imageDB{8});
%Adjust intensities in image I to range from 0 to 1
I = I - min(I(:));
I = I / max(I(:));
%// Add noise to image
v = var(I(:)) / 100;
imageDB{44} = imnoise(I,'gaussian',0,v);
%// Show images
figure
subplot(1, 2, 1), imshow(I), title ('Original image');
subplot(1, 2, 2), imshow(imageDB{44}), title('SNR=20dB - 35 degree rotated');

%SNR of image SNR=30dB
I = double(imageDB{8});
%Adjust intensities in image I to range from 0 to 1
I = I - min(I(:));
I = I / max(I(:));
%// Add noise to image
v = var(I(:)) / 1000;
imageDB{45} = imnoise(I,'gaussian',0,v);
%// Show images
figure
subplot(1, 2, 1), imshow(I), title ('Original image');
subplot(1, 2, 2), imshow(imageDB{45}), title('SNR=30dB - 35 degree rotated');