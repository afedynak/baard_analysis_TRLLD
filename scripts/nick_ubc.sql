-- Author: Amber Fedynak 
-- Date: March 26, 2025

SET SQL_SAFE_UPDATES=0;

UPDATE madras.baseline_s1_nick_ubc
SET `Step 1 Randomization` = "Aripiprazole"
WHERE `Step 1 Randomization` = "1";

UPDATE madras.baseline_s1_nick_ubc
SET `Step 1 Randomization` = "Bupropion"
WHERE `Step 1 Randomization` = "2";

UPDATE madras.baseline_s1_nick_ubc
SET `Step 1 Randomization` = "Bup_switch"
WHERE `Step 1 Randomization` = "3";


UPDATE madras.baseline_s1_nick_ubc
SET `Study_med_Week_10_S1` = "Aripiprazole"
WHERE `Study_med_Week_10_S1` = "1";

UPDATE madras.baseline_s1_nick_ubc
SET `Study_med_Week_10_S1` = "Bupropion"
WHERE `Study_med_Week_10_S1` = "2";

UPDATE madras.baseline_s1_nick_ubc
SET `Study_med_Week_10_S1` = "Neither"
WHERE `Study_med_Week_10_S1` = "0";

SELECT 
    `ID` AS record_id,
    `Gender` AS gender,
    `age` AS age,
    `Race` AS race,
    `Race Group` AS race_2,
    `Ethnicity` AS ethnicity,
    `Education, yrs` AS education,
    `Marital Status` AS marital_status,
    `Marital Status_[0]` AS marital_status_2,
    `Step 1 Randomization` AS s1_randomization,
    `CIRS-G` AS cirs_g,
    `Fall Time` AS fall_times,
    `Fall History` AS fall_history,
    `Injurous Fall` AS inj_fall,
    `BMI` AS bmi,
    `Study_med_Week_10_S1` AS medication,
    `MADRS.baseline` AS madrs_baseline,
    `MADRS.endS1` AS madrs_week10
FROM madras.baseline_s1_nick_ubc;
