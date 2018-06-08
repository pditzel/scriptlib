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
#	-	ENABLE_DEBUG=
#	-	Valuesto enable the debugmessages: TRUE, True, true
#
#	Usage:
#	-	Use "debug" like "echo"
#	-	i.e.: debug "Here the debugmessage"
#
###############################################################################

function debug {
        DEBUGMSG=$1
        if [[ "${ENABLE_DEBUG}" == "TRUE" ]] || [[ "${ENABLE_DEBUG}" == "True" ]] || [[ "${ENABLE_DEBUG}" == "true" ]] ; then
		if [[ "${ENABLE_SYSLOG}" == "TRUE" ]]; then
                	logger "$DEBUGMSG" "<debuginfotmation>:"
		else
			echo "WARNING: \$ENABLE_SYSLOG is not set, just echo the debugmessage:"
			echo "<debiginformation>: ${DEBUGMSG}"
		fi
        fi
}

