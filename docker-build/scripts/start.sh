#!/bin/bash


DORIS_SCRIPTS="/opt/doris/mate/scripts"
START_DORIS_BE="${DORIS_SCRIPTS}/start-doris-be.sh"
START_DORIS_FE="${DORIS_SCRIPTS}/start-doris-fe.sh"

case ${DEPLOY_TYPE:-doris} in
"doris-be")
  echo "start doris be."
  bash -xv ${START_DORIS_BE}
  ;;
"doris-fe")
  echo "start doris fe."
  bash -xv ${START_DORIS_FE}
  ;;
"doris")
  echo "start doris."
  bash -xv ${START_DORIS_FE} &
  bash -xv ${START_DORIS_BE}
  ;;
esac

tail -f /dev/null
