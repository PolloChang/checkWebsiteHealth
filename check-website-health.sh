#! /bin/bin
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/games:/home/jameschang/.fzf/bin"
export basedir="/home/jameschang/Documents/gitContent/jameschang/linux/checkWebsiteHealth"
#===============================================================================
#
#          FILE:  check-website-health.sh
# 
#         USAGE:  ./check-website-health.sh 
# 
#   DESCRIPTION:  
# 
#       OPTIONS:  ---
#  REQUIREMENTS:  ---
#          BUGS:  ---
#         NOTES:  ---
#        AUTHOR:  PolloChang (), jameschangwork@gmail.com
#       COMPANY:  Open Source Corporation
#       VERSION:  1.0
#       CREATED:  03/01/2022 11:53:55 PM CST
#      REVISION:  ---
#===============================================================================

source $basedir/lib/createSource.sh
source $basedir/lib/log.sh

while read websiteI ; do

        export statusN=$(curl --write-out '%{http_code}' --silent --output --connect-time ${connentTime} /dev/null $websiteI)

        if              
                [ "${statusN}" == "200" ]; 
        then
           
            zc_log INFO "status:$statusN, $websiteI"

        else

            zc_log WARN "status:$statusN, $websiteI"
#            curl -X POST -H 'Authorization: Bearer MRQcAGYnPOWvUROiEhE4WMn9T6NOYaQx7Xl1NoIxeRs' -F 'message='${websiteI}' is down' https://notify-api.line.me/api/notify
        fi

done < $websiteL


