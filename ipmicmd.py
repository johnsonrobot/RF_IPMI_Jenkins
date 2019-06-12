import commands
"""
ipmi = "ipmitool"
host = " -H 192.168.89.124"
interface = " -I lanplus"
user = " -U root"
passwd = " -P root"
cmd = " sel"

result = os.system(ipmi+host+interface+user+passwd+cmd)
"""

class useipmicmd:
    """
    Create own library to use 'ipmitool' command, and the keyword is ipmicmd
    ipmicmd has 6 parameters in below
    ------------------------------------------------------------------------
    In the sixth parameter you can preset the variable or set on the editor 
    *** Variables ***
    ${ipmi}           ipmitool
    ${host}           -H 192.168.89.132
    ${interface}      -I lanplus
    ${user}           -U root
    ${passwd}         -P root
    ${cmd}            sdr
    ------------------------------------------------------------------------
    Examples for RobotFramework IDE:
    | ipmicmd | ${ipmi}     | ${host}      | ${interface} | ${user}        | ${passwd}          | ${cmd}         |
    | ipmicmd | "ipmitool"  | "-H your ip" | "-I lanplus" | "-U your user" | "-P your password" | "your command" |

    Examples for editor:
    ipmicmd    ${ipmi}  ${host}  ${interface}  ${user}  ${passwd}  sdr
    """
    def __init__(self):
        pass

    def ipmicmd(self, ipmi, host, interface, user, passwd, cmd):

        status, result_out = commands.getstatusoutput(ipmi + ' ' + host + ' ' + interface + ' ' +
                                                      user + ' ' + passwd + ' ' +cmd)
        try:
            assert status == 0
        finally:
            print(result_out)
