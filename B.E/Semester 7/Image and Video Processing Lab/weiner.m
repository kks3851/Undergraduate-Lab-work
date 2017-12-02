a=im2double(imread('cameraman.tif'));
subplot(2,3,1)
imshow(a);
title('original image')

len=21;
theta=11;
psf=fspecial('motion',len,theta)
blur=imfilter(a,psf,'conv','circular')
subplot(2,3,2)
imshow(blur);
title('blurring image')

wnr1=deconvwnr(blur,psf,0)
subplot(2,3,3)
imshow(wnr1);
title('restored image')

noise_mean=0;
noise_variance=0.0001;
blur_noisy=imnoise(blur,'gaussian',noise_mean,noise_variance);
subplot(2,3,4)
imshow(blur_noisy);
title('blurrrrrrrrrre noise')

wnr2=deconvwnr(blur_noisy,psf,0)
subplot(2,3,5)
imshow(wnr2);
title('image noise-blur')

signal_variance=var(a(:));
wnr3=deconvwnr(blur_noisy,psf,(noise_variance/signal_variance))
subplot(2,3,6)
imshow(wnr3);
title('restored image')
