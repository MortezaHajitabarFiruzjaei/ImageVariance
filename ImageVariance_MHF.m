%==================================================================================
Morteza Hajitabar Firuzjaei
%==================================================================================
close all; 
clear all;
clc; I = imread('b.png');
blockSize = [64 64];
varFilterFunction = @(theBlockStructure) var(double(theBlockStructure.data(:)));
blockyImagevar = blockproc(I, blockSize, varFilterFunction);
varianceImage=blockyImagevar(:);
display(varianceImage);
%==================================================================================
