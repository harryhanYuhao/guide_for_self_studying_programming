#!/bin/bash 

# count how many words have been written (only counting files in the ./src/)
# and record them to ./log/wc.csv with date
# This script is run with git pre-commit hook
LOG_FILE_PATH="./log/wc.csv"
SOURCE_FILE_PATH="./src/"

# likely uncessary, for debug only
if [[ $(pwd) == *"scripts"* ]]; then 
	LOG_FILE_PATH="../log/wc.csv"
	SOURCE_FILE_PATH="../src/"
fi

WORD_COUNT=`find $SOURCE_FILE_PATH -type f | xargs wc -w | tail -n 1 | awk '{print $1;}'`
DATE=`date`

echo "${DATE}, ${WORD_COUNT}" >> $LOG_FILE_PATH

# modified pre-commit, add to the pending commit
git add $LOG_FILE_PATH

YELLOW="\033[33m"
BOLD="\033[1m"
RESET="\033[0m"

echo -e "${YELLOW}${BOLD}Word count recorded to log/wc.csv!${RESET}"

echo "End of Word-count Files:"
echo -en '\033[35m'; tail log/wc.csv -n 5; echo -en '\033[0m'
