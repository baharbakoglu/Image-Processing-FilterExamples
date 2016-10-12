function []=adjust(I)
srgb2lab = makecform('srgb2lab');
lab2srgb = makecform('lab2srgb');

shadow_lab = applycform(I, srgb2lab); % convert to L*a*b*
max_luminosity = 70;
L = shadow_lab(:,:,1)/max_luminosity;

shadow_imadjust = shadow_lab;
shadow_imadjust(:,:,1) = imadjust(L)*0.45;
shadow_imadjust = applycform(shadow_imadjust, lab2srgb);
shadow_imadjust=shadow_imadjust+50;

figure, imshow(shadow_imadjust);
imwrite(shadow_imadjust,'imadjust.jpg');


end