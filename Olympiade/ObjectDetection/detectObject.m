clear;
m = mobiledev;
cam = camera(m,'back');

% Vortrainiertes Netzwerk GoogLeNet laden
nnet = googlenet;

% Bild aufnehmen und anzeigen
img = snapshot(cam,'manual');
pic = imresize(img,[224,224]);
image(pic)

% Klassifizieren
value = classify(nnet,pic);
title(char(value))

fprintf('Erkannt wurde:\t%s\n', value);
checkDetectedObject(char(value));



