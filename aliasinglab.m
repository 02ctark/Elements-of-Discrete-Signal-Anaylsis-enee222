% Program to investigate aliasing

%read in the data
[data, fs] = audioread('Eartha Kitt - Santa Baby (Official Audio).mp3');

Ts=1/fs
N = 5; % keep every Nth sample of the data


% define subsets of the data
data_channel1 = data(:,1);  % extracting 1st column of the data
data_channel1_excerpt = data_channel1(70000:72000); 
% the above extracts 200 points of the data starting
% at n = 70000
% 
% plot the data
n = 1:length(data_channel1_excerpt);
subplot(2,2,1), stem(n,data_channel1_excerpt)
subplot(2,2,2), stem(data_channel1)
% nmin = 80000;
% %nmax = length(data_channel1);
% nmax = 80100;
% axis([ nmin nmax min(data_channel1) max(data_channel1)])


%downsample the data
 downsampled_data = downsample(data_channel1, N); % keep every Nth point
 soundsc(downsampled_data, fs/N)%

 Ts = 1e-5;
t = 0: Ts: 2*1/100;
x = cos(2*pi*100*t)
plot(t,x)
x1 = cos(2*pi*500*t)
hold on  % allows you to overlay a second plot
plot(t,x1)
hold off  % stop overlay


