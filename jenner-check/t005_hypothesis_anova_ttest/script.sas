/* Adapted from assg_completed.sas (Pua8/Nike-sales-analysis) lines 546-578 (Hypothesis 1).
   Same PROC ANOVA of customer_satisfaction by customer_feedback, the same feedback
   -> feedback_category recode, the same PROC SQL positive-feedback subset, and the
   same one-sided PROC TTEST against h0=0 the author used to test whether positive
   feedback correlates with satisfaction. */
data nikeDatasetCleaned;
length customer_feedback $20;
input customer_feedback $ customer_satisfaction;
datalines;
love_the_free_gift 1
good_delivery 1
love_the_discount 1
love_the_discount 0
love_the_discount 1
item_defect 0
good_delivery 1
slow_delivery 0
item_defect 0
item_defect 0
love_the_free_gift 1
good_delivery 0
love_the_free_gift 1
love_the_discount 1
item_defect 0
slow_delivery 1
love_the_free_gift 1
good_delivery 1
slow_delivery 0
love_the_discount 1
;
run;

proc anova data=nikeDatasetCleaned;
   class customer_feedback;
   model customer_satisfaction = customer_feedback;
   title "Hypothesis 1: Difference in Customer Satisfaction by Customer Feedback";
run;

data nikeDatasetCleaned;
   set nikeDatasetCleaned;
   if customer_feedback in ("good_delivery", "love_the_discount", "love_the_free_gift") then
      feedback_category = 1;
   else if customer_feedback in ("slow_delivery", "item_defect") then
      feedback_category = 0;
run;

proc means data=nikeDatasetCleaned mean;
   var customer_satisfaction;
   where feedback_category=0;
run;

proc sql;
create table positive_feedback as select feedback_category, customer_satisfaction from nikeDatasetCleaned
where feedback_category=1;
quit;

proc ttest data=positive_feedback h0=0 side=u;
	var customer_satisfaction;
   title "T-test Hypothesis 1: Customer who give positive feedback is satisfied customer";
run;
