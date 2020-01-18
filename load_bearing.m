function [Data, n] = load_bearing


load TimeDomainFeatures.dat;
Dat = TimeDomainFeatures(:,[1,2,3,4,5,6,7,8,9]);%bj_data(:,[9,2,1]);
columns = 9;


% Normalization of the data in [0 1]
for i=1:columns
     min_(i) = min(Dat(:,i));
     max_(i) = max(Dat(:,i));
     Dat(:,i) = (Dat(:,i)-min_(i))/(max_(i) - min_(i));
 end

% Aggregation of data
Data = Dat;%[Dat(:,1) Dat(:,2) Dat(:,3)];

n=8;