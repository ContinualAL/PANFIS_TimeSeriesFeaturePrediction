
clc
clear all


kprune=1*10^(-2); %% rule pruning threshold
kfs=9; %% safety width
kgrow=1*10^(-2); %% rule growing threshold

fix_the_model=137; %% training samples
paramet(1)=kprune;   
paramet(2)=kfs;  

paramet(3)=kgrow; 

Data=load_bearing_timeseries;
[bound,bound1]=size(Data);


demo='n';
ninput=2; %% input attributes
mode='p';
drift=2;
[Weight,Center,Spread,rule,y,error,population,time,focalpoints,sigmapoints,rmse_fix,rmse_evo,transparent_Center,transparent_width]=PANFIS(Data,fix_the_model,paramet,demo,ninput,mode,drift);
