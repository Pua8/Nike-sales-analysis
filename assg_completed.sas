/* LOAD DATASET */
libname mydata  "/home/u63487247";
data mydata.nikeDataset;
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
CUST0722 PO9997 24/8/2021 14 Online YES NIKE_Free_RN_5.0 Synthetic,Textile 200 207 NO - - Running 8.5 35 Female Kuching - -
CUST0411 PO9788 29/8/2021 5 Online YES NIKE_Air_Max_97 Synthetic,Textile 260 531 NO - - Lifestyle/Fashion 6.5 30 Female Petaling_Jaya 2 item_defect
CUST9621 PO4591 9/8/2022 28 Online NO NIKE_Air_Max_2090 Synthetic,Textile 250 288 NO - - Lifestyle/Fashion 8 31 Male Ipoh 1 slow_delivery
CUST7558 PO9883 27/3/2021 5 Online YES NIKE_Air_Zoom_Structure Synthetic,Textile 230 291 YES 25 218.25 Running 6 27 Male Kuantan 4 love_the_discount
CUST5855 PO8507 11/10/2020 15 Online NO NIKE_Air_Max_270 Synthetic,Textile 250 311 NO - - Lifestyle/Fashion 5.5 26 Male Kota_Kinabalu 4 good_delivery
CUST2480 PO7047 23/7/2020 28 Online YES NIKE_Revolution_5 Leather,Textile 220 366 NO - - Running 7.5 32 Male Malacca_City 1 slow_delivery
CUST5940 PO5740 25/6/2021 18 Online YES NIKE_Revolution_5 Leather,Textile 220 366 NO - - Running 8.5 35 Female Kuching - -
CUST2490 PO0839 11/3/2022 6 Online NO NIKE_Air_Max_2090 Synthetic,Textile 250 288 NO - - Lifestyle/Fashion 10 43 rather_not_to_tell Shah_Alam - -
CUST6934 PO3378 17/6/2020 18 Online YES NIKE_Revolution_5 Leather,Textile 220 366 YES 55 164.7 Running 6.5 26 Female Kota_Kinabalu 5 love_the_free_gift
CUST2569 PO5264 6/9/2021 5 Online YES NIKE_Free_RN_5.0 Synthetic,Textile 200 207 YES 25 155.25 Running 7.5 38 Male Johor_Bahru 5 love_the_discount
CUST7374 PO4143 23/11/2021 5 Online NO NIKE_Air_Max_97 Synthetic,Textile 260 531 YES 25 398.25 Lifestyle/Fashion 8.5 41 rather_not_to_tell Ipoh 5 good_delivery
CUST3457 PO6164 8/6/2021 7 Online NO NIKE_React_Element_55 Synthetic,Textile 240 373 YES 50 186.5 Lifestyle/Fashion 7 30 Male Ipoh 5 good_delivery
CUST4326 PO9820 10/3/2022 6 Online YES NIKE_Free_RN_5.0 Synthetic,Textile 200 207 NO - - Running 9 40 Female Kuantan 2 item_defect
CUST5836 PO7336 1/5/2020 24 Online YES NIKE_Air_Max_90 Synthetic,Textile 270 509 NO - - Lifestyle/Fashion 5.5 25 Female Subang_Jaya 2 slow_delivery
CUST3047 PO6588 20/11/2020 5 Online NO NIKE_Air_Max_90 Synthetic,Textile 270 509 YES 50 254.5 Lifestyle/Fashion 7 25 Male Malacca_City 1 item_defect
CUST2699 PO0552 9/8/2022 6 Online YES NIKE_Air_Jordan_4 Leather,Synthetic 280 564 NO - - Basketball 8 29 Female Kuantan 1 item_defect
CUST4292 PO7088 15/9/2021 6 Online NO NIKE_Free_RN_5.0 Synthetic,Textile 200 207 NO - - Running 11 45 Female Ipoh 5 good_delivery
CUST2505 PO3380 21/2/2022 8 Online NO NIKE_Air_Zoom_Pegasus Synthetic,Textile 250 310 NO - - Running 10 42 Female Alor_Setar - -
CUST7640 PO7360 29/8/2022 6 Online NO NIKE_React_Element_55 Synthetic,Textile 240 373 YES 50 186.5 Lifestyle/Fashion 8.5 35 Female George_Town 1 item_defect
CUST2540 PO7967 19/9/2022 7 Online NO NIKE_Air_Max_270 Synthetic,Textile 250 311 NO - - Lifestyle/Fashion 7.5 33 Female Kuantan 5 good_delivery
CUST0515 PO4986 5/12/2021 15 Online YES NIKE_Air_Max_97 Synthetic,Textile 260 531 NO - - Lifestyle/Fashion 9.5 29 Male Kuching 5 love_the_free_gift
CUST1474 PO3413 25/10/2022 7 Online NO NIKE_Air_Zoom_Pegasus Synthetic,Textile 250 310 NO - - Running 5.5 42 Male Kuala_Lumpur 1 item_defect
CUST8419 PO8987 7/10/2021 7 Online YES NIKE_Air_Max_270 Synthetic,Textile 250 311 YES 25 233.25 Lifestyle/Fashion 7.5 25 Female Seremban 1 item_defect
CUST9017 PO0840 31/3/2020 28 Online NO NIKE_Revolution_5 Leather,Textile 220 366 NO - - Running 8.5 39 Male Subang_Jaya 1 slow_delivery
CUST8840 PO8077 21/7/2022 6 Online YES NIKE_Air_Max_270 Synthetic,Textile 250 311 NO - - Lifestyle/Fashion 10 42 Female Petaling_Jaya 1 item_defect
CUST6553 PO5910 14/3/2021 6 Online YES NIKE_Air_Zoom_Structure Synthetic,Textile 230 291 YES 20 232.8 Running 6.5 27 rather_not_to_tell Kuala_Lumpur 2 item_defect
CUST3507 PO4752 23/2/2020 7 Online NO NIKE_Air_Zoom_Pegasus Synthetic,Textile 250 310 YES 50 155 Running 8 29 Female Kuala_Lumpur 1 item_defect
CUST0825 PO8952 9/7/2022 27 Online YES NIKE_Air_Max_2090 Synthetic,Textile 250 288 NO - - Lifestyle/Fashion 8 31 Male Johor_Bahru 1 slow_delivery
CUST9626 PO1491 7/1/2021 25 Online YES NIKE_Air_Zoom_Pegasus Synthetic,Textile 250 310 NO - - Running 9 39 Female Penang 1 slow_delivery
CUST2998 PO3428 18/9/2020 6 Online YES NIKE_Air_Force_1 Leather,Synthetic 240 413 YES 50 206.5 Basketball 7.5 34 Male Shah_Alam 5 love_the_discount
CUST3294 PO7472 21/11/2022 17 Online NO NIKE_Air_Jordan_1 Leather,Synthetic 280 588 YES 40 352.8 Basketball 8.5 39 Male Kota_Kinabalu 5 love_the_discount
CUST7122 PO0837 8/4/2020 30 Online NO NIKE_Blazer_Mid Synthetic,Textile 265 306 NO - - Lifestyle/Fashion 7.5 27 Female Malacca_City 1 slow_delivery
CUST9293 PO7105 23/12/2021 15 Online NO NIKE_Air_Max_2090 Synthetic,Textile 250 288 NO - - Lifestyle/Fashion 9.5 42 Male Kuching - -
CUST2811 PO8300 22/11/2021 6 Online YES NIKE_Air_Jordan_1 Leather,Synthetic 280 588 NO - - Basketball 8 33 Male Petaling_Jaya - -
CUST9274 PO8573 27/3/2020 30 Online YES NIKE_Air_Max_2090 Synthetic,Textile 250 288 YES 50 144 Lifestyle/Fashion 8.5 39 rather_not_to_tell Johor_Bahru 1 slow_delivery
CUST6954 PO6965 18/10/2020 6 Online YES NIKE_SB_Dunk_Low Leather,Textile 230 508 NO - - Skateboarding 7 25 Male Ipoh 5 good_delivery
CUST1613 PO5601 21/1/2020 14 Online YES NIKE_Air_Zoom_Structure Synthetic,Textile 230 291 NO - - Running 7.5 30 rather_not_to_tell Kota_Kinabalu - -
CUST0854 PO6536 5/12/2022 5 Online YES NIKE_Blazer_Mid Synthetic,Textile 265 306 NO - - Lifestyle/Fashion 8 33 Male Ipoh 5 love_the_free_gift
CUST6924 PO9283 9/1/2021 5 Online NO NIKE_Blazer_Mid Synthetic,Textile 265 306 NO - - Lifestyle/Fashion 8 33 Female Kuala_Lumpur 5 good_delivery
CUST2609 PO0005 5/6/2021 22 Online YES NIKE_Revolution_5 Leather,Textile 220 366 NO - - Running 7.5 32 Female Kuala_Lumpur 2 slow_delivery
CUST9753 PO1112 6/5/2022 5 Online NO NIKE_Air_Max_90 Synthetic,Textile 270 509 NO - - Lifestyle/Fashion 8.5 28 Female Ipoh 5 good_delivery
CUST8294 PO7144 28/6/2021 7 Online NO NIKE_Air_Jordan_1 Leather,Synthetic 280 588 YES 55 264.6 Basketball 9.5 43 Male Kuantan 5 love_the_discount
CUST2813 PO6621 27/9/2021 6 Online YES NIKE_Air_Zoom_Pegasus Synthetic,Textile 250 310 NO - - Running 8 33 Female Penang 5 love_the_free_gift
CUST9165 PO1202 21/2/2021 6 Online YES NIKE_Air_Force_1 Leather,Synthetic 240 413 NO - - Basketball 8.5 34 rather_not_to_tell Penang 5 love_the_free_gift
CUST5228 PO9078 2/10/2020 16 Online YES NIKE_SB_Dunk_Low Leather,Textile 230 508 NO - - Skateboarding 8 33 Female Kota_Kinabalu 5 love_the_free_gift
CUST8660 PO1580 26/12/2022 26 Online YES NIKE_Air_Max_90 Synthetic,Textile 270 509 NO - - Lifestyle/Fashion 8.5 34 Female Subang_Jaya 2 slow_delivery
CUST5723 PO3457 6/12/2020 5 Online NO NIKE_Air_Jordan_1 Leather,Synthetic 280 588 YES 50 294 Basketball 9 40 Male Malacca_City - -
CUST4275 PO7800 13/5/2021 17 Online YES NIKE_Free_RN_5.0 Synthetic,Textile 200 207 NO - - Running 8.5 35 Female Kuching - -
CUST3820 PO5037 6/7/2021 6 Online NO NIKE_Air_Jordan_4 Leather,Synthetic 280 564 NO - - Basketball 8 30 Female George_Town - -
CUST4933 PO2730 26/4/2020 5 Online NO NIKE_Air_Zoom_Pegasus Synthetic,Textile 250 310 YES 48 161.2 Running 10.5 44 Male Shah_Alam - -
CUST6340 PO1531 7/6/2022 15 Online NO NIKE_Air_Jordan_4 Leather,Synthetic 280 564 YES 50 282 Basketball 11 46 Female Kota_Kinabalu - -
CUST7389 PO1948 7/1/2020 7 Online YES NIKE_Air_Jordan_4 Leather,Synthetic 280 564 NO - - Basketball 8.5 34 Female Petaling_Jaya 5 love_the_free_gift
CUST5927 PO2998 16/8/2020 7 Online YES NIKE_React_Element_55 Synthetic,Textile 240 373 NO - - Lifestyle/Fashion 8 37 rather_not_to_tell Kuantan 5 love_the_free_gift
CUST0741 PO7139 2/2/2022 6 Online YES NIKE_SB_Dunk_Low Leather,Textile 230 508 NO - - Skateboarding 8 29 Female Johor_Bahru 5 love_the_free_gift
CUST6426 PO8330 6/10/2020 5 Online NO . Synthetic,Textile . . YES 36 . Lifestyle/Fashion 9 37 Male Penang 5 love_the_discount
CUST1958 PO9189 11/12/2021 16 Online YES NIKE_React_Element_55 Synthetic,Textile 240 373 YES 50 186.5 . 7 29 Male Kota_Kinabalu 5 love_the_discount
CUST8821 PO1860 2/4/2022 17 Online NO NIKE_React_Element_55 Synthetic,Textile 240 373 YES 46 201.42 Lifestyle/Fashion 8 29 Female Kuching 5 love_the_discount
CUST6421 PO5518 27/9/2021 6 Online NO NIKE_Air_Zoom_Pegasus Synthetic,Textile 250 310 NO - - Running 6.5 27 Male Subang_Jaya - -
CUST8277 PO6215 6/5/2021 7 Online YES NIKE_Blazer_Mid Synthetic,Textile 265 306 NO - - Lifestyle/Fashion 7.5 36 Female Malacca_City 5 love_the_free_gift
CUST3292 PO6313 11/7/2020 7 Online NO NIKE_Revolution_5 Leather,Textile 220 366 NO - - Running 6.5 32 Female Alor_Setar - -
CUST4952 PO4075 1/11/2021 5 Online YES NIKE_SB_Dunk_Low Leather,Textile 230 508 YES 50 254 Skateboarding 9 37 Male Seremban 5 love_the_free_gift
CUST2077 PO5495 1/2/2021 7 Online NO NIKE_Air_Jordan_1 Leather,Synthetic 280 588 YES 50 294 Basketball 8 29 Female Kuantan 5 love_the_discount
CUST2498 PO4404 3/9/2022 6 Online YES NIKE_Air_Max_90 Synthetic,Textile 270 509 NO - - Lifestyle/Fashion 7.5 27 Female Ipoh 1 item_defect
CUST2243 PO6885 12/1/2022 6 Online YES NIKE_Air_Zoom_Structure Synthetic,Textile 230 291 NO - - Running 9.5 42 Male Penang 1 item_defect
CUST5291 PO2357 15/3/2022 30 Online YES NIKE_Air_Jordan_4 Leather,Synthetic 280 564 NO - - Basketball 8.5 38 Female Subang_Jaya 1 slow_delivery
CUST7380 PO9431 9/10/2021 32 Online NO NIKE_Air_Max_2090 Synthetic,Textile 250 288 NO - - Lifestyle/Fashion 7.5 37 Female Kuala_Lumpur 2 slow_delivery
CUST4559 PO1002 18/7/2021 5 Online NO NIKE_Air_Force_1 Leather,Synthetic 240 413 NO - - Basketball 10 44 Male George_Town 1 item_defect
CUST5291 PO7081 16/6/2021 6 Online YES NIKE_Free_RN_5.0 Synthetic,Textile 200 207 YES 37 130.41 Running 11 46 Female Kuantan 5 love_the_discount
CUST7559 PO4655 21/10/2022 17 Online NO NIKE_Air_Zoom_Structure Synthetic,Textile 230 291 NO - - Running 8.5 38 Female Kota_Kinabalu 4 good_delivery
CUST9347 PO8615 21/12/2022 6 Online YES NIKE_Air_Max_2090 Synthetic,Textile 250 288 NO - - Lifestyle/Fashion 6.5 28 Male Penang 5 love_the_free_gift
CUST3336 PO9050 13/2/2022 6 Online YES NIKE_Revolution_5 Leather,Textile 220 366 NO - - Running 8 33 Female Ipoh 5 love_the_free_gift
CUST2368 PO5656 18/1/2021 7 Online YES NIKE_Revolution_5 Leather,Textile 220 366 NO - - Running 9 37 Male Malacca_City 5 love_the_free_gift
CUST2033 PO5930 4/11/2022 6 Online NO NIKE_Air_Zoom_Structure Synthetic,Textile 230 291 NO - - Running 8 29 Female Subang_Jaya 5 good_delivery
CUST5568 PO8570 5/8/2020 6 Online NO NIKE_Air_Force_1 Leather,Synthetic 240 413 YES 50 206.5 Basketball 7.5 31 Male Shah_Alam 5 love_the_discount
CUST5745 PO1011 9/11/2022 5 Online NO NIKE_SB_Dunk_Low Leather,Textile 230 508 NO - - Skateboarding 6.5 35 Female George_Town 5 good_delivery
CUST6180 PO1627 6/12/2020 6 Online YES NIKE_Air_Zoom_Pegasus Synthetic,Textile 250 310 NO - - Running 7.5 27 Male Kuantan 5 love_the_free_gift
CUST3778 PO4539 10/9/2022 5 Online NO NIKE_Air_Max_90 Synthetic,Textile 270 509 NO - - Lifestyle/Fashion 8 35 Female Shah_Alam 1 item_defect
CUST2293 PO8229 24/11/2020 6 Online YES NIKE_Air_Max_2090 Synthetic,Textile 250 288 YES 50 144 . 8 40 Female George_Town 5 love_the_discount
CUST1094 PO9909 18/8/2022 6 Online YES NIKE_Air_Max_2090 Synthetic,Textile 250 288 YES 36 184.32 Lifestyle/Fashion 9.5 33 Male Petaling_Jaya 5 love_the_discount
CUST5350 PO2221 8/12/2020 5 Online NO NIKE_Air_Max_270 Synthetic,Textile 250 311 YES 50 155.5 Lifestyle/Fashion 8 42 Male Seremban 5 love_the_discount
CUST1622 PO8709 16/4/2022 7 Online YES NIKE_SB_Dunk_Low Leather,Textile 230 508 NO - - Skateboarding 7.5 31 Female George_Town 5 love_the_free_gift
CUST9364 PO0437 31/8/2020 27 Online YES NIKE_Air_Jordan_4 Leather,Synthetic 280 564 NO - - Basketball 6.5 34 Male Kuantan 1 slow_delivery
CUST2955 PO2695 3/9/2020 18 Online NO NIKE_Air_Max_90 Synthetic,Textile 270 509 NO - - Lifestyle/Fashion 9 28 Male Kota_Kinabalu 1 item_defect
CUST8557 PO3802 24/7/2022 7 Online NO NIKE_React_Element_55 Synthetic,Textile 240 373 NO - - . 8.5 37 Male Shah_Alam 1 item_defect
CUST1866 PO4029 9/1/2021 7 Online YES NIKE_Air_Max_90 Synthetic,Textile 270 509 NO - - Lifestyle/Fashion 8.5 35 Female Penang 1 item_defect
CUST2643 PO8781 23/2/2021 5 Online YES NIKE_Air_Jordan_4 Leather,Synthetic 280 564 YES 35 366.6 Basketball 8.5 39 Male Ipoh 5 love_the_free_gift
CUST3477 PO8226 12/12/2020 6 Online NO NIKE_Air_Max_97 Synthetic,Textile 260 531 NO - - Lifestyle/Fashion 7.5 33 Female Malacca_City 5 good_delivery
CUST7035 PO9950 30/4/2021 10 Online YES NIKE_Free_RN_5.0 Synthetic,Textile 200 207 NO - - Running 7.5 34 Male Alor_Setar 5 love_the_free_gift
CUST1160 PO0027 10/2/2020 28 Online NO NIKE_Air_Jordan_1 Leather,Synthetic 280 588 NO - - Basketball 8.5 39 Male Kuantan 1 slow_delivery
CUST9566 PO5160 29/5/2020 9 Online YES NIKE_React_Element_55 Synthetic,Textile 240 373 NO - - Lifestyle/Fashion 7 25 Male Alor_Setar 5 good_delivery
CUST0400 PO4310 11/8/2021 8 Online YES NIKE_Revolution_5 Leather,Textile 220 366 NO - - Running 6.5 27 Male Alor_Setar 5 good_delivery
CUST2454 PO8915 22/1/2020 5 Online YES NIKE_Air_Jordan_4 Leather,Synthetic 280 564 YES 50 282 Basketball 8.5 39 Male George_Town 5 good_delivery
CUST6867 PO3880 1/5/2022 5 Online NO NIKE_Air_Force_1 Leather,Synthetic 240 413 NO - - . 8 31 Female Seremban 1 item_defect
CUST6452 PO4477 10/9/2021 7 Online YES NIKE_Air_Jordan_1 Leather,Synthetic 280 588 NO - - Basketball 8 29 Female Kuala_Lumpur 1 item_defect
CUST6402 PO2173 17/11/2021 7 Online NO NIKE_Air_Max_90 Synthetic,Textile 270 509 NO - - Lifestyle/Fashion 7.5 34 Male Kuantan 1 item_defect
CUST1023 PO0498 5/8/2020 18 Online YES NIKE_Air_Jordan_4 Leather,Synthetic 280 564 NO - - Basketball 8.5 35 Female Kuching 5 love_the_free_gift
CUST5009 PO4121 18/2/2021 7 Online YES NIKE_SB_Dunk_Low Leather,Textile 230 508 YES 50 254 Skateboarding 7.5 30 Male Johor_Bahru 5 love_the_free_gift
CUST6536 PO0804 28/4/2022 7 Online YES NIKE_Air_Jordan_1 Leather,Synthetic 280 588 NO - - Basketball 8 34 Female Kuantan 5 love_the_free_gift
CUST5499 PO2971 11/2/2021 28 Online NO NIKE_Blazer_Mid Synthetic,Textile 265 306 YES 50 153 Lifestyle/Fashion 9.5 41 Female Kuala_Lumpur 2 slow_delivery
CUST7956 PO2464 20/6/2021 5 Online NO NIKE_SB_Dunk_Low Leather,Textile 230 508 NO - - Skateboarding 8.5 37 Male Shah_Alam 5 good_delivery
CUST5065 PO8428 18/6/2020 6 Online NO NIKE_Air_Max_2090 Synthetic,Textile 250 288 NO - - Lifestyle/Fashion 7.5 32 Female Subang_Jaya 5 good_delivery
CUST6617 PO9558 16/2/2021 6 Online NO NIKE_Air_Max_97 Synthetic,Textile 260 531 NO - - . 8 31 Male Shah_Alam 5 good_delivery
CUST8229 PO3340 16/6/2022 7 Online NO NIKE_Air_Max_270 Synthetic,Textile 250 311 YES 50 155.5 Lifestyle/Fashion 7 29 Male George_Town 5 good_delivery
CUST8631 PO0102 2/8/2021 17 Online NO NIKE_Air_Max_90 Synthetic,Textile 270 509 NO - - Lifestyle/Fashion 8 34 Female Kuching 2 item_defect
CUST8196 PO8223 24/6/2020 7 Online YES NIKE_Revolution_5 Leather,Textile 220 366 NO - - Running 7.5 35 Male George_Town 5 good_delivery
CUST7184 PO6915 9/7/2021 5 Online YES NIKE_Air_Max_90 Synthetic,Textile 270 509 NO - - Lifestyle/Fashion 9.5 42 Male George_Town 5 good_delivery
CUST4394 PO8354 9/11/2022 7 Online NO NIKE_Air_Zoom_Structure Synthetic,Textile 230 291 NO - - Running 7 29 Male Kuantan 5 good_delivery
CUST4318 PO8750 4/6/2021 6 Online NO NIKE_Blazer_Mid Synthetic,Textile 265 306 NO - - Lifestyle/Fashion 9.5 41 Female Kuantan 5 good_delivery
CUST3608 PO5250 8/4/2021 5 Online NO NIKE_Free_RN_5.0 Synthetic,Textile 200 207 NO - - Running 8 34 Female Kuantan 1 item_defect
CUST8135 PO1445 20/1/2020 5 Online NO NIKE_Air_Max_90 Synthetic,Textile 270 509 YES 50 254.5 Lifestyle/Fashion 7.5 30 Male Malacca_City 1 item_defect
CUST9410 PO4251 27/5/2020 5 Online NO NIKE_Revolution_5 Leather,Textile 220 366 YES 25 274.5 Running 6.5 27 Male George_Town 1 item_defect
CUST2162 PO1305 24/10/2020 15 Online NO NIKE_Air_Force_1 Leather,Synthetic 240 413 YES 50 206.5 Basketball 7.5 35 Male Kuching 1 item_defect
CUST4963 PO2613 19/7/2020 30 Online NO NIKE_Air_Force_1 Leather,Synthetic 240 413 NO - - Basketball 8 30 Female Seremban 1 slow_delivery
CUST6979 PO3407 26/2/2020 15 Online NO NIKE_Air_Jordan_1 Leather,Synthetic 280 588 NO - - Basketball 7 29 Male Kuching 1 item_defect
CUST3872 PO8528 29/11/2022 5 Online YES . Synthetic,Textile . . NO - - Lifestyle/Fashion 8 31 Female Subang_Jaya 5 love_the_free_gift
CUST7304 PO2871 14/6/2020 7 Online YES NIKE_React_Element_55 Synthetic,Textile 240 373 YES 50 186.5 Lifestyle/Fashion 7.5 25 Female Petaling_Jaya 5 love_the_free_gift
CUST5817 PO8490 4/3/2020 7 Online YES . Leather,Synthetic . . NO - - Basketball 7.5 37 Female Subang_Jaya 5 love_the_free_gift
CUST3455 PO6139 11/1/2020 6 Online YES NIKE_Revolution_5 Leather,Textile 220 366 NO - - Running 8.5 26 Male Malacca_City 5 love_the_free_gift
CUST9183 PO2876 1/10/2022 28 Online NO NIKE_Air_Force_1 Leather,Synthetic 240 413 NO - - Basketball 7 36 Female Kuala_Lumpur 1 slow_delivery
CUST4147 PO6694 29/8/2021 16 Online YES NIKE_Air_Zoom_Structure Synthetic,Textile 230 291 NO - - Running 8 39 Male Kota_Kinabalu 1 item_defect
CUST2084 PO1316 30/7/2020 6 Online NO NIKE_Air_Max_270 Synthetic,Textile 250 311 YES 45 171.05 Lifestyle/Fashion 7 29 Male Subang_Jaya 1 item_defect
CUST0779 PO4251 26/9/2020 6 Online YES NIKE_Air_Max_270 Synthetic,Textile 250 311 NO - - Lifestyle/Fashion 8 30 rather_not_to_tell Ipoh 5 love_the_free_gift
CUST7691 PO7416 19/7/2020 26 Online YES NIKE_Air_Jordan_4 Leather,Synthetic 280 564 NO - - Basketball 7.5 35 Male Petaling_Jaya 1 slow_delivery
CUST0650 PO3368 7/3/2022 27 Online NO NIKE_Air_Max_97 Synthetic,Textile 260 531 YES 50 265.5 Lifestyle/Fashion 9.5 42 Male Kuantan 1 slow_delivery
CUST8424 PO7360 13/9/2020 22 Online NO NIKE_Air_Force_1 Leather,Synthetic 240 413 NO - - Basketball 8 33 Female George_Town 2 slow_delivery
CUST2164 PO9400 14/7/2021 17 Online YES NIKE_Air_Max_97 Synthetic,Textile 260 531 NO - - Lifestyle/Fashion 7.5 37 Female Kota_Kinabalu 5 love_the_free_gift
CUST2368 PO1295 19/11/2020 5 Online YES NIKE_Free_RN_5.0 Synthetic,Textile 200 207 YES 25 155.25 Running 9.5 42 Male Penang 5 love_the_free_gift
CUST6303 PO1116 1/2/2020 17 Online YES NIKE_Air_Zoom_Pegasus Synthetic,Textile 250 310 NO - - Running 9 41 Female Kuching 5 love_the_free_gift
CUST4684 PO4282 12/4/2020 7 Online YES NIKE_Free_RN_5.0 Synthetic,Textile 200 207 NO - - Running 9 40 Male Shah_Alam 5 good_delivery
CUST4388 PO1283 15/4/2020 16 Online YES NIKE_Air_Jordan_1 Leather,Synthetic 280 588 NO - - Basketball 7.5 27 Female Kuching 5 good_delivery
CUST3986 PO9125 28/8/2022 7 Online YES NIKE_Free_RN_5.0 Synthetic,Textile 200 207 YES 50 103.5 Running 7.5 28 Male Alor_Setar 5 good_delivery
CUST6807 PO7621 15/11/2022 7 Online NO . Leather,Synthetic . . NO - - Basketball 8.5 37 Male Malacca_City 5 good_delivery
CUST4907 PO4980 29/2/2020 5 Online YES NIKE_Air_Zoom_Structure Synthetic,Textile 230 291 NO - - Running 7 25 rather_not_to_tell Malacca_City 5 love_the_free_gift
CUST2170 PO9696 9/11/2020 5 Online YES NIKE_Air_Max_270 Synthetic,Textile 250 311 NO - - Lifestyle/Fashion 7.5 27 Female Malacca_City 5 love_the_free_gift
CUST2702 PO6555 9/5/2020 6 Online YES NIKE_SB_Dunk_Low Leather,Textile 230 508 NO - - Skateboarding 7.5 36 Male Subang_Jaya 5 love_the_free_gift
CUST2464 PO4497 25/3/2020 7 Online YES NIKE_Air_Max_2090 Synthetic,Textile 250 288 YES 35 187.2 Lifestyle/Fashion 10 44 Male Penang 5 love_the_free_gift
CUST6834 PO4971 28/10/2020 29 Online YES NIKE_Air_Max_90 Synthetic,Textile 270 509 NO - - Lifestyle/Fashion 7.5 32 Female Kuantan 2 slow_delivery
CUST2927 PO3746 2/3/2022 6 Online YES NIKE_SB_Dunk_Low Leather,Textile 230 508 NO - - Skateboarding 8.5 41 Male Penang 1 item_defect
CUST7403 PO8155 4/1/2020 6 Online YES NIKE_Revolution_5 Leather,Textile 220 366 YES 50 183 Running 7 27 Male Kuantan 1 item_defect
CUST7742 PO5155 20/3/2020 7 Online NO . Leather,Synthetic . . NO - - Basketball 7.5 34 Male Kuantan 1 item_defect
CUST3618 PO7709 25/1/2022 6 Online YES NIKE_Air_Max_97 Synthetic,Textile 260 531 NO - - Lifestyle/Fashion 7.5 32 Female Shah_Alam 1 item_defect
CUST4885 PO2846 28/12/2022 28 Online NO NIKE_Blazer_Mid Synthetic,Textile 265 306 NO - - . 7.5 34 Male Ipoh 1 slow_delivery
CUST0110 PO7304 15/5/2022 5 Online NO NIKE_Air_Max_270 Synthetic,Textile 250 311 NO - - Lifestyle/Fashion 8 29 Female Ipoh 1 item_defect
CUST2923 PO9399 20/2/2020 28 Online YES NIKE_Air_Max_90 Synthetic,Textile 270 509 YES 15 432.65 Lifestyle/Fashion 8.5 37 Male Penang 1 slow_delivery
CUST1528 PO3330 29/10/2020 28 Online NO NIKE_Air_Zoom_Pegasus Synthetic,Textile 250 310 NO - - Running 7.5 27 Female Subang_Jaya 2 slow_delivery
CUST4363 PO8412 22/8/2020 27 Online YES NIKE_Free_RN_5.0 Synthetic,Textile 200 207 NO - - Running 7.5 26 Female Johor_Bahru 2 slow_delivery
CUST8199 PO9541 15/7/2021 26 Online NO NIKE_Air_Max_97 Synthetic,Textile 260 531 NO - - Lifestyle/Fashion 9.5 42 Female Shah_Alam 2 slow_delivery
CUST7540 PO2238 18/6/2021 27 Online YES NIKE_Air_Zoom_Structure Synthetic,Textile 230 291 NO - - Running 8 32 Male George_Town 1 item_defect
CUST5449 PO5451 18/1/2020 25 Online YES NIKE_React_Element_55 Synthetic,Textile 240 373 YES 50 186.5 Lifestyle/Fashion 7.5 30 Male Ipoh 2 slow_delivery
CUST8414 PO4963 14/6/2022 15 Online YES NIKE_Air_Zoom_Pegasus Synthetic,Textile 250 310 NO - - Running 8.5 38 Female Kota_Kinabalu 5 good_delivery
CUST2602 PO7823 7/9/2021 18 Online YES . Leather,Synthetic . . NO - - Basketball 7.5 27 Female Kota_Kinabalu 5 good_delivery
CUST0841 PO3023 9/6/2021 5 Online NO NIKE_Air_Max_2090 Synthetic,Textile 250 288 NO - - Lifestyle/Fashion 7.5 36 Male Ipoh 5 good_delivery
CUST6069 PO7719 25/10/2020 7 Online NO NIKE_Air_Jordan_4 Leather,Synthetic 280 564 YES 20 451.2 Basketball 9 40 Female Seremban 5 love_the_discount
CUST9205 PO3462 29/12/2022 5 Online YES NIKE_Air_Max_2090 Synthetic,Textile 250 288 NO - - Lifestyle/Fashion 10.5 45 Male Kuantan 1 item_defect
CUST0426 PO0332 22/6/2020 26 Online NO NIKE_Air_Max_97 Synthetic,Textile 260 531 NO - - Lifestyle/Fashion 8 33 Female Petaling_Jaya 1 slow_delivery
CUST7767 PO6496 9/10/2022 16 Online NO NIKE_Free_RN_5.0 Synthetic,Textile 200 207 NO - - Running 8 33 Female Kota_Kinabalu 5 good_delivery
CUST9062 PO0249 12/2/2020 25 Online NO . Leather,Synthetic . . NO - - Basketball 7.5 30 Male Seremban 1 slow_delivery
CUST2372 PO5595 1/5/2021 30 Online NO NIKE_Air_Jordan_1 Leather,Synthetic 280 588 NO - - Basketball 7.5 26 Female Petaling_Jaya 2 slow_delivery
CUST1283 PO3960 29/3/2022 27 Online NO NIKE_Revolution_5 Leather,Textile 220 366 YES 50 183 Running 8.5 34 rather_not_to_tell Kota_Kinabalu 5 love_the_discount
CUST6645 PO5452 4/6/2020 7 Online NO NIKE_React_Element_55 Synthetic,Textile 240 373 YES 18 305.86 Lifestyle/Fashion 8.5 34 Female Ipoh 5 love_the_discount
CUST1249 PO2706 7/5/2020 15 Online YES NIKE_Air_Jordan_1 Leather,Synthetic 280 588 YES 26 435.12 Basketball 7.5 36 Male Kuching 5 love_the_discount
CUST4121 PO6766 4/5/2022 7 Online YES NIKE_Air_Max_270 Synthetic,Textile 250 311 NO - - Lifestyle/Fashion 8.5 39 Male Petaling_Jaya 5 love_the_free_gift
CUST2591 PO7995 4/4/2022 23 Online NO NIKE_Air_Zoom_Structure Synthetic,Textile 230 291 YES 35 189.15 Running 7 29 Male Kuala_Lumpur 2 slow_delivery
CUST0471 PO0456 6/6/2021 23 Online NO NIKE_Air_Max_97 Synthetic,Textile 260 531 YES 50 265.5 Lifestyle/Fashion 8.5 34 Female Shah_Alam 2 slow_delivery
CUST5513 PO7843 20/10/2020 5 Online YES NIKE_Air_Max_97 Synthetic,Textile 260 531 NO - - Lifestyle/Fashion 7.5 26 rather_not_to_tell Seremban 5 love_the_free_gift
CUST8632 PO5974 15/6/2020 29 Online NO NIKE_Air_Max_270 Synthetic,Textile 250 311 NO - - . 9 40 Male Seremban 2 slow_delivery
CUST3578 PO9143 19/6/2022 6 Online NO NIKE_Air_Max_90 Synthetic,Textile 270 509 YES 45 279.95 Lifestyle/Fashion 7.5 30 Male Malacca_City 5 love_the_discount
CUST0011 PO7543 9/7/2022 7 Online NO NIKE_Air_Zoom_Pegasus Synthetic,Textile 250 310 YES 25 232.5 Running 9.5 42 Female Malacca_City 5 love_the_discount
CUST7229 PO4549 28/3/2021 27 Online YES NIKE_Air_Max_97 Synthetic,Textile 260 531 YES 50 265.5 Lifestyle/Fashion 9 40 Female Seremban 2 slow_delivery
CUST3655 PO7261 24/3/2021 30 Online NO NIKE_Air_Zoom_Structure Synthetic,Textile 230 291 NO - - Running 7.5 34 Male Seremban 2 slow_delivery
CUST3639 PO6339 21/10/2022 6 Online NO NIKE_Air_Max_97 Synthetic,Textile 260 531 NO - - Lifestyle/Fashion 7.5 27 Female Kuantan 1 item_defect
CUST2203 PO2943 11/8/2022 6 Online YES NIKE_Free_RN_5.0 Synthetic,Textile 200 207 NO - - Running 8 35 Male Johor_Bahru 5 love_the_free_gift
CUST6105 PO4324 13/3/2020 6 Online NO NIKE_React_Element_55 Synthetic,Textile 240 373 NO - - Lifestyle/Fashion 8 29 Female Subang_Jaya 5 good_delivery
CUST9210 PO6038 29/10/2022 5 Online YES NIKE_Air_Jordan_4 Leather,Synthetic 280 564 YES 50 282 Basketball 7.5 26 Female Kuala_Lumpur 5 love_the_free_gift
CUST8585 PO4605 5/1/2020 5 Online NO NIKE_Air_Max_90 Synthetic,Textile 270 509 NO - - Lifestyle/Fashion 7.5 36 Male Seremban 5 good_delivery
CUST4228 PO0213 4/12/2021 7 Online YES . Leather,Synthetic . . YES 37 . Basketball 8 29 Female Ipoh 5 love_the_discount
CUST9254 PO8039 23/7/2021 7 Online NO NIKE_Air_Jordan_1 Leather,Synthetic 280 588 YES 24 446.88 Basketball 8.5 39 Male Penang 5 love_the_discount
CUST8375 PO2917 18/9/2021 29 Online YES NIKE_Air_Force_1 Leather,Synthetic 240 413 NO - - . 7 26 Male Penang 2 slow_delivery
CUST6639 PO3560 3/1/2020 16 Online YES NIKE_Free_RN_5.0 Synthetic,Textile 200 207 NO - - Running 7 27 Male Kota_Kinabalu 5 love_the_free_gift
CUST0298 PO6469 17/6/2022 28 Online NO NIKE_Free_RN_5.0 Synthetic,Textile 200 207 YES 50 103.5 Running 7.5 26 rather_not_to_tell Shah_Alam 1 slow_delivery
;
run;

