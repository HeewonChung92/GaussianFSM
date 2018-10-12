
% timeECG     :  time of ECG
% timePPG     :  time of PPG
% bpmECG      :  True HR (Reference)
% bpmPPG      :  estimated HR
% sigPPG      :  signal of PPG
% sigAcc      :  signal of Accelerometer
% sigGyro     :  signal of Gyroscope
% idxFSM      :  FSM state of estimated HR


figure;
plot(timeECG, bpmECG, 'b');
hold on; plot(timePPG, bpmPPG, 'r');
hold on; plot(timePPG(idxFSM), bpmPPG(idxFSM), 'r*');
xlim([0 timeECG(end)]);
legend('True HR', 'Estimated HR', 'Estimated with FSM');