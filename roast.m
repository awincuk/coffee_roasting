function zwrot = roast(tmin,tsec,perc)
%tmin=4;
%tsec=15;
%perc=80;

timeinmin= tmin+tsec/60;

total_time = timeinmin / (perc/100);

total_min=floor(total_time);

total_sec = round((total_time - total_min)*60);

disp('Roast total time:')
licz= strcat(num2str(total_min),'min',num2str(total_sec),'sec');

disp(licz)

zwrot = [total_min total_sec];
end