data mydata.nikeDatasetEdited;
  set mydata.nikeDataset;
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

proc print data=mydata.nikeDatasetEdited;
run; 

proc contents data=mydata.nikeDatasetEdited;
run;

/* ======================================================================================================================= */
/* DATA CLEANING */
/* drop unnecessary columns */
data mydata.nikeDatasetEdited (drop=retail_online product_purchased customer_status shoe_category shoe_size customer_location Customer_ID Purchase_ID purchase_date material weight_gram ori_price discount_percentage discounted_price);
  set mydata.nikeDatasetEdited;
run;
title 'Nike Dataset (after dropping columns)';
proc print data=mydata.nikeDatasetEdited;
run;

/* show row count with '-' values */
title 'Count of rows with null values';
data row_count;
    set mydata.nikeDatasetEdited end=last_row;
    retain count 0; /* Initialize the counter */

    /* Loop through the columns and check for '-' */
    array columns(*) _CHARACTER_; /* Specify the character columns you want to check */

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

/* The count of rows with '-' values in any of the specified columns */
proc print data=row_count noobs; /* Use the NOOBS option to exclude observation numbers */
  var count; /* Display only the count column */
run;

/* Print unique values for each column */
title 'Unique value of each column';
proc freq data=mydata.nikeDatasetEdited;
  tables _all_ / out=unique_values(drop=Frequency);
