<!-- ABOUT THE PROJECT -->
## youtubefetch

"This code will fetch the list of all videos uploaded to a channel. Change the channel ID as per requirement. In this specific code, it fetches from"  [BsidesdcOrg](https://www.youtube.com/channel/UCVImyGhRATNFGPmJfxaq1dw).

## prerequisites

1. Get a free API key for the [YouTube data API](https://console.cloud.google.com/apis/credentials)

2. Install the following clients

  ```sh
  sudo apt-get install python3-googleapi python3-oauth2client
  ```

## installation

1. Clone the repo

   ```sh
   git clone https://github.com/kevin-garnette/youtubefetch.git
   ```
2. Replace the below api key with yours at ligne 1 of `code.py` 

   ```JS
      api_key = 'AIzaSyJFSUbQnFBBQnO8Vbs_9db_wDeeIwCGk8s''; 
   ```
3. Replace the below channel ID with yours at ligne 29 of `code.py` 

   ```JS
      videos = get_channel_videos('UCVImyGhRATNFGPmJfxaq1dw')
   ```
   ![test](https://user-images.githubusercontent.com/58897196/104816263-ee432c00-5811-11eb-8dd2-96b217f7845c.png)
   
## usage

   ```sh
   sudo python3 code.py > BSidesdcOrg.txt
   ```

   ![redirect_list_text-file](https://user-images.githubusercontent.com/58897196/104816297-2f3b4080-5812-11eb-8906-e7971e08614a.png)

