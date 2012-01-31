# tools for bad.robots

A set of simple tools to make life easier. All available to Maven via the [bad.robot.repo](/maven)
 
## bad.robot.http

A quick way to build a HTTP client and work with the HTTP verbs;

        HttpResponse response = anApacheClient().with(username, password).get(url,
            headers(
                header("Accept", "application/json"),
            )
        );

Will create a HTTP client, perform a `GET` against the URL and populate a simple `HttpResponse` object that can be interrogated.

## bad.robot.domain

A set of classes useful for development focusing on domain driven development (al la Evans et al). Probably the best bit is advocating **value types** and never passing around the 'simple' types again;

    DirectoryNumber number = directoryNumber("07786 114232");

## bad.robot.concordion-ant-task

A way of collecting Concordion tests in one or more 'overview' style pages. Show the overall results and the list of tests in one place, grouped however you like.

See the [manual](http://badrobot.googlecode.com/svn/trunk/bad.robot/concordion-ant-task/manual/Overview.html)

## bad.robot.plain-skin

An overly plain skin for Maven generated sites.