run;
title '';

/* only keep ratings that values are not '-' */
data mydata.nikeDatasetCleaned; 
    set mydata.nikeDatasetEdited;
    where customer_rating ne '-';
run;

/* only keep feedbacks that values are not '-' */
data mydata.nikeDatasetCleaned; 
    set mydata.nikeDatasetCleaned;
    where customer_feedback ne '-';
run;

/* from the code above, we can see that a small portion of customers are not willing to share their gender 
hence we will remove those customers*/
data mydata.nikeDatasetCleaned; 
  set mydata.nikeDatasetCleaned; /* Specify the dataset to read from */
  where customer_gender ne 'rather_not_to_tell'; /* Keep only rows where Gender is not equal to 'rather_not_to_tell' */
run;

/* Use INPUT function to convert character to integer */
data mydata.nikeDatasetCleaned;
  set mydata.nikeDatasetCleaned;
  arrival_days_int = input(arrival_days, best32.); 
  drop arrival_days; 
run;

/* Use INPUT function to convert character to integer */
data mydata.nikeDatasetCleaned;
  set mydata.nikeDatasetCleaned;
  customer_age_int = input(customer_age, best32.); 
  drop customer_age; 
run;

/* Check for outliers of customer age using a univariate box plot */
title 'Box Plot of Customer Age';
proc sgplot data=mydata.nikeDatasetCleaned;
  vbox customer_age_int;
