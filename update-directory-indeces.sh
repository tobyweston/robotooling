#!/bin/bash
 
for DIR in $(find ./maven -type d && find ./debian -type d); do
  (
    DATE=`date '+%Y-%m-%d %H:%M:%S'`
    FILES=`ls -1pa "${DIR}" | grep -v "^\./$" | grep -v "^index\.html$"`

    echo -e "<html>\n<head>\n<link rel="stylesheet" href="http://robotooling.com/basic.css">\n<script src="http://robotooling.com/analytics.js"></script>\n</head><body>\n<h1>bad.robot.repo - listing</h1>\n<hr/>\n<pre>"
    for FILE in $FILES; do
    
        # exclude folders
        
        if  [ -d "${FILE}" ] ; then
            TIMESTAMP=""
        else
            FILE_COUNT=`ls -lAT ${DIR}/${FILE} | wc -l | tr -d '[:space:]'`
            if [ "${FILE_COUNT}" == "1" ] ;then
                TIMESTAMP=`ls -lAT ${DIR}/${FILE} | awk '{ printf "%s-%s-%s %s",$6,$7,$9,$8 }'`
            else
                TIMESTAMP=""
            fi
        fi
        
        printf "<a href=\"%s\">%s</a> <span>%s</span>\n" "${FILE}" "${FILE}" "${TIMESTAMP}"
    done

    echo -e "</pre>\n</body>\n</html>"
  ) > "${DIR}/index.html"
done