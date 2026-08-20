/* Adapted from assg_completed.sas (Pua8/Nike-sales-analysis) lines 278-357.
   Same WHERE-filter cleaning chain (drop rows with '-' rating/feedback, drop the
   "rather_not_to_tell" gender rows) and the same INPUT()/IF-ELSE recoding used to
   turn arrival_days, customer_age, customer_gender, free_gift and discount into
   numeric fields. Seed data is a 15-row subset of the repo's own datalines rows,
   inlined directly (no external libname/file needed). */
data nikeDatasetEdited;
length customer_rating $3 customer_feedback $150 customer_gender $20 free_gift $5 discount $5 arrival_days $10 customer_age 8;
input customer_rating $ customer_feedback $ customer_gender $ free_gift $ discount $ arrival_days $ customer_age;
datalines;
5 love_the_free_gift Male YES YES 17 34
5 good_delivery Female NO NO 5 40
- - Female YES NO 6 40
- - Female NO YES 15 43
- - Male NO NO 17 28
- - Male NO YES 5 43
5 love_the_free_gift Male YES NO 10 35
5 love_the_free_gift Female YES NO 14 34
5 love_the_discount Female YES YES 10 44
5 love_the_discount Female NO YES 7 33
5 love_the_discount Male YES YES 5 29
2 item_defect Male NO NO 7 31
- - Male YES NO 7 27
5 good_delivery Male YES NO 7 28
- - Female NO YES 15 33
2 slow_delivery Male YES NO 20 38
1 item_defect Female NO NO 7 39
2 item_defect Male NO NO 5 42
1 item_defect Female NO NO 6 33
5 love_the_discount rather_not_to_tell YES YES 15 34
;
run;

/* keep only rows with a real rating (source lines 278-282) */
data nikeDatasetCleaned;
    set nikeDatasetEdited;
    where customer_rating ne '-';
run;

/* keep only rows with real feedback (source lines 284-288) */
data nikeDatasetCleaned;
    set nikeDatasetCleaned;
    where customer_feedback ne '-';
run;

/* drop customers who declined to share gender (source lines 290-295) */
data nikeDatasetCleaned;
  set nikeDatasetCleaned;
  where customer_gender ne 'rather_not_to_tell';
run;

/* char-to-numeric conversions (source lines 297-309) */
data nikeDatasetCleaned;
  set nikeDatasetCleaned;
  arrival_days_int = input(arrival_days, best32.);
  drop arrival_days;
run;

/* gender -> GenderCode, free_gift -> free_gift_bool, discount -> discount_bool
   (source lines 323-357) */
data nikeDatasetCleaned;
set nikeDatasetCleaned;
  if customer_gender = "Male" then GenderCode = 0;
  else if customer_gender = "Female" then GenderCode = 1;
  else GenderCode = .;
  drop customer_gender;
run;

data nikeDatasetCleaned;
set nikeDatasetCleaned;
  if free_gift = "NO" then free_gift_bool = 0;
  else if free_gift = "YES" then free_gift_bool = 1;
  else free_gift_bool = .;
  drop free_gift;
run;

data nikeDatasetCleaned;
set nikeDatasetCleaned;
  if discount = "NO" then discount_bool = 0;
  else if discount = "YES" then discount_bool = 1;
  else discount_bool = .;
  drop discount;
run;

title 'Nike Dataset Cleaned';
proc print data=nikeDatasetCleaned;
run;
