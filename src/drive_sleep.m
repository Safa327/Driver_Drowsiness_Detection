clc;
clear;
close all;

% Read Image
[file, path] = uigetfile('*.*', 'Select an Image');

if isequal(file,0)
    disp('No image selected');
    return;
end

img = imread(fullfile(path,file));

% Display Image
figure;
imshow(img);
title('Input Image');

% Convert to grayscale
grayImg = rgb2gray(img);

% Face Detection
faceDetector = vision.CascadeObjectDetector();

faceBBox = step(faceDetector, grayImg);

if isempty(faceBBox)
    disp('No Face Detected');
    return;
end

% Draw Face Rectangle
imgFace = insertObjectAnnotation(img,'rectangle',faceBBox,'Face');

% Eye Detection
eyeDetector = vision.CascadeObjectDetector('EyePairBig');

eyeBBox = step(eyeDetector, grayImg);

if isempty(eyeBBox)

    % Drowsiness Detected
    disp('DROWSINESS DETECTED!');

    figure;
    imshow(imgFace);
    title('Drowsiness Detected');

    % Alarm Sound
    load handel.mat
    sound(y,Fs);

else

    % Driver Awake
    disp('Driver is Awake');

    imgEye = insertObjectAnnotation(imgFace,...
        'rectangle',eyeBBox,'Eyes');

    figure;
    imshow(imgEye);
    title('Driver Awake');

end
