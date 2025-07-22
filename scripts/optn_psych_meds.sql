-- Author: Amber Fedynak 
-- Date: March 24, 2025

SELECT 
    record_id,
    MAX(CASE WHEN redcap_repeat_instance = '1' THEN psych_med_date_entered END) AS psych_med_date_entered_1,
    MAX(CASE WHEN redcap_repeat_instance = '1' THEN psych_med1 END) AS psych_med1_1,
    MAX(CASE WHEN redcap_repeat_instance = '1' THEN psych_med_reason END) AS psych_med_reason_1,
    MAX(CASE WHEN redcap_repeat_instance = '1' THEN psych_med_start END) AS psych_med_start_1,
    MAX(CASE WHEN redcap_repeat_instance = '1' THEN psych_med_end END) AS psych_med_end_1,
    
    MAX(CASE WHEN redcap_repeat_instance = '2' THEN psych_med_date_entered END) AS psych_med_date_entered_2,
    MAX(CASE WHEN redcap_repeat_instance = '2' THEN psych_med1 END) AS psych_med1_2,
    MAX(CASE WHEN redcap_repeat_instance = '2' THEN psych_med_reason END) AS psych_med_reason_2,
    MAX(CASE WHEN redcap_repeat_instance = '2' THEN psych_med_start END) AS psych_med_start_2,
    MAX(CASE WHEN redcap_repeat_instance = '2' THEN psych_med_end END) AS psych_med_end_2,
    
    MAX(CASE WHEN redcap_repeat_instance = '3' THEN psych_med_date_entered END) AS psych_med_date_entered_3,
    MAX(CASE WHEN redcap_repeat_instance = '3' THEN psych_med1 END) AS psych_med1_3,
    MAX(CASE WHEN redcap_repeat_instance = '3' THEN psych_med_reason END) AS psych_med_reason_3,
    MAX(CASE WHEN redcap_repeat_instance = '3' THEN psych_med_start END) AS psych_med_start_3,
    MAX(CASE WHEN redcap_repeat_instance = '3' THEN psych_med_end END) AS psych_med_end_3,
    
    MAX(CASE WHEN redcap_repeat_instance = '4' THEN psych_med_date_entered END) AS psych_med_date_entered_4,
    MAX(CASE WHEN redcap_repeat_instance = '4' THEN psych_med1 END) AS psych_med1_4,
    MAX(CASE WHEN redcap_repeat_instance = '4' THEN psych_med_reason END) AS psych_med_reason_4,
    MAX(CASE WHEN redcap_repeat_instance = '4' THEN psych_med_start END) AS psych_med_start_4,
    MAX(CASE WHEN redcap_repeat_instance = '4' THEN psych_med_end END) AS psych_med_end_4,
    
    MAX(CASE WHEN redcap_repeat_instance = '5' THEN psych_med_date_entered END) AS psych_med_date_entered_5,
    MAX(CASE WHEN redcap_repeat_instance = '5' THEN psych_med1 END) AS psych_med1_5,
    MAX(CASE WHEN redcap_repeat_instance = '5' THEN psych_med_reason END) AS psych_med_reason_5,
    MAX(CASE WHEN redcap_repeat_instance = '5' THEN psych_med_start END) AS psych_med_start_5,
    MAX(CASE WHEN redcap_repeat_instance = '5' THEN psych_med_end END) AS psych_med_end_5,
    
    MAX(CASE WHEN redcap_repeat_instance = '6' THEN psych_med_date_entered END) AS psych_med_date_entered_6,
    MAX(CASE WHEN redcap_repeat_instance = '6' THEN psych_med1 END) AS psych_med1_6,
    MAX(CASE WHEN redcap_repeat_instance = '6' THEN psych_med_reason END) AS psych_med_reason_6,
    MAX(CASE WHEN redcap_repeat_instance = '6' THEN psych_med_start END) AS psych_med_start_6,
    MAX(CASE WHEN redcap_repeat_instance = '6' THEN psych_med_end END) AS psych_med_end_6,
    
    MAX(CASE WHEN redcap_repeat_instance = '7' THEN psych_med_date_entered END) AS psych_med_date_entered_7,
    MAX(CASE WHEN redcap_repeat_instance = '7' THEN psych_med1 END) AS psych_med1_7,
    MAX(CASE WHEN redcap_repeat_instance = '7' THEN psych_med_reason END) AS psych_med_reason_7,
    MAX(CASE WHEN redcap_repeat_instance = '7' THEN psych_med_start END) AS psych_med_start_7,
    MAX(CASE WHEN redcap_repeat_instance = '7' THEN psych_med_end END) AS psych_med_end_7,
    
    MAX(CASE WHEN redcap_repeat_instance = '8' THEN psych_med_date_entered END) AS psych_med_date_entered_8,
    MAX(CASE WHEN redcap_repeat_instance = '8' THEN psych_med1 END) AS psych_med1_8,
    MAX(CASE WHEN redcap_repeat_instance = '8' THEN psych_med_reason END) AS psych_med_reason_8,
    MAX(CASE WHEN redcap_repeat_instance = '8' THEN psych_med_start END) AS psych_med_start_8,
    MAX(CASE WHEN redcap_repeat_instance = '8' THEN psych_med_end END) AS psych_med_end_8,
    
    MAX(CASE WHEN redcap_repeat_instance = '9' THEN psych_med_date_entered END) AS psych_med_date_entered_9,
    MAX(CASE WHEN redcap_repeat_instance = '9' THEN psych_med1 END) AS psych_med1_9,
    MAX(CASE WHEN redcap_repeat_instance = '9' THEN psych_med_reason END) AS psych_med_reason_9,
    MAX(CASE WHEN redcap_repeat_instance = '9' THEN psych_med_start END) AS psych_med_start_9,
    MAX(CASE WHEN redcap_repeat_instance = '9' THEN psych_med_end END) AS psych_med_end_9

FROM 
    baard.optn_psych_meds_arm_6_8_20250228
WHERE
    redcap_event_name = 'tracking_arm_8'
GROUP BY 
    record_id;
