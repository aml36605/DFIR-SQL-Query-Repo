SELECT lat.sourceid, datetime(lat.startDateInUtcSeconds, 'unixepoch', 'localtime') as day, lat.startDateInUtcSeconds, lat.value as latitude, long.value as long
FROM metrics as lat left join metrics as long on lat.startDateInUtcSeconds = long.startDateInUtcSeconds
WHERE lat.type = 'latitude' and long.type = 'longitude'
ORDER BY lat.startDateInUtcSeconds
