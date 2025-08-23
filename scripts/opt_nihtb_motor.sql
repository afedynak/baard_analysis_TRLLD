USE BAARD;

SELECT 
    id AS record_id,
    MAX(CASE WHEN task = '4mWalk' THEN raw_scr END) AS `4mWalk_raw_scr`,
    MAX(CASE WHEN task = '4mWalk' THEN comp_scr END) AS `4mWalk_comp_scr`,
    MAX(CASE WHEN task = '9HolePegboard' THEN unc_scr_dom END) AS `9HolePegboard_unc_scr_dom`,
    MAX(CASE WHEN task = '9HolePegboard' THEN unc_scr_ndom END) AS `9HolePegboard_unc_scr_ndom`,
    MAX(CASE WHEN task = 'gripStrength' THEN unc_scr_dom END) AS `gripStrength_unc_scr_dom`,
    MAX(CASE WHEN task = 'gripStrength' THEN unc_scr_ndom END) AS `gripStrength_unc_scr_ndom`,
    MAX(CASE WHEN task = 'gripStrength' THEN dom_scr END) AS `gripStrength_dom_scr`,
    MAX(CASE WHEN task = 'gripStrength' THEN ndom_scr END) AS `gripStrength_ndom_scr`,
	MAX(CASE WHEN task = 'StandingBalance' THEN unc_scr END) AS `StandingBalance_unc_scr`

FROM 
    opt_step1_tb_motor_20240224
WHERE 
    task IN ('4mWalk', '9HolePegboard', 'gripStrength', 'StandingBalance') AND
    time IN ('OPTS1End')
GROUP BY 
    record_id;
