#!/bin/bash

###############################################################################
#									      #
#	Author: Patrick Ditzel <pateick@central-computer.de		      #
#									      #
#	License: GPLv3							      #
#									      #
###############################################################################


###############################################################################
#
#	Variable to set in your script:
#	-	ENABLE_SYSLOG=
#	-	Valuesto enable the debugmessages: TRUE, True, true
#
#	Usage:
#	-	logger "logmessage" "logfacility"
#
###############################################################################


function logger {
	LOGMSG=${1}
	LOGFACILITY=${2}
	if [[ "${ENABLE_SYSLOG}" == "TRUE" ]] || [[ "${ENABLE_SYSLOG}" == "True" ]] || [[ "${ENABLE_SYSLOG}" == "true" ]]; then
		if [[ -n "${LOGMSG}" ]] || [[ -n "${LOGFACILITY}" ]]; then
			echo "${LOGMSG}" | /usr/bin/logger -s -i -t ${LOGFACILITY}
		else
			echo "No loginformation provided for syslog" | /usr/bin/logger -s -i
		fi
	else
		if [[ -n "${LOGMSG}" ]] || [[ -n "${LOGFACILITY}" ]]; then
			echo "$(date +%c) ${LOGFACILITY} ${LOGMSG}" | /bin/cat
		else
			echo "No loginformation provided for logoutput on stdout" | /bin/cat
		fi
	fi
}

