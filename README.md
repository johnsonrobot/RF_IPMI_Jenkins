Robot Framework + Jenkins + Python
---------------------------------------------------------------
If you want to execute shell, you should import IPMILibrary to "/usr/lib/python2.7". 
In Jenkins enviroment it will search the relate library of file

Config the Jenkins. 
You can use the option of "Build Execute Shell"
In the content, you should type command in below

#!/bin/sh
python -m robot ipmi.robot
exit 0