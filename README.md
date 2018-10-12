# GaussianFSM
Accurate instantaneous heart rate (HR) estimation using a reflectance-type photoplethysmography (PPG) sensor is challenging since the dominant frequency from the PPG signal corrupted by motion artifacts (MAs) is not usually overlapped with true HR, especially during exercise. Recently, various MA cancellation and HR estimation algorithms have been proposed by using simultaneously measured acceleration signals as noise references, which provided accurate estimation results. Nevertheless, they did not always provide accurate results as some estimation results were completely deviated from true HRs. 

To minimize such inaccurate estimation results, we modified power spectrum of PPG signal by emphasizing the frequency power on the frequency corresponding to true HR. We derived the modified power spectrum using Gaussian Kernel function with previously estimated instantaneous HR value. Since the modification is effective only when the previously estimated instantaneous HR value is accurate, we used recently reported finite state machine (FSM) framework, which validates each instantaneous HR result in real-time. Based on the FSM framework, we modified the PPG signal only when the previously estimated instantaneous HR was declared valid. 


Gaussian Kernel-Based PPG Data with Matlab
==================================================
Heewon Chung, Hooseok Lee, and Jinseok Lee (Professor) a member of BAMI LAB.   
https://sites.google.com/site/bamilab/biosignal-lab   
Last updated 2018.10.12 (October 12, 2018)

Matlab Data
==================================================
This database contains wrist PPGs recorded during stay, walking, and running.
Accelerometers and Gyroscopes are collected to remove the motion artifact from the PPGs.
A reference chest ECG is included to allow a gold-standard comparison of heart rate during CR exercise.

ECG sampling rate : 125Hz   
PPG sampling rate : 50Hz  
Acc sampling rate : 50Hz  
Gyro sampling rate : 50Hz   

Data Description
==================================================
bpmECG    : ECG heart rate  
timeECG   : ECG times   
sigPPG    : PPG signal  
sigAcc    : Accelerometer signal  
sigGyro   : Gyroscope signal  
bpmPPG    : estimated HR
timePPG   : time of PPG
idxFSM    : FSM state of estimated HR
