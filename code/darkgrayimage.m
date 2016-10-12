function []=darkgrayimage(A)
An=rgb2gray(A);
no=imnoise(An,'salt & pepper', 0.02);
filt1=medfilt2(no);
filt1=filt1-60;
figure,imshow(filt1);
imwrite(filt1,'darkgrayimage.jpg');
end