#let project(title: "", authors: (), date: none, body) = {
  set document(author: authors, title: title)
  set page(numbering: "1", number-align: center)
  set text(font: "New Computer Modern", lang: "en")
  
  align(center)[
    #block(text(weight: 700, 1.75em, title))
    #block(text(1.0em, date))
    #block(text(1.0em, authors.join(", ")))
  ]

  set par(justify: true)
  body
}

#show: project.with(
  title: "Exploratory Data Analysis: Taylor Swift YouTube Channel",
  authors: ("Tran Kien Quoc", "Le Hoang Trang Nha"),
  date: "August 6, 2024",
)

= Introduction
This report presents an exploratory data analysis of the Taylor Swift YouTube channel. The analysis covers video metrics including views, likes, and comments, as well as the distribution of regular videos versus shorts.

= Data Preparation
We began by importing the necessary libraries and loading the data from 'data.csv'. The following steps were taken to prepare the data:

- Converted date strings to datetime objects
- Converted numeric strings to appropriate numeric types
- Replaced null values in the description column with empty strings
- Filled missing 'likes' values with the median

= Dataset Overview
The dataset contains [Number of rows] rows and [Number of columns] columns. Key attributes include:

- id: Unique identifier for each video
- published_date: The date the video was published
- title: The title of the video
- description: The video description
- views: Number of views
- likes: Number of likes
- comments: Number of comments
- is_short: Boolean indicating if the video is a short

= Univariate Analysis

== Categorical Variables
#figure(
  image("img/distribution_of_short_videos.png", width: 80%),
  caption: [Distribution of Short Videos],
)

== Numerical Variables
#figure(
  image("img/views_over_time.png", width: 100%),
  caption: [Views Over Time],
)

#figure(
  image("img/likes_over_time.png", width: 100%),
  caption: [Likes Over Time],
)

#figure(
  image("img/comments_over_time.png", width: 100%),
  caption: [Comments Over Time],
)

= Key Statistics
- Total videos: 578
- Total views: 30,244,783,942
- Total likes: 289,633,946
- Total comments: 11,638,854
- Average views per video: 52,326,616
- Average likes per video: 501,097
- Average comments per video: 20,136

= Top Performing Videos

== By Views
#figure(
  image("img/top10_by_views.png", width: 100%),
  caption: [Top 10 regular and shorts videos by Views],
)

== By Likes
#figure(
  image("img/top10_by_likes.png", width: 100%),
  caption: [Top 10 regular and shorts videos by Likes],
)

== By Comments
#figure(
  image("img/top10_by_comments.png", width: 100%),
  caption: [Top 10 regular and shorts videos by Comments],
)

= Shorts vs Regular Videos Analysis

== Performance Comparison
#figure(
  image("img/shorts_vs_regular_performance.png", width: 100%),
  caption: [Average Performance: Shorts vs Regular Videos],
)

== Posting Frequency
#figure(
  image("img/posting_frequency.png", width: 100%),
  caption: [Posting Frequency: Regular Videos vs Shorts Over Time],
)

= Correlation Analysis
#figure(
  image("img/correlation_heatmap.png", width: 80%),
  caption: [Correlation Heatmap of Numerical Variables],
)