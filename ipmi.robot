*** Settings ***
Library           IPMILibrary
Library           OperatingSystem
Variables         config.py

*** Test Cases ***
Cases1-IPMI-SEL
    IPMI    sel

Cases2-IPMI-SDR
    IPMI    sdr

IPMILibrary-3
    ipmicmd    ${ipmi}    ${host}    ${interface}    ${user}    ${passwd}    sel

IPMILibrary-SDR-4
    ipmicmd    ${ipmi}    ${host}    ${interface}    ${user}    ${passwd}    sdr

IPMILibrary-SDR-5
    ipmicmd    ${ipmi}    ${host}    ${interface}    ${user}    ${passwd}    sdr

IPMILibrary-SDR-6
    ipmicmd    ${ipmi}    ${host}    ${interface}    ${user}    ${passwd}    sdr

IPMILibrary-SDR-7
    ipmicmd    ${ipmi}    ${host}    ${interface}    ${user}    ${passwd}    sdr

IPMILibrary-SDR-8
    ipmicmd    ${ipmi}    ${host}    ${interface}    ${user}    ${passwd}    sdr

IPMILibrary-SDR-9
    ipmicmd    ${ipmi}    ${host}    ${interface}    ${user}    ${passwd}    sdr

IPMILibrary-SDR-10
    ipmicmd    ${ipmi}    ${host}    ${interface}    ${user}    ${passwd}    sdr

IPMILibrary-SDR-11
    ipmicmd    ${ipmi}    ${host}    ${interface}    ${user}    ${passwd}    sdr

IPMILibrary-SDR-12
    ipmicmd    ${ipmi}    ${host}    ${interface}    ${user}    ${passwd}    sdr

IPMILibrary-SDR-13
    ipmicmd    ${ipmi}    ${host}    ${interface}    ${user}    ${passwd}    sdr

IPMILibrary-SDR-14
    ipmicmd    ${ipmi}    ${host}    ${interface}    ${user}    ${passwd}    sdr

IPMILibrary-SDR-15
    ipmicmd    ${ipmi}    ${host}    ${interface}    ${user}    ${passwd}    sdr

IPMILibrary-SDR-16
    ipmicmd    ${ipmi}    ${host}    ${interface}    ${user}    ${passwd}    sdr


*** Keywords ***
IPMI
    [Arguments]    ${cmd}
    ${run}    Run and Return RC    ${ipmi} ${host} ${interface} ${user} ${passwd} ${cmd}
    ${result}    Run    ${ipmi} ${host} ${interface} ${user} ${passwd} ${cmd}
    ${status}    run keyword and return status    should be equal as integers    ${run}    0
    run keyword if    ${status}    Log    ${result}
    ...    ELSE    Fail
