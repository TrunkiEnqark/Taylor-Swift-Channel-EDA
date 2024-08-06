# Taylor Swift YouTube Channel Data Scraping

## Overview
This document outlines the process of scraping data from Taylor Swift's official YouTube channel using the YouTube Data API v3. The script collects channel statistics and detailed information about each video uploaded to the channel.

## Prerequisites

- Python 3.x
- Required libraries: pandas, requests, json, datetime, csv
- YouTube Data API key

## Setup

1. Install the required Python libraries:
```pip install pandas requests```

2. Obtain a YouTube Data API key from the Google Developers Console.

3. Set the API key and channel ID in the script:
```pythonCopyapi_key = "YOUR_API_KEY_HERE"```
```channel_id = "UCqECaJ8Gagnn7YCbPEzWH6g"```


## Data Collection Process
### 1. Channel Information

- Retrieve basic channel statistics including subscriber count, total video count, and total view count.
- API endpoint: https://www.googleapis.com/youtube/v3/channels

### 2. Video Details

- Fetch the uploads playlist ID for the channel.
- Iterate through all videos in the uploads playlist, collecting the following data for each video:

    - Video ID
    - Published date
    - Title
    - Description
    - Like count
    - View count
    - Comment count
    - Whether the video is a Short (determined by an empty description)


- API endpoints used:

    - https://www.googleapis.com/youtube/v3/channels (for playlist ID)
    - https://www.googleapis.com/youtube/v3/playlistItems (for video IDs)
    - https://www.googleapis.com/youtube/v3/videos (for detailed video information)



### 3. Pagination

The script handles pagination to ensure all videos are collected, even if there are more than 50 (the maximum allowed per API request).

## Data Storage

- The collected data is stored in a dictionary with the following keys:

    - id
    - published_date
    - title
    - description
    - likes
    - views
    - comments
    - is_short


- The data is then saved to a CSV file named 'data.csv'.

## Output

- A CSV file containing all the collected video data.
- Console output displaying the channel's total subscribers, total videos, and total views.