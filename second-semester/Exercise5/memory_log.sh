#!/usr/bin/bash

cd /home/vagrant/memory_logs

FILE_NAME=mem_usage.log

EMAIL_RECIPIENT="info@philipoyelegbin.com.ng"

CURRENT_HOUR=$(date +%H)

log_ram_usage() {
	date >> $FILE_NAME

	free -h >> $FILE_NAME

	echo "___________________________________________________" >> $FILE_NAME
}

send_daily_report() {
	SUBJECT="Daily RAM Usage Report for $date"
	BODY=$(cat "$FILE_NAME")

	echo -e "$BODY" | mail -s "$SUBJECT" "$EMAIL_RECIPIENT"
}


log_ram_usage

if [ "$CURRENT_HOUR" == "00" ]; then
    if [ -s "$LOG_FILE" ]; then
	send_daily_report
        > "$FILE_NAME"
    fi
fi
