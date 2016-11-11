data = load('output.dat');

w = 128;
h = 128;

d = mat2gray(bin2dec(num2str(data)));
im = reshape(d, w,h)';
imwrite(im, 'output.bmp');