#!/usr/bin/env bash

# best practices
#set -o errexit
set -o nounset
set -o pipefail
#set -o xtrace

# globals
log_file="${HOME}/log.log"
work_dir="${HOME}/eac_dev/ieee_vr_vuforia"

log_init() {

  # check args
  if test "${#}" -ne 1; then
    echo "incorrect usage of clear_log, exiting."
    exit 1
  fi

  date=date
  printf "Log: %s\nDate: %s\nFile: %s\n\n" "log for 'compile.sh'" "${1}" "${date}" &>>"${log_file}"

}

exit_on_fail() {

  # check args
  if test "${#}" -ne 2; then
    echo "incorrect usage of exit_on_fail, exiting."
    exit 1
  fi

  # exit on failure
  if test "${1}" -ne 0; then
    echo "${2} failed, exiting."
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
run_cmd "git -C ${work_dir} pull"

# make pulled content
run_cmd "make -C ${work_dir}"

# add changes
run_cmd "git -C ${work_dir} add --update"

# commit with commit_msg
# TODO: fix quotes so they evaluate properly for full message phrasing
cmd="git -C ${work_dir} commit --message recompile"
run_cmd "${cmd}"

# push changes to server
run_cmd "git -C ${work_dir} push"
