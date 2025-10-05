# Nmap Quick Lab

This project is a Bash automation script for performing Nmap scans with multiple intensity levels (Basic, Medium, Intense).  
It helps streamline scanning workflows and demonstrates practical network enumeration skills.

##  Features
- Run automated Nmap scans on multiple IPs  
- Choose between three scan levels: quick, service detection, or full intense  
- Save results automatically in organized text files

##    Files
- `scan.sh` → Bash script that runs the scans  
- `iplist.txt` → Target IP addresses  
- `results/` → Folder containing scan outputs

##   Skills Demonstrated
- Bash scripting  
- Network scanning and reconnaissance  
- Git & GitHub version control  
- Automation workflows

##   How to Use
1. Add target IPs to `iplist.txt`  
2. Run the script:
   ```bash
   bash scan.sh

##  Sample Output

Below is an example of what the scan results might look like when running the script on a sample IP list:
Host: 192.168.1.10 (target.local)

- PORT STATE SERVICE

- 22/tcp open ssh

- 80/tcp open http

- 443/tcp open https


 *Note: Output will vary depending on the scan intensity and the target systems.*

##  *This project is for educational and authorized security testing purposes only. Do not use this tool to scan networks without proper permission.
