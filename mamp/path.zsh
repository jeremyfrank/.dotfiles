# alias php to the latest PHP installed with MAMP
MAMP_PHP__LATEST=$(ls /Applications/MAMP/bin/php/ | sort -V | tail -1)
export PATH="/Applications/MAMP/bin/php/${MAMP_PHP__LATEST}/bin:$PATH"
alias php="/Applications/MAMP/bin/php/${MAMP_PHP__LATEST}/bin/php -c \"/Library/Application Support/appsolute/MAMP PRO/conf/${MAMP_PHP__LATEST}.ini\""
