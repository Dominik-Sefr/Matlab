clear all
close all

vid = videoinput('winvideo', 1, 'MJPG_320x240');
src = getselectedsource(vid);
vid.FramesPerTrigger = 1;

I=getsnapshot(vid);

B=I(:,:,3);
G=I(:,:,2);
R=I(:,:,1);
% figure, imshow(G);
% figure, imshow(R);
 figure, imshow(B);
% figure, imshow(I);


%% Histogram
% figure, imshow(R, [])
% figure, histogram(R)
% figure, histogram(cumsum(R))

%% Histogram

% Rh=histeq(uint8(R));
% figure, imshow(Rh, [])

%% Jasová transformace
 Bt=imadjust(B, [0 1], [0 0.5])
 figure, imshow(Bt)

%% Geometrická transformace


