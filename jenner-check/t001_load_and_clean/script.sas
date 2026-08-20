/* Adapted from assg_completed.sas (Pua8/Nike-sales-analysis) lines 1-11, 214-226, 244-264.
   Same LENGTH/INPUT/DATALINES load, the same tranwrd() underscore-to-space cleanup,
   and the same array-over-_CHARACTER_ scan used to count rows containing '-' values.
   Row count trimmed to 20 (from 200) so the bundle is small; values are a real subset
   of the repo's own datalines. LIBNAME removed - WORK is used instead of "mydata" so
   the bundle runs without a filesystem path. */
data nikeDataset;
length Customer_ID $7 Purchase_ID $5 purchase_date $10 arrival_days retail_online $10 free_gift $5 product_purchased $35 material $35
weight_gram ori_price discount $5 discount_percentage discounted_price shoe_category $25 shoe_size customer_age customer_gender $20
customer_location $40 customer_rating $3 customer_feedback $150;
input Customer_ID Purchase_ID purchase_date arrival_days retail_online free_gift product_purchased material
weight_gram ori_price discount discount_percentage discounted_price shoe_category shoe_size customer_age customer_gender
customer_location customer_rating customer_feedback;
datalines;
CUST6947 PO5284 3/10/2021 17 Online YES NIKE_SB_Dunk_Low Leather,Textile 230 508 YES 20 406.4 Skateboarding 9.5 34 Male Kota_Kinabalu 5 love_the_free_gift
CUST4093 PO9665 29/1/2022 5 Online NO NIKE_Air_Zoom_Pegasus Synthetic,Textile 250 310 NO - - Running 8.5 40 Female Johor_Bahru 5 good_delivery
CUST1938 PO5186 24/2/2020 6 Online YES NIKE_Air_Force_1 Leather,Synthetic 240 413 NO - - Basketball 8.5 40 Female Shah_Alam - -
CUST3653 PO3482 8/11/2020 15 Online NO NIKE_Air_Jordan_1 Leather,Synthetic 280 588 YES 50 294 Basketball 10 43 Female Kuching - -
CUST1308 PO4956 23/10/2020 17 Online NO NIKE_Air_Zoom_Structure Synthetic,Textile 230 291 NO - - . 6.5 28 Male Kuching - -
CUST8973 PO0140 18/1/2020 5 Online NO NIKE_Air_Zoom_Structure Synthetic,Textile 230 291 YES 45 160.05 Running 9.5 43 Male Kuala_Lumpur - -
CUST6129 PO0329 31/5/2020 10 Online YES NIKE_Air_Force_1 Leather,Synthetic 240 413 NO - - Basketball 7 35 Male Alor_Setar 5 love_the_free_gift
CUST7483 PO4116 13/12/2020 14 Online YES NIKE_Air_Max_2090 Synthetic,Textile 250 288 NO - - Lifestyle/Fashion 8.5 34 Female Kuching 5 love_the_free_gift
CUST1530 PO9480 12/4/2020 10 Online YES NIKE_Free_RN_5.0 Synthetic,Textile 200 207 YES 50 103.5 Running 11 44 Female Alor_Setar 5 love_the_discount
CUST1934 PO1046 14/6/2022 7 Online NO NIKE_Revolution_5 Leather,Textile 220 366 YES 25 274.5 Running 10 33 Female Petaling_Jaya 5 love_the_discount
CUST4595 PO0458 12/6/2022 5 Online YES NIKE_Air_Max_2090 Synthetic,Textile 250 288 YES 20 230.4 . 7.5 29 Male Shah_Alam 5 love_the_discount
CUST8962 PO6538 9/10/2022 7 Online NO NIKE_Air_Max_97 Synthetic,Textile 260 531 NO - - Lifestyle/Fashion 8 31 Male Kuantan 2 item_defect
CUST2984 PO3468 22/4/2022 7 Online YES NIKE_Air_Max_2090 Synthetic,Textile 250 288 NO - - Lifestyle/Fashion 6 27 Male Penang - -
CUST7041 PO8981 2/10/2022 7 Online YES NIKE_Air_Max_90 Synthetic,Textile 270 509 NO - - Lifestyle/Fashion 6.5 28 Male Johor_Bahru 5 good_delivery
CUST0380 PO1472 3/3/2022 15 Online NO NIKE_Free_RN_5.0 Synthetic,Textile 200 207 YES 50 103.5 Running 10 33 Female Kuching - -
CUST3552 PO7716 7/1/2021 20 Online YES NIKE_Air_Force_1 Leather,Synthetic 240 413 NO - - Basketball 7.5 38 Male Subang_Jaya 2 slow_delivery
CUST4839 PO5258 30/1/2020 7 Online NO NIKE_Free_RN_5.0 Synthetic,Textile 200 207 NO - - Running 8.5 39 Female Shah_Alam 1 item_defect
CUST8393 PO4154 2/1/2020 5 Online NO NIKE_Air_Force_1 Leather,Synthetic 240 413 NO - - Basketball 9.5 42 Male George_Town 2 item_defect
CUST3019 PO7117 24/2/2021 6 Online NO NIKE_Air_Jordan_1 Leather,Synthetic 280 588 NO - - Basketball 7.5 33 Female Johor_Bahru 1 item_defect
CUST3845 PO5410 6/7/2020 15 Online YES NIKE_Air_Max_90 Synthetic,Textile 270 509 YES 50 254.5 Lifestyle/Fashion 8 34 rather_not_to_tell Kota_Kinabalu 5 love_the_discount
;
run;

/* same tranwrd() underscore-cleanup as source lines 214-226 */
data nikeDatasetEdited;
  set nikeDataset;
    if index(product_purchased, '_') > 0 then do;
    product_purchased = tranwrd(product_purchased, "_", " ");
      end;
    if index(customer_location, '_') > 0 then do;
    customer_location = tranwrd(customer_location, "_", " ");
      end;
      if index(customer_feedback, '_') > 0 then do;
    customer_feedback = tranwrd(customer_feedback, "_", " ");
      end;
  output;
run;

proc print data=nikeDatasetEdited;
run;

proc contents data=nikeDatasetEdited;
run;

/* same array-over-_CHARACTER_ scan as source lines 244-264: count rows
   containing a '-' placeholder in any character column */
title 'Count of rows with null values';
data row_count;
    set nikeDatasetEdited end=last_row;
    retain count 0;

    array columns(*) _CHARACTER_;

    do i = 1 to dim(columns);
        if index(columns[i], '-') > 0 then
        do;
        	count + 1;
        	leave;
        end;
    end;

    if last_row then output;

    drop i;
run;

proc print data=row_count noobs;
  var count;
run;