run;

/* Check for outliers of arrival days using a univariate box plot */
title 'Box Plot of Arrival Days';
proc sgplot data=mydata.nikeDatasetCleaned;
  vbox arrival_days_int;
run;

/* convert gender to numeric */
data mydata.nikeDatasetCleaned;
set mydata.nikeDatasetCleaned;
/* Create a new numeric variable GenderCode with the desired format */
  if customer_gender = "Male" then GenderCode = 0;
  else if customer_gender = "Female" then GenderCode = 1;
  else GenderCode = .; /* Handle other values, or set to missing (.) if needed */
  
  /* Drop the original customer_gender variable */
  drop customer_gender;
run;

/* convert free_gift to numeric */
data mydata.nikeDatasetCleaned;
set mydata.nikeDatasetCleaned;
/* Create a new numeric variable free_gift_bool with the desired format */
  if free_gift = "NO" then free_gift_bool = 0;
  else if free_gift = "YES" then free_gift_bool = 1;
  else free_gift = .; /* Handle other values, or set to missing (.) if needed */
  
  /* Drop the original free_gift variable */
  drop free_gift;
run;

/* convert discount to numeric */
data mydata.nikeDatasetCleaned;
set mydata.nikeDatasetCleaned;
/* Create a new numeric variable discount_bool with the desired format */
  if discount = "NO" then discount_bool = 0;
  else if discount = "YES" then discount_bool = 1;
  else discount = .; /* Handle other values, or set to missing (.) if needed */
  
  /* Drop the original discount variable */
  drop discount;
