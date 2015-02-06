#!/usr/bin/env bash

# best practices
#set -o errexit
set -o nounset
set -o pipefail
#set -o xtrace

this_home=""

# check args
if test "${#}" -ne 1; then
  if test "${#}" -eq 0; then
    this_home="${HOME}"
  else
    echo "incorrect usage of ${0}, exiting."
    exit 1
  fi
else
  this_home="${1}"
fi

# globals
log_file="${this_home}/log.log"
work_dir="${this_home}/eac_dev/ieee_vr_vuforia"
git_flags="-C ${work_dir}"
make_flags="-C ${work_dir}"

# set git evironmental variable
GIT_SSH="ssh -i ${this_home}/id_rsa"

log_init() {

  # check args
  if test "${#}" -ne 1; then
    echo "incorrect usage of clear_log, exiting."
    exit 1
  fi

  date=`date`
  # echo -n "" &>"${log_file}" # clear log file
  printf "Log: %s\nDate: %s\nFile: %s\n\n" "log for 'compile.sh'" "${date}" "${1}" &>>"${log_file}"
}

log_finish() {
  printf "===\n\n" &>>"${log_file}"
}

exit_on_fail() {

  # check args
  if test "${#}" -ne 2; then
    echo "incorrect usage of exit_on_fail, exiting."
    log_finish
    exit 1
  fi

  # exit on failure
  if test "${1}" -ne 0; then
    echo "${2} failed, exiting."
    log_finish
    exit 1
  fi
}

run_cmd() {

  # checking args
  if test "${#}" -ne 1; then
    echo "incorrect usage of run_cmd, exiting."
    exit 1
  fi

  cmd="${1}"

  # execute command
  ${cmd} &>>"${log_file}"
  exit_on_fail "${?}" "${cmd}"
}

# init log file
log_init "${log_file}"

# pull and update
run_cmd "git ${git_flags} pull"

# make pulled content
run_cmd "make ${make_flags}"

# add changes
run_cmd "git ${git_flags} add --update"

# commit with commit_msg
# TODO: fix quotes so they evaluate properly for full message phrasing
tmpfile=`mktemp`
printf "automatic compile" >"${tmpfile}"
git ${git_flags} commit --file ${tmpfile} &>>"${log_file}"
rm -f "${tmpfile}"

# push changes to server
run_cmd "git ${git_flags} push"

log_finish
