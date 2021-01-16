<!-- ABOUT THE PROJECT -->
## youtubefetch

[![Product Name Screen Shot][product-screenshot]](https://example.com)

This code will fetch the list of all videos uploaded to a channel. Change the channel ID as per requirement. In this specific code, it fetches from Tseries.

<!-- GETTING STARTED -->
## Getting Started

This is an example of how you may give instructions on setting up your project locally.
To get a local copy up and running follow these simple example steps.

### Prerequisites

1. Get a free API Key for the [YouTube DATA API](https://console.cloud.google.com/apis/credentials)

2. Install the following clients

  ```sh
  sudo apt-get install python3-googleapi python3-oauth2client
  ```

### Installation

1. Clone the repo
   ```sh
   git clone https://github.com/kevin-garnette/youtubefetch.git
   ```
2. Replace the below channel ID at ligne 29 of `code.py` with yours
   ```JS
   videos = get_channel_videos('UCVImyGhRATNFGPmJfxaq1dw')
   ```
3. Replace your API key in at ligne 1 of `code.py` with yours
   ```JS
   api_key = 'AIzaSyJFSUbQnFBBQnO8Vbs_9db_wDeeIwCGk8s'';
   ```
   
## Usage

   ```sh
   sudo python3 code.py
   ```
   
   then you may want to redirect the output into a textfile
   ![redirect_list_text-file](https://user-images.githubusercontent.com/58897196/104816297-2f3b4080-5812-11eb-8906-e7971e08614a.png)

## Contact

Your Name - [@your_twitter](https://twitter.com/your_username) - email@example.com

Project Link: [https://github.com/your_username/repo_name](https://github.com/your_username/repo_name)

## Acknowledgements
* [GitHub Emoji Cheat Sheet](https://www.webpagefx.com/tools/emoji-cheat-sheet)

[stars-url]: https://github.com/othneildrew/Best-README-Template/stargazers
[issues-shield]: https://img.shields.io/github/issues/othneildrew/Best-README-Template.svg?style=for-the-badge
[issues-url]: https://github.com/othneildrew/Best-README-Template/issues
[license-shield]: https://img.shields.io/github/license/othneildrew/Best-README-Template.svg?style=for-the-badge
[license-url]: https://github.com/othneildrew/Best-README-Template/blob/master/LICENSE.txt
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://linkedin.com/in/othneildrew
[product-screenshot]: images/screenshot.png
