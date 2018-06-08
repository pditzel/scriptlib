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
#	-	Pipe your Messages into ${LOGGER}
#	-	i.e.: echo "Your MSG" | ${LOGGER}
#
###############################################################################


function set_logger {
	# Check if log to syslog is enabled
	if [[ "${ENABLE_SYSLOG}" == "TRUE" ]] || [[ "${ENABLE_SYSLOG}" == "True" ]] || [[ "${ENABLE_SYSLOG}" == "true" ]]; then
		# If true then define the logger
		LOGGER="/usr/bin/logger -s -i -t databasebackup"
	else
		# If not cat it out on stdout
		LOGGER="/bin/cat"
	fi
}

