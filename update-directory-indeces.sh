#!/bin/bash
 
for DIR in $(find ./maven -type d && find ./debian -type d); do
  (
    echo -e "<html>\n<head>\n<link rel="stylesheet" href="http://robotooling.com/basic.css">\n<script src="http://robotooling.com/analytics.js"></script>\n</head><body>\n<h1>bad.robot.repo - listing</h1>\n<hr/>\n<pre>"
    ls -1pa "${DIR}" | grep -v "^\./$" | grep -v "^index\.html$" | awk '{ printf "<a href=\"%s\">%s</a>\n",$1,$1 }'
    echo -e "</pre>\n</body>\n</html>"
  ) > "${DIR}/index.html"
done