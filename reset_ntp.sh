# Ask the user for the TIAGo pw
read -s -p "root@tiago-108c's password:" pw
echo ""	# dummy print to cause line break

# (Re)start the ntp service
`sshpass -p $pw ssh root@tiago-108c systemctl restart ntp.service`
echo "NTP restarted on TIAGo PC. Wait 10 seconds..."
sleep 10 # wait 10s to give time to NTP to connect to a server
# Verify if the connection is established
sshpass -p $pw ssh root@tiago-108c ntpq -p
