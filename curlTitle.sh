 curl "https://www.googleapis.com/youtube/v3/channels\
?part=brandingSettings\
&id=UCAYF5jJkUBcmn1cor50yDOg&key=AIzaSyAFSUbQnFBBQnO8Vbs_2db_wDeeIwCVk8s" | grep title | awk -F: '{print $2}'

#tentative brut sans google
for i in channelU4test.txt
do 
	curl "https://www.googleapis.com/youtube/v3/channels?part=brandingSettings\
&id=$i&key=AIzaSyAFSUbQnFBBQnO8Vbs_2db_wDeeIwCVk8s"\
 | grep title | awk -F: '{print $2, $i}' >> channelU5.txt


# la super base qui marche, point de depart...
for channelID in $(cat channelU4test.txt); do curl "https://www.googleapis.com/youtube/v3/channels?part=brandingSettings\
&id=$channelID&key=AIzaSyAFSUbQnFBBQnO8Vbs_2db_wDeeIwCVk8s"\
 | grep title | awk -F: '{print $2}' >> channelU5.txt; done

# channelID et channelName cote acote
for channelID in $(cat channelU4.txt); do curl "https://www.googleapis.com/youtube/v3/channels?part=brandingSettings\ 
&id=$channelID&key=AIzaSyAFSUbQnFBBQnO8Vbs_2db_wDeeIwCVk8s" | grep title | awk -v idDeChaine=$channelID -F: '{print $2,idDeChaine}'  >> channelNames.txt; done 

# add single quotes around channel id string
for i in $(cat ChannelIdOnlyInPython.txt); do echo \'$i\' >> ChannelIDSingleQuotes.txt ; done

# add single quotes around channel id string in ChannelsNames.txt
for i in $(cat ChannelsNames.txt); do echo \'$i\'  ; done