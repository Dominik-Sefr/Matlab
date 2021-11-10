clc; clear all; close all; echo off;

key = 'matlab';
text = 'AHOJJAJSEMTVUJSUPERPOMOCNIK';

keyNums = double(key);
[c cisla] = sort(keyNums);
temp = (length(key) - mod(length(text), length(key))) + length(text);
text = pad(text, temp);
M = reshape(text, length(key), []);
cipher = M(cisla, :)';
convertCharsToStrings(cipher)