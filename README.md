# PANFIS
Parsimonious Network based on Fuzzy Inference System (PANFIS) for Time Series Feature Prediction of Low Speed Slew Bearing Prognosis

# Abstract
In recent years, the utilization of rotating parts, e.g. bearings and gears, has been continuously supporting the manufacturing line to produce consistent output quality. Due to their critical role, the breakdown of these components might significantly impact the production rate. A proper condition based monitoring (CBM) is among a few ways to maintain and monitor the rotating systems. Prognosis, as one of the major tasks in CBM that predicts and estimates the remaining useful life of the machine, has attracted significant interest in decades. This paper presents a literature review on prognosis approaches from published papers in the last decade. The prognostic approaches are described comprehensively to provide a better idea on how to select an appropriate prognosis method for specific needs. An advanced predictive analytics, namely Parsimonious Network Based on Fuzzy Inference System (PANFIS), was proposed and tested into the low speed slew bearing data. PANFIS differs itself from conventional prognostic approaches in which it supports for online lifelong prognostics without the requirement of retraining or reconfiguration phase. The method is applied to normal-to-failure bearing vibration data collected for 139 days and to predict the time-domain features of vibration slew bearing signals. The performance of the proposed method is compared to some established methods such as ANFIS, eTS, and Simp_eTS. From the results, it is suggested that PANFIS offers outstanding performance compared to those of other methods.

# Paper
https://www.researchgate.net/publication/329750536_Parsimonious_Network_based_on_Fuzzy_Inference_System_PANFIS_for_Time_Series_Feature_Prediction_of_Low_Speed_Slew_Bearing_Prognosis

# Implementation details
Bearing Data Structure

1: RMS
2: Variance
3: Skewness
4: Kurtosis
5: Shape Factor
6: Crest Factor
7: Entropy
8: Histogram Upp
9: Histogram Low

Direct Partition
Open bj_bearing.m, load_bearing.m

You need to take a look of Dat = TimeDomainFeatures(:,[1,2,3,4,5,6,7,8,9]); at load_bearing.m

We have 8 inputs and 1 output. To predict RMS, you need to set RMS as the output and the rest as the inputs, so  it will be Dat = TimeDomainFeatures(:,[2,3,4,5,6,7,8,1]);.
Say, you want to predict Kurtosis, you need to set as Dat = TimeDomainFeatures(:,[1,2,3,4,5,6,8,7]);

To get the same results, you need to set correct hyperparameters of PANFIS, kgrow, kprune, kfs. open "reproduced results" folder and go through direct partition folder. open the files that you want to reproduce. 
Say, RMS, there you will find kfs=5, kprune=0.01, kgrow=0.01. 

Time series 

the same step as above but you need to open bj_bearing_timeseries.m, load_bearing_timeseries.m. 

the input structure is different because we want to make one-step ahead prediction. In such a case, you need to pay attention to Dat1=[Dat(1:137,9) Dat(2:138,9) Dat(3:139,9)]; of load_bearing_timeseries.m 

if you want to predict RMS, you need to set it as Dat1=[Dat(1:137,1) Dat(2:138,1) Dat(3:139,1)]; For hyperparameters setting, you can go to "reproduced results" folder and select "timeseries". 

Here, we use two inputs and one target. 
