%% ROASTER TIMER
clear all
close all

prompt = 'Developing percentage: ';
dev_per = input(prompt,'s');
dev_per = str2num(dev_per);

prompt = 'First crack (mm ss): ';
first_crack = input(prompt,'s');
first_crack = str2num(first_crack);

tmin = first_crack(1);
tsec = first_crack(2);
perc = 100 - dev_per;

first_finish = roast(tmin,tsec,perc);
disp('_____________________')
prompt = 'Last First crack (mm ss): '; % when you dont hear crack anymore
last_first_crack = input(prompt,'s');
last_first_crack = str2num(last_first_crack);

first_crack_digit = first_crack(1) + first_crack(2)/60;
last_first_crack_digit = last_first_crack(1) + last_first_crack(2)/60;

mean_first_crack_digit = mean([first_crack_digit last_first_crack_digit]);

tmin_mean = floor(mean_first_crack_digit);
tsec_mean = round((mean_first_crack_digit - tmin_mean)*60);

disp(strcat('Mean first crack: ',num2str(tmin_mean),'min',num2str(tsec_mean),'sec'))
second_finish = roast(tmin_mean,tsec_mean,perc);


