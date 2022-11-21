# coffee_roasting
Matlab code to find the average "first crack" time
1. To initiate, run roasting_timer_main.m
2. The code asks about developing duration time (expressed in percent of the total roasting time). Usually set between 20 and 30.
3. Then, insert time of the very first "first crack" in m s format, for example if you heard the first crack after 6 min 32 sec, type 6 32,
4. The code will calculate the total roasting time based on the provided data (developement percentage and first crack time),
5. Due to some distribution of grain sizes and uneven temperature, "first crack" will never occur at the same time for all the grains. 
   Therefore, now the code asks for the time when you heard crack last time,
6. The will return the average "first crack" based on times from points 2 and 5, and it will calculate total roasting time according to the average "first crack" time.
