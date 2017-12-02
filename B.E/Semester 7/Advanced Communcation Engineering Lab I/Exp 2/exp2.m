clc
close all;
clear all;
area_cell=12;
total_area=4200;
total_channels=1001;
radius_cell=sqrt(area_cell/2.59);
n=7 % size of cluster
%b
freq_reuse=12;
min_reusable_distance=(freq_reuse*radius_cell)

%a
area_cluster=(area_cell*n)
total_cluster=(total_area)/(area_cluster)
no_channels_cell=(total_channels)/(n)
total_capacity=(total_channels*total_cluster)

%c
n1=4
area_cluster=(area_cell*n1)
total_cluster1=floor(total_area/area_cluster)
capacity=total_channels*total_cluster1