%Kaitlyn Kirt, CMOR 220, SPRING 2024, Grow a Fern Project
%Project1.m
%This script is a project on functions, drivers, plots, and if-else statements
%Last Motified: Janurary 28, 2024

%driver
function Project1
%Question1
disp("Question 1")
Question1 
%Question2
disp("Question 2")
Question2
end 

function Question1
%inputs: none
%outputs: figure with points of z
%description: this function creates a plot of a simple fern 
figure(1);
hold on;
title("Simple Fern");
z=[1 ; 0];
    for i=1:4000 %runs code 4000 times
        r=rand; %produces a random number from 0-1
        if r < 0.3994 %assumes the random number is less than 0.3994
           z=[0.4 -0.3733 ; 0.06 0.60]*z+[0.3533 ; 0]; %manipulates given matrix z
        else z=[-0.8 -0.1867 ; 0.1371 0.80]*z+[1.1 ; 0.1]; %uses this matrix manipulation if the random number is more than 0.3994
        end
        plot(z(1),z(2),'.','MarkerSize',2) %produces a plot that creates a fern with all z points
    end 
%if I increase the cutoff value, the fern disappears slowly by the tips of
%the leaves (outwards)
%if I decrease the cutoff value, the fern disappears slowly by the stems
%(inwards) 
end 

function Question2
%inputs: none
%outputs: figure with points of z
%description: this function creates a plot of an advanced fern
figure(2);
hold on;
title("Advanced Fern");
z=[1 ; 0];
    for i=1:4000 %runs code 4000 times 
        r=rand; %produces a random number from 0-1
        if r < 0.01 %assumes the random number is less than 0.01
            z=[0 0 ; 0 0.16]*z;
        elseif r < 0.76 %assumes the random number is between 0.01 and 0.76
            z=[0.85 0.04 ; -0.04 0.85]*z+[0 ; 1.6];
        elseif r < 0.88 %assumes the random number is between 0.76 and 0.88
            z=[0.2 -0.26 ; 0.23 0.22]*z+[0 ; 1.6];
        else z=[-0.15 0.28 ; 0.26 0.24]*z+[0 ; 0.44]; %matrix multiplication if the random number is 0.88 or greater
        end 
        plot(z(1), z(2),'.','MarkerSize',2) %produces a plot that creates a fern with all z points 
    end 
end

