# MAC-Address-Changer
Bash script that allows the user to change the MAC address of their network interface card using the mac changer tool.

To use the script, save it to a file (e.g. mac-changer.sh) and make it executable using chmod +x mac-changer.sh. Then, run the script as root using the command sudo ./mac-changer.sh. The script will prompt you for the interface name and the new MAC address. If you leave the MAC address blank, the script will generate a random MAC address using the macchanger -r command. Otherwise, the script will set the MAC address to the specified value using the macchanger -m command. The script will display the current and new MAC addresses before exiting. Note that the macchanger tool must be installed on your system for the script to work.
