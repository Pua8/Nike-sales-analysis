/* Adapted from assg_completed.sas (Pua8/Nike-sales-analysis) lines 312-321, 444-459, 507-521.
   Same PROC SGPLOT calls the author used: a vbox outlier check on customer_age_int,
   a stacked vbar of customer_satisfaction by GenderCode, and a heatmap of discount_bool
   vs customer_satisfaction restricted to high arrival_days_int (their own "> 14" cutoff). */
data nikeDatasetCleaned;
input customer_age_int GenderCode customer_satisfaction arrival_days_int discount_bool;
datalines;
34 0 1 17 1
40 1 1 5 0
35 0 1 10 0
34 1 1 14 0
44 1 1 10 1
33 1 1 7 1
29 0 1 5 1
31 0 0 7 0
28 0 1 7 0
38 0 0 20 0
39 1 0 7 0
42 0 0 5 0
33 1 0 6 0
33 0 1 5 1
27 0 1 6 1
35 0 1 8 1
41 1 1 32 0
43 1 0 15 0
27 0 0 5 0
27 1 1 6 0
;
run;

title 'Box Plot of Customer Age';
proc sgplot data=nikeDatasetCleaned;
  vbox customer_age_int;
run;

proc sort data=nikeDatasetCleaned out=byGender;
by GenderCode;
run;

proc freq data=byGender noprint;
by GenderCode;
tables customer_satisfaction / out=FreqOut;
run;

title "Relationship between gender and customer satisfaction";
proc sgplot data=FreqOut;
vbar GenderCode / response=Percent group=customer_satisfaction groupdisplay=stack;
xaxis discreteorder=data;
yaxis grid values=(0 to 100 by 10) label="Percentage";
run;

data nikeDatasetFiltered;
   set nikeDatasetCleaned;
   if arrival_days_int > 14;
run;

proc sgplot data=nikeDatasetFiltered;
   heatmap x=discount_bool y=customer_satisfaction;
   title "Effect of Discount on High Arrival Days Customer Satisfaction";
   xaxis label="Discount" values=(0 1);
   yaxis label="Customer Satisfaction" values=(0 1);
run;
