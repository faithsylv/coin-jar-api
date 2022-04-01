rails_server: start_database
	rails console

start_database:
	pg_ctl --start