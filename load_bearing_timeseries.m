function [Data, n] = load_bearing_timeseries



load TimeDomainFeatures.dat;
Dat = TimeDomainFeatures;%bj_data(:,[9,2,1]);
Dat1=[Dat(1:137,9) Dat(2:138,9) Dat(3:139,9)];
columns = 3;


for i=1:columns
     min_(i) = min(Dat1(:,i));
     max_(i) = max(Dat1(:,i));
     Dat1(:,i) = (Dat1(:,i)-min_(i))/(max_(i) - min_(i));
 end

% Aggregation of data
Data = Dat1;%[Dat(:,1) Dat(:,2) Dat(:,3)];

n=2;