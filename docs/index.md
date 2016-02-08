These are commands for interacting with the current version of the OpenROV Image.

### Sudo with internet access:
You must retain the environment variables to allow access to the proxy service
`sudo -E bash`

### Interact with services
List OpenROV services:
`systemctl -l | grep OpenROV`

Start service:
`systemctl start orov-cockpit`

Stop service:
`systemctl stop orov-dashboard`

Restart service:
`systemctl restart orov-cockpit`

Dump log information:
`journalctl -u orov-cockpit`
