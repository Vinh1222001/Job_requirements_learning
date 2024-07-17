#!/bin/bash

echo "Creating new bash file!"

read -p "File name: " FILE_NAME

echo "#!"$SHELL > $FILE_NAME.sh

echo "echo \"Hello\"" >> $FILE_NAME.sh

chmod u+x $FILE_NAME.sh

echo "RUN $FILE_NAME.sh at the first time!"

./$FILE_NAME.sh