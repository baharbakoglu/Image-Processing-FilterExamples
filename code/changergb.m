function []=changergb(I)
I(:,:,3)=I(:,:,3)-50;
I(:,:,1)=I(:,:,1)+20;
figure,imshow(I);
imwrite(I,'changergb.jpg');
end