run;

/* categorize rating into positive and negative */
data mydata.nikeDatasetCleaned;
set mydata.nikeDatasetCleaned;
/* ratings of 3 and above will be categorized as 1 (satisfied) 
	ratings of below 3 will be categorized as 0 (not satisfied) */
  if customer_rating >= 3 then customer_satisfaction = 1; 
  else if customer_rating < 3 then customer_satisfaction = 0;
  else customer_rating = .; /* Handle other values, or set to missing (.) if needed */
run;

title 'Nike Dataset Cleaned';
proc print data=mydata.nikeDatasetCleaned;
run;

/* ======================================================================================================================= */
/* DESCRIPTIVE ANALYSIS */
/* Calculate mean, median, mode, and standard deviation */
data mydata.nikeDatasetCleaned; 
    set mydata.nikeDatasetCleaned; 
    /* Use INPUT function to convert character to integer */
    customer_rating_numeric = input(customer_rating, best32.); /* best32. specifies the format for the integer */
    drop customer_rating; /* Drop the original character column */
run;

proc means data=mydata.nikeDatasetCleaned mean median mode std;
  var customer_rating_numeric;
run;

/* Generate frequency distribution */
proc freq data=mydata.nikeDatasetCleaned;
  tables customer_rating_numeric / noprint out=freq_output;
