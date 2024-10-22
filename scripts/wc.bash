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

DATE=`date`

# The output is of the form "Tue 22 OCT HH:MM:SS BST 2024"
# get the first 10 characters
TODAY=${DATE:0:10}
# Check day of last word count
LAST_DATE=`tail -n 1 $LOG_FILE_PATH`
LAST_DATE=${LAST_DATE:0:10}

# if match, delete the last line
if [ "$TODAY" == "$LAST_DATE" ]; then
	sed -i '$d' $LOG_FILE_PATH
fi

# get and append the new word count
WORD_COUNT=`find $SOURCE_FILE_PATH -type f | xargs wc -w | tail -n 1 | awk '{print $1;}'`
echo "${DATE}, ${WORD_COUNT}" >> $LOG_FILE_PATH

# modified pre-commit, add to the pending commit
git add $LOG_FILE_PATH

YELLOW="\033[33m"
BOLD="\033[1m"
RESET="\033[0m"

echo -e "${YELLOW}${BOLD}Word count recorded to log/wc.csv!${RESET}"

echo "End of Word-count Files:"
echo -en '\033[35m'; tail log/wc.csv -n 5; echo -en '\033[0m'
