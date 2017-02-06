run {
allocate channel prmy1 type disk;
allocate channel prmy2 type disk;
allocate channel prmy3 type disk;
allocate channel prmy4 type disk;
allocate channel prmy5 type disk;
allocate auxiliary channel stby type disk;
duplicate target database for standby from active database
spfile
parameter_value_convert 'PEREC_STB','PEREC'
set db_unique_name='PEREC'
set DB_FILE_NAME_CONVERT='/u03/oradata/PEREC_STB/datafile/','/u03/oradata/PEREC/datafile/','/u04/backup/temp/','/u03/oradata/PEREC/datafile/'
set log_file_name_convert='/u02/fast_recovery_area/PEREC_STB/onlinelog/','/u02/fast_recovery_area/PEREC/onlinelog/','/u03/oradata/PEREC_STB/onlinelog/','/u03/oradata/PEREC/onlinelog/','/u03/oradata/PEREC_STB/datafile/','/u03/oradata/PEREC/onlinelog/'
set DB_CREATE_FILE_DEST='/u03/oradata'
set db_create_online_log_dest_1='/u03/oradata'
set db_recovery_file_dest='/u02/fast_recovery_area'
set db_recovery_file_dest_size='70G'
set control_files='/u03/oradata/PEREC/controlfile/control01.ctl','/u02/fast_recovery_area/PEREC/controlfile/control02.ctl'
set diagnostic_dest='/u01/app/oracle'
set log_archive_max_processes='5'
set fal_client='PEREC'
set fal_server='PEREC_STB'
set standby_file_management='AUTO'
set log_archive_config='dg_config=(PEREC_STB,PEREC)'
set log_archive_dest_1='service=PEREC_STB ASYNC valid_for=(ONLINE_LOGFILE,PRIMARY_ROLE) db_unique_name=PEREC_STB'
set log_archive_dest_2='LOCATION=USE_DB_RECOVERY_FILE_DEST VALID_FOR=(ONLINE_LOGFILES,ALL_ROLES) DB_UNIQUE_NAME=PEREC'
;
}
