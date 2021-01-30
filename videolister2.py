api_key = "AIzaSyAFSUbQnFBBQnO8Vbs_2db_wDeeIwCVk8s"
#The Program fetches the Titles from all videos of the channel ID - UCq-Fj5jknLsUf-MWSy4_brA which is actually Tseries
from apiclient.discovery import build
youtube = build('youtube', 'v3', developerKey=api_key)
def get_channel_videos(channel_id):    
    # get Uploads playlist id
    res = youtube.channels().list(id=channel_id, 
                                  part='contentDetails').execute()
    playlist_id = res['items'][0]['contentDetails']['relatedPlaylists']['uploads']
    
    videos = []
    next_page_token = None
    
    while 1:
        res = youtube.playlistItems().list(playlistId=playlist_id, 
                                           part='snippet', 
                                           maxResults=50,
                                           pageToken=next_page_token).execute()
        videos += res['items']
        next_page_token = res.get('nextPageToken')
        
        if next_page_token is None:
            break
    
    return videos

import io
import csv
with open('ChannelNamesAndIDs.txt') as csv_file:
    csv_reader = csv.reader(csv_file, delimiter=',')

    for row in csv_reader:
      videos = get_channel_videos(f'{row[1]}')
      len(videos)
      with io.open(f'{row[0]}' + ".txt", 'w', encoding='utf-8') as f:
        for video in videos:
          f.write(str(video['snippet']['title'] + "\n"))



   

