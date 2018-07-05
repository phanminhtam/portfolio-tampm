FILE=/backups/$POSTGRES_DB-$(date +"%Y-%m-%d".sql.gz)
pg_dump -h "$POSTGRES_HOST" -p "$POSTGRES_PORT" -U "$POSTGRES_USER" -d "$POSTGRES_DB" -F custom | gzip > "$FILE"
if [ ! -z "$DELETE_OLDER_THAN" ]; then
	echo "Deleting old backups: $DELETE_OLDER_THAN"
	find /backups/*.sql.gz -mmin "+$DELETE_OLDER_THAN" -exec rm {} \;
fi