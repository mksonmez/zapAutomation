## DAST Automation with OWASP ZAP

### Fix directory than run docker:
docker run -u zap -p 8080:8080 -v "C:DIR\zapAutomation:/app" owasp/zap2docker-stable /app/runscript.sh

### Commands:
    active-scan  Run an Active Scan.
    ajax-spider  Run the AJAX Spider against a URL.
    alerts       Show alerts at the given alert level.
    context      Manage contexts for the current session.
    exclude      Exclude a pattern from all scanners.
    open-url     Open a URL using the ZAP proxy.
    policies     Enable or list a set of policies.
    quick-scan   Run a quick scan.
    report       Generate XML or HTML report.
    scanners     Enable, disable, or list a set of scanners.
    scripts      Manage scripts.
    session      Manage sessions.
    shutdown     Shutdown the ZAP daemon.
    spider       Run the spider against a URL.
    start        Start the ZAP daemon.
    status       Check if ZAP is running.
