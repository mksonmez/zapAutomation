#!/bin/bash

### It creates following directories if not exist

# Creds directory
mkdir -p /app/auth

# Output directory
mkdir -p /app/reports

# HTML Outputs
mkdir -p /app/reports/html

# XML Outputs
mkdir -p /app/reports/xml


echo " "
echo "Designed by Mehmet K Sonmez"

while read url; do
	echo " "
	echo "Scanning next;"
	echo "$url"

	zap-cli start -o "-port 8080 -host 0.0.0.0 -config api.disablekey=true"

###	Turn on authenticated scan by removing #
#	zap-cli context import /app/auth/auth.context

	zap-cli open-url "$url"
	zap-cli spider "$url"
	zap-cli ajax-spider "$url"
	zap-cli quick-scan "$url"

###	Turn on active scan by removing #
#	zap-cli active-scan --scanners xss,sqli --recursive "$url"

	zap-cli report -o "/app/reports/html/${url//[^a-zA-Z0-9]/_}_report.html" -f html
	zap-cli report -o "/app/reports/xml/${url//[^a-zA-Z0-9]/_}_report.xml" -f xml
	zap-cli shutdown

###	 Use a list of targets

done </app/targets.txt
