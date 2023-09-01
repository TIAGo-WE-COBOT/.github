# .github
This is a special repo, to add a README to the home page of the organization.
The repo is also exploited to collect general utility scripts or advices not included in the other repositories.

## `connect_to_tiago.sh`
The `connect_to_tiago.sh` script is used to easily establish communication between the robot and a terminal on the local PC of the user. The script has to be placed in the workspace folder (e.g. `~/tiago_public_ws`).
To connect to the robot, connect to the TIAGo's WiFi network and checkout the IP address of your PC, clicking the gear icon next to the network name in _Settings > Wi-Fi_. Run the script by issuing
```
cd ~/<workspace_folder>
. connect_to_tiago <last_3_digits_of_the_IP> 
```

## `hri_setup.sh`
The `hri_setup.sh` script is used to easily set up the Python virtual environment to work with ROS4HRI packages. The script has to be placed in the workspace folder (e.g. `~/hri_ws`), it assumes that the virtual environment to work with ROS4HRI packages is located in the same folder and named `hri_venv`.
To run, type
```
cd ~/hri_ws
. hri_setup.bash
```
The script simply sets an environment variable $HRI_VENV, which contains the path to the virtual environment. This allows the path to be read from launch files (in an `<optenv>` tag), so to execute scripts against the proper interpreter (set via `launch-prefix` argument in `<node>` tgas) without altering the "default" `#!/usr/bin/env python` shebang. The aim of this implementation is to have a cleaner organization and hopefully to ease portability. 

## `reset_ntp.sh`
The `reset_ntp.sh` script is used to reset the NTP daemon on TIAGo PC in a one-liner fashion. To use it, you need to install `sshpass` via
```
sudo apt-get sshpass
```
Then, simply run the script with
```
. reset_ntp.sh
```
and input the password to the TIAGo root user when prompted.
