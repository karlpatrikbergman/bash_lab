#!/usr/bin/env bash
. ././../basic_functions/file_util.sh

#comment_out_line "file.txt" "comment me out"
#un_comment_out_line "file.txt" "comment me out"

#comment_out_line "snmp.conf" "mibs :"
#un_comment_out_line "snmp.conf" "mibs :"

comment_out_line "snmpd.conf" "agentAddress  udp:127.0.0.1:161"
un_comment_out_line "snmpd.conf" "agentAddress udp:161,udp6:\[::1\]:161"
