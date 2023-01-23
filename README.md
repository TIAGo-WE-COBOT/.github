# .github
This is a special repo, to add a README to the home page of the organization.
The repo is also exploited to collect general utility scripts or advices not included in the other repositories.

## `connect_to_tiago.sh`
The `connect_to_tiago.sh` is used to easily establish communication between the robot and a terminal on the local PC of the user. The script has to be placed in the workspace folder (e.g. `~/tiago_public_ws`).
To connect to the robot, connect to the TIAGo's WiFi network and checkout the IP address of your PC, clicking the gear icon next to the network name in _Settings > Wi-Fi_. Run the script by issuing
```
cd ~/<workspace_folder>
. connect_to_tiago <last_3_digits_of_the_IP> 
```