run;

/* Summary report of the frequency distribution */
proc print data=freq_output;
  title 'Frequency Distribution of Customer Ratings';
  var customer_rating_numeric count percent;
run;

/* Generate a rating summary for each unique value of customer_feedback */
proc means data=mydata.nikeDatasetCleaned;
  title 'Frequency Distribution of Customer Feedback';
  class customer_feedback;
  var customer_rating_numeric;
  output out=rating_summary mean=Mean median=Median mode=Mode std=StdDev n=N;
run;

proc means data=mydata.nikeDatasetCleaned;
  title 'Frequency Distribution of Arrival Days';
  class arrival_days_int;
  var customer_rating_numeric;
  output out=rating_summary mean=Mean median=Median mode=Mode std=StdDev n=N;
run;

proc means data=mydata.nikeDatasetCleaned;
  title 'Frequency Distribution of Customer Age';
  class customer_age_int;
  var customer_rating_numeric;
  output out=rating_summary mean=Mean median=Median mode=Mode std=StdDev n=N;
run;

proc means data=mydata.nikeDatasetCleaned;
  title 'Frequency Distribution of Gender Code';
  class GenderCode;
  var customer_rating_numeric;
  output out=rating_summary mean=Mean median=Median mode=Mode std=StdDev n=N;
run;

