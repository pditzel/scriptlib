#!/bin/bash

function setvar () {
	if [[ -n ${1} ]] && [[ -n ${2} ]]; then
		if [[ -z ${1} ]]; then
			${1}=${2}
		fi
	fi
}

function showvar () {
	cat ${0} | grep setvar | grep -v function | cut -d " " -f 2
}

# debug.sh
setvar ENABLE_DEBUG FALSE

#logger.sh
setvar ENABLE_SYSLOG FALSE


function main () {
        SHORTOPTS="hs"
        LONGOPTS="help,show"
        ARGS=$(getopt -s bash --options ${SHORTOPTS} --longoptions ${LONGOPTS} -- "$@" )
        eval set -- "${ARGS}"
        while [[ $# -gt 0 ]]; do
          case $1 in
             -h|--help)
               usage
               exit 0
               ;;
            -s|--show)
              showvar
              shift
	      ;;
            --)
              shift
              break
              ;;
            *)
              shift
              break
              ;;
          esac
        done
}

main "${@}"

