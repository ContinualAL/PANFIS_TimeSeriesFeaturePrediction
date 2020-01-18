
clc
clear all


kprune=1*10^(-2); %% rule pruning threshold
kfs=10; %% safety width
kgrow=1*10^(-1); %% rule growing threshold
Data=load_bearing;
fix_the_model=108; %% training samples
paramet(1)=kprune;   
paramet(2)=kfs;  

paramet(3)=kgrow; 


[bound,bound1]=size(Data);


demo='n';
ninput=8; %% input attributes
mode='p';
drift=2;
[Weight,Center,Spread,rule,y,error,population,time,focalpoints,sigmapoints]=PANFIS(Data,fix_the_model,paramet,demo,ninput,mode,drift);