proc means data=mydata.nikeDatasetCleaned;
  title 'Frequency Distribution of Free Gift';
  class free_gift_bool;
  var customer_rating_numeric;
  output out=rating_summary mean=Mean median=Median mode=Mode std=StdDev n=N;
run;

proc means data=mydata.nikeDatasetCleaned;
  title 'Frequency Distribution of Discount';
  class discount_bool;
  var customer_rating_numeric;
  output out=rating_summary mean=Mean median=Median mode=Mode std=StdDev n=N;
run;

/* ======================================================================================================================= */
/* Visualization */
/* stacked bar chart to visualize the relationship 
   between GenderCode and customer_satisfaction */
proc sort data=mydata.nikeDatasetCleaned;
by GenderCode;                    
run;

proc freq data=mydata.nikeDatasetCleaned noprint;
by GenderCode;
tables customer_satisfaction / out=FreqOut;
run;
 
title "Relationship between gender and customer satisfaction";
proc sgplot data=FreqOut;
vbar GenderCode / response=Percent group=customer_satisfaction groupdisplay=stack;
xaxis discreteorder=data;
yaxis grid values=(0 to 100 by 10) label="Percentage";
run;

/* stacked bar chart to visualize the relationship 
   between free_gift_bool and customer_satisfaction */
proc sort data=mydata.nikeDatasetCleaned;
by free_gift_bool;                    
run;

proc freq data=mydata.nikeDatasetCleaned noprint;
by free_gift_bool;
tables customer_satisfaction / out=FreqOut;
run;
 
title "Relationship between free gift recevied and customer satisfaction";
proc sgplot data=FreqOut;
vbar free_gift_bool / response=Percent group=customer_satisfaction groupdisplay=stack;
xaxis discreteorder=data;
yaxis grid values=(0 to 100 by 10) label="Percentage";
run;

/* stacked bar chart to visualize the relationship 
   between discount_bool and customer_satisfaction */
proc sort data=mydata.nikeDatasetCleaned;
by discount_bool;                    
run;

