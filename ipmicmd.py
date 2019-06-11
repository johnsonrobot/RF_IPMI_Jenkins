import os
 
ipmi = "ipmitool"
host = " -H 192.168.89.124"
interface = " -I lanplus"
user = " -U root"
passwd = " -P root"
cmd = " sel"

result = os.system(ipmi+host+interface+user+passwd+cmd)


class ipmi:
    def ipmicmd(self, cmd):
        return os.system('ipmitool -H 192.168.89.124 -I lanplus -U root -P root ${cmd}')
