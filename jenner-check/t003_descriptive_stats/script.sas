/* Adapted from assg_completed.sas (Pua8/Nike-sales-analysis) lines 376-425.
   Same PROC MEANS (mean/median/mode/std) and PROC FREQ frequency-distribution
   pattern the author ran against customer_rating_numeric, broken out by
   customer_feedback, arrival_days_int, customer_age_int, GenderCode,
   free_gift_bool and discount_bool. Seed data mirrors the cleaned/recoded
   shape their pipeline produces just before this stage. */
data nikeDatasetCleaned;
input customer_rating_numeric arrival_days_int customer_age_int GenderCode free_gift_bool discount_bool;
datalines;
5 17 34 0 1 1
5 5 40 1 0 0
5 10 35 0 1 0
5 14 34 1 1 0
5 10 44 1 1 1
5 7 33 1 0 1
5 5 29 0 1 1
2 7 31 0 0 0
5 7 28 0 1 0
2 20 38 0 1 0
1 7 39 1 0 0
2 5 42 0 0 0
1 6 33 1 0 0
5 5 33 0 0 1
5 6 27 0 0 1
5 8 35 0 0 1
5 32 41 1 0 0
1 15 43 1 0 0
2 5 27 0 1 0
5 6 27 1 0 0
;
run;

proc means data=nikeDatasetCleaned mean median mode std;
  var customer_rating_numeric;
run;

proc freq data=nikeDatasetCleaned;
  tables customer_rating_numeric / noprint out=freq_output;
run;

title 'Frequency Distribution of Customer Ratings';
proc print data=freq_output;
  var customer_rating_numeric count percent;
run;
title;

proc means data=nikeDatasetCleaned;
  title 'Frequency Distribution of Arrival Days';
  class arrival_days_int;
  var customer_rating_numeric;
  output out=rating_summary mean=Mean median=Median mode=Mode std=StdDev n=N;
run;

proc means data=nikeDatasetCleaned;
  title 'Frequency Distribution of Customer Age';
  class customer_age_int;
  var customer_rating_numeric;
  output out=rating_summary mean=Mean median=Median mode=Mode std=StdDev n=N;
run;

proc means data=nikeDatasetCleaned;
  title 'Frequency Distribution of Gender Code';
  class GenderCode;
  var customer_rating_numeric;
  output out=rating_summary mean=Mean median=Median mode=Mode std=StdDev n=N;
run;
