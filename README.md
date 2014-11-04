# One syslog to rule them all

1. Build the syslog container: 

   `docker build -t syslog .`

2. Run it: 

   `docker run  --name syslog -d -v /tmp/syslogdev:/dev syslog`

3. Start another container to send logs:

   `docker run -v /tmp/syslogdev/log:/dev/log ubuntu logger hello`
   
4. (a) Tail them logs: 

   `docker run --volumes-from syslog ubuntu tail -f /var/log/syslog`

4. (b) *Alternatively*, as of docker v1.3 use the `docker-exec` command to inspect syslog container directly
    
    `docker exec -t syslog tail -f /var/log/syslog`

5. See in the log message show up in the "tail" container.

