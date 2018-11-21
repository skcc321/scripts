#!/bin/bash

# constants
LOG=$(dirname $0)/log
OK="$(tput setaf 2; tput bold;) - [OK]$(tput sgr0)"
FAIL="$(tput setaf 1; tput bold;) - [FAIL]$(tput sgr0)"

# extract commands & comments. Execute commands & print comments
execute ()
{
  while read LINE
  do
    # if line starts with [##]
    if [[ ${LINE:0:2} == '##' ]]
    then
      # print message
      echo "${LINE:2}"
    else
      # interpret everything from the begin of line to [#] sign as a command
      COMMAND=${LINE%#*}
      # interpret everything after [#] sign to the end of line as a comment
      COMMENT=${LINE#*#}
      run "$COMMAND" "$COMMENT"
    fi
  done < $*
}

run ()
{
  # write command comment & execute command
  info $2 && eval $1 &>> $LOG
  # catch error
  if [ $? = 0 ]
  then
    result OK
  else
    result FAIL
  fi
}

info ()
{
  # set formated info
  INFO="$(tput setaf 4; tput bold;)${*^^}$(tput sgr0)"
  # print it inline
  echo -n $INFO
}

result ()
{
  if [ $1 = OK ]
  then
    RES=$OK
  else
    RES=$FAIL
  fi
  echo $RES
  echo $INFO$RES >> $LOG
}
