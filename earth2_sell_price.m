%% Cleaning up workspace 
clear
close all 
clc 
format compact

%% Input values 
% These are the inputs we are asking the user for:
% # ITEM1 BOUGHT FOR 
% # ITEM2 NEW LAND VALUE 
% # ITEM3 TILES NUMBER 

%% Write here your inputs
%Here we are asking the user to enter the values.
prompt1 = 'Write the bought price and press enter: ';
prompt2 = 'Write the new land value and press enter again: ';
prompt3 = 'Finally enter the number of tiles you bought: ';
bought_for = input(prompt1);
new_value = input(prompt2);
num_tiles = input(prompt3);
%% Calculating sell price
%This section is for computing and doing easy algebra... 

originalPrice = bought_for/num_tiles
newPrice = new_value/num_tiles

%How much it increased
increase_raw_value = new_value/bought_for;
increased_percentage_raw = increase_raw_value - 1;
increased_percentage = increased_percentage_raw*100

%Calculating the selling price 
minus_percentage = newPrice*.05;
sell_price = newPrice - minus_percentage;
roundsell = round(sell_price,2)
stringsell = num2str(roundsell);
s1 = 'The recommended sale price per tile is: ';
s2 = stringsell;
s = strcat(s1,s2);
disp(s)
