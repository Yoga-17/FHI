rgb = imread("NORMAL_EYE.jpg");
gray = rgb2gray(rgb);
gray = medfilt2(gray, [3 3]);
BW = gray > 102;
edges = edge(gray, "canny");
b = bwmorph(edges, 'bridge');
se = strel('line', 4, 180);
b = imdilate(b, se);
imshow(b); 
