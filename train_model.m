% Path to real currency images
datasetPath = 'E:\datastorage\real'; 
if ~isfolder(datasetPath)
    error('Dataset folder not found! Check path: %s', datasetPath);
end

realImages = imageDatastore(datasetPath, 'IncludeSubfolders', true, 'LabelSource', 'foldernames');
realHistograms = cell(length(realImages.Files), 1);

for i = 1:length(realImages.Files)
    img = imread(realImages.Files{i});
    imgGray = rgb2gray(imresize(img, [227 227])); 
    realHistograms{i} = imhist(imgGray); 
end

save('real_currency_features.mat', 'realHistograms');
disp('✅ Real currency features saved successfully!');
