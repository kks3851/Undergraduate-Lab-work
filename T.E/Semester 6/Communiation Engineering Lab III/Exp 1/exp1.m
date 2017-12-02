%Program 1:Calculation of average code length using Huffman Coding

P=[.26 .2  .2 .15 .1 .09]
symbol=1:6;
[dict,avglen]=huffmandict(symbol,P)
 

% Program 2: Applying Huffman coding on coins.png

A=imread('coins.png')
imhist(A)
% p=C./numel(A);
% symbol=1:256;
% [dict,avglen]=huffmandict(symbol,p)

% 
% Program 3: Applying Huffman coding on forest.tif
% 
% B=imread('forest.tif');
% D=imhist(B);
% p1=D./numel(B);
% symbol1=0:255
% [dict,avglen]=huffmandict(symbol1,p1)
% 
% 
% program 3: Applying Huffman coding on code.bmp
% 
% E=imread('forest.tif');
% F=imhist(E);
% p2=F./numel(E);
% symbol2=0:255
% [dict,avglen]=huffmandict(symbol2,p2)
