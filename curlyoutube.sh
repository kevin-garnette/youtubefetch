
#renvois des infos sur une chaine donnee
curl "https://www.googleapis.com/youtube/v3/channels\
?part=brandingSettings,contentDetails,contentOwnerDetails,id,localizations,\
snippet,statistics,status,topicDetails\
&id=UCAYF5jJkUBcmn1cor50yDOg&key=AIzaSyAFSUbQnFBBQnO8Vbs_2db_wDeeIwCVk8s"

curl "https://www.googleapis.com/youtube/v3/subscriptions\
?part=myRecentSubscribers,mySubscribers\
&channelId=UCAfiiTJ1_zhBcRq86Ff7XKg&key=AIzaSyAFSUbQnFBBQnO8Vbs_2db_wDeeIwCVk8s"

var allRandomUrls = document.getElementsByTagName('a');

for (url in allRandomUrls) {
    console.log ( allRandomUrls[url].href );
}
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																															
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																															