

#!/bin/bash

HOST=                 #This is the FTP servers host or IP address.
USER=                 #This is the FTP user that has access to the server.
PASS=                 #This is the password for the FTP user.
REMOTE_PATH=$1        #Remote path in first parameter
FILE=$2               #File name in second parameter


# Call 1. Uses the ftp command with the -inv switches.
#-i turns off interactive prompting.
#-n Restrains FTP from attempting the auto-login feature.
#-v enables verbose and progress.

ftp -inv $HOST << EOF

# Call 2. Here the login credentials are supplied by calling the variables.
user $USER $PASS

# Call 3. Here you will change to the directory where you want to put or get
cd $REMOTE_PATH

# Call4.  Here you will tell FTP to put or get the file.
put $FILE

# End FTP Connection
bye

EOF