proc freq data=mydata.nikeDatasetCleaned noprint;
by discount_bool;
tables customer_satisfaction / out=FreqOut;
run;
 
title "Relationship between discount given and customer satisfaction";
proc sgplot data=FreqOut;
vbar discount_bool / response=Percent group=customer_satisfaction groupdisplay=stack;
xaxis discreteorder=data;
yaxis grid values=(0 to 100 by 10) label="Percentage";
run;

/* scatter plot to visualize the relationship 
   between arrival_days_int and customer_satisfaction */
proc sgplot data=mydata.nikeDatasetCleaned;
  title "Scatter Plot of Arrival Days vs. Customer Satisfaction";
  scatter x=arrival_days_int y=customer_satisfaction / markerattrs=(symbol=circlefilled size=8);
  xaxis label="Arrival Days";
  yaxis label="Customer Satisfaction";
run;


/* Create a heatmap to visualize the effect of discount on customer satisfaction */
/* when there are high arrival days */
/* Filter the data to include only orders with arrival_days_int > 14 */
data mydata.nikeDatasetFiltered;
   set mydata.nikeDatasetCleaned;
   if arrival_days_int > 14;
run;

proc sgplot data=mydata.nikeDatasetFiltered;
   heatmap x=discount_bool y=customer_satisfaction;
   title "Effect of Discount on High Arrival Days Customer Satisfaction";
   xaxis label="Discount" values=(0 1);
   yaxis label="Customer Satisfaction" values=(0 1);
run;

/* Create a heatmap to visualize the effect of free gifts on customer satisfaction */
/* when there are high arrival days */
/* Filter the data to include only orders with arrival_days_int > 14 */
data mydata.nikeDatasetFiltered;
   set mydata.nikeDatasetCleaned;
   if arrival_days_int > 14;
run;

proc sgplot data=mydata.nikeDatasetFiltered;
   heatmap x=free_gift_bool y=customer_satisfaction;
   title "Effect of Free Gifts on High Arrival Days Customer Satisfaction";
   xaxis label="Free Gift" values=(0 1);
   yaxis label="Customer Satisfaction" values=(0 1);
run;

/* heatmap to visualize the relationship 
   between customer_feedback and customer_satisfaction */
title 'Relationship between customer feedback vs customer satisfaction';
PROC SGPLOT DATA=mydata.nikeDatasetCleaned;
  HEATMAP X=customer_feedback Y=customer_satisfaction;
RUN;

/* ======================================================================================================================= */
/* Hypothesis */
/* Hypothesis 1: ANOVA for 'customer_feedback' */
proc anova data=mydata.nikeDatasetCleaned;
   class customer_feedback;
   model customer_satisfaction = customer_feedback;
   title "Hypothesis 1: Difference in Customer Satisfaction by Customer Feedback";
run;

/* Step 1: Categorize feedback into positive and negative */
data mydata.nikeDatasetCleaned;
   set mydata.nikeDatasetCleaned;
   if customer_feedback in ("good delivery", "love the discount", "love the free gift") then
      feedback_category = 1;
   else if customer_feedback in ("slow delivery", "item defect") then
      feedback_category = 0;
run;

/* Step 2: calculate mean for customer_satisfaction */
proc means data=mydata.nikeDatasetCleaned mean;
   var customer_satisfaction;
   where feedback_category=0;
run;

/* Step 3: filter positive feedback only */
proc sql;
create table positive_feedback as select feedback_category, customer_satisfaction from mydata.nikeDatasetCleaned 
where feedback_category=1;
run;

/* Step 4: Perform the t-test */
proc ttest data=positive_feedback h0=0 side=u;
	var customer_satisfaction;
   title "T-test Hypothesis 1: Customer who give postive feedback is satisfied customer";
run;

/* Hypothesis 2: Regression - Relationship between arrival days and customer satisfaction */
proc reg data=mydata.nikeDatasetCleaned;
   model customer_satisfaction = arrival_days_int;
   title "Hypothesis 2: Relationship between Arrival Days and Customer Satisfaction";
run;

/* Step 1: Categorize arrival_days into slow and fast */
data mydata.nikeDatasetCleaned;
   set mydata.nikeDatasetCleaned;
   if arrival_days_int > 14 then
      is_slow_arrival = 1; /*yes, slow arrival*/
   else
      is_slow_arrival = 0;
run;

/* Step 2: calculate mean for customer_satisfaction */
proc means data=mydata.nikeDatasetCleaned mean;
   var customer_satisfaction;
   where is_slow_arrival=1;
run;

/* Step 3: filter slow arrival only */
proc sql;
create table fast_arrival as select is_slow_arrival, customer_satisfaction from mydata.nikeDatasetCleaned 
where is_slow_arrival=0;
run;

/* Step 4: Perform the t-test */
proc ttest data=fast_arrival h0=0.3 side=u;
	var customer_satisfaction;
   title "T-test Hypothesis 2: Fast arrival will increase customer satisfaction";
run;

/* Hypothesis 3: ANOVA for 'customer_age_int' */
proc anova data=mydata.nikeDatasetCleaned;
   class customer_age_int;
   model customer_satisfaction = customer_age_int;
   title "Hypothesis 3: Difference in Customer Satisfaction by Customer Age";
run;

/* Hypothesis 4: Independent t-test for 'GenderCode' */
proc ttest data=mydata.nikeDatasetCleaned;
   class GenderCode;
   var customer_satisfaction;
   ods select ttests;
   title "Hypothesis 4: Difference in Customer Satisfaction by Gender";
run;

/* Hypothesis 5: Independent t-test for 'free_gift_bool' */
proc ttest data=mydata.nikeDatasetCleaned;
   class free_gift_bool;
   var customer_satisfaction;
   ods select ttests;
   title "Hypothesis 5: Difference in Customer Satisfaction by Free Gift";
run;

/* Hypothesis 6: Independent t-test for 'discount_bool' */
proc ttest data=mydata.nikeDatasetCleaned;
   class discount_bool;
   var customer_satisfaction;
   ods select ttests;
   title "Hypothesis 6: Difference in Customer Satisfaction by Discount";
run;

/* Hypothesis 7 : T-test for Effect of Discount on Customer Satisfaction when Arrival Days is High */
proc ttest data=mydata.nikeDatasetCleaned;
   class discount_bool;
   var customer_satisfaction;
   where arrival_days_int > 14; /* Assuming high arrival date means more than 5 days */
   title "Hypothesis 7 : Effect of Discount on High Arrival Date Customer Satisfaction";
run;

/* Hypothesis 8 : T-test for Effect of Free Gift on Customer Satisfaction when Arrival Days is High*/
proc ttest data=mydata.nikeDatasetCleaned;
   class free_gift_bool;
   var customer_satisfaction;
   where arrival_days_int > 14; /* Assuming high arrival date means more than 5 days */
   title "Hypothesis 8 : Effect of Free Gift on High Arrival Date Customer Satisfaction";
run;