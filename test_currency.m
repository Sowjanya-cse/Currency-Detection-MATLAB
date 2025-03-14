clc; clear; close all;
warning off;

% Load stored real currency features
if exist('real_currency_features.mat', 'file') ~= 2
    error('Run "train_model.m" first to extract real currency features.');
end
load('real_currency_features.mat', 'realHistograms');

% Upload an image for testing
[file, path] = uigetfile({'*.jpg;*.png;*.bmp', 'Image Files (*.jpg, *.png, *.bmp)'}, 'Select Currency Image');
if isequal(file, 0)
    disp('No image selected. Exiting...');
    return;
end

% Read and preprocess the uploaded image
uploadedImage = imread(fullfile(path, file));
uploadedImage = imresize(uploadedImage, [227 227]);  
uploadedGray = rgb2gray(uploadedImage);
uploadedHist = imhist(uploadedGray);  

% Apply Canny Edge Detection
edges = edge(uploadedGray, 'Canny');

% Compare uploaded image with stored real currency features
bestSimilarity = 0;
threshold = 0.85; 
for i = 1:length(realHistograms)
    similarity = corr2(realHistograms{i}, uploadedHist);
    if similarity > bestSimilarity
        bestSimilarity = similarity;
    end
end

% Display the original image
subplot(1, 2, 1);
imshow(uploadedImage);
title('Original Image');

% Display the Canny Edge Detection result
subplot(1, 2, 2);
imshow(edges);
title('Canny Edge Detection');

% Show the result message
if bestSimilarity >= threshold
    msgbox('✅ The currency is REAL!', 'Result', 'help');
    disp('✅ The currency is REAL!');
else
    msgbox('❌ Fake Currency Detected!', 'Warning', 'error');
    disp('❌ FAKE Currency Detected!');
end