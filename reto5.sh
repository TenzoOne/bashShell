option='course'
result='platzi'

echo "Generating og..."

#GET FILE NAME
file_name=$(echo "$0" | grep -oP "[\w-_\d]+\.\w+")

#REMOVE EXTENSIO
file_name=$(echo "${file_name%.*}")

#CREATE LOG FILE
log_name=log_$file_name`date +_%Y%m%d%H%M%S`.txt
touch $log_file

echo -e "\nFinishing a $option in $result." >> $log_file
echo -e "\nList log file created."
ls -la $log_file
