/* Adapted from assg_completed.sas (Pua8/Nike-sales-analysis) lines 580-611 (Hypothesis 2).
   Same PROC REG of customer_satisfaction on arrival_days_int, the same is_slow_arrival
   recode (their own "> 14" cutoff), and the same fast-arrival PROC TTEST the author
   used to test whether faster delivery increases satisfaction. */
data nikeDatasetCleaned;
input arrival_days_int customer_satisfaction;
datalines;
17 1
5 1
6 1
15 1
17 0
5 0
10 1
14 1
10 1
7 1
5 1
7 0
7 1
15 0
20 0
7 0
5 0
6 0
15 1
14 0
;
run;

proc reg data=nikeDatasetCleaned;
   model customer_satisfaction = arrival_days_int;
   title "Hypothesis 2: Relationship between Arrival Days and Customer Satisfaction";
run;
quit;

data nikeDatasetCleaned;
   set nikeDatasetCleaned;
   if arrival_days_int > 14 then
      is_slow_arrival = 1;
   else
      is_slow_arrival = 0;
run;

proc means data=nikeDatasetCleaned mean;
   var customer_satisfaction;
   where is_slow_arrival=1;
run;

proc sql;
create table fast_arrival as select is_slow_arrival, customer_satisfaction from nikeDatasetCleaned
where is_slow_arrival=0;
quit;

proc ttest data=fast_arrival h0=0.3 side=u;
	var customer_satisfaction;
   title "T-test Hypothesis 2: Fast arrival will increase customer satisfaction";
